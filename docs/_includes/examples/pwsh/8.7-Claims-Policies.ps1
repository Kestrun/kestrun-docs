<#
    Sample: Claims & Policies Authorization
    Purpose: Build claim-based policies and enforce them on routes after Basic auth.
    File:    8.7-Claims-Policies.ps1
    Notes:   Demonstrates issuing claims during authentication.
#>

# 1. Logging
New-KrLogger | Add-KrSinkConsole | Register-KrLogger -Name 'console' -SetAsDefault | Out-Null

# 2. Server
New-KrServer -Name 'Auth Claims'

# 3. Listener
Add-KrListener -Port 5000 -IPAddress ([IPAddress]::Loopback) -SelfSignedCert

# 4. Runtime
Add-KrPowerShellRuntime

# 5. Build policy set
$claimConfig = New-KrClaimPolicy |
    Add-KrClaimPolicy -PolicyName 'CanRead' -ClaimType 'can_read' -AllowedValues 'true' |
    Add-KrClaimPolicy -PolicyName 'CanWrite' -ClaimType 'can_write' -AllowedValues 'true' |
    Add-KrClaimPolicy -PolicyName 'CanDelete' -ClaimType 'can_delete' -AllowedValues 'true' |
    Build-KrClaimPolicy

# 6. Basic auth + issue claims for admin
Add-KrBasicAuthentication -Name 'PolicyBasic' -Realm 'Claims' -AllowInsecureHttp -ScriptBlock {
    param($Username, $Password)
    Write-KrLog -Level Information -Message 'Basic Authentication: User {user} is trying to authenticate.' -Properties $Username
    if ($Username -eq 'admin' -and $Password -eq 'password') {
        $true
    } else {
        $false
    }
} -IssueClaimsScriptBlock {
    param($Identity)
    if ($Identity -eq 'admin') {
        return (
            Add-KrUserClaim -ClaimType 'can_read' -Value 'true' |
                Add-KrUserClaim -ClaimType 'can_write' -Value 'true'
        )
    }
} -ClaimPolicyConfig $claimConfig

# 7. Finalize configuration
Enable-KrConfiguration

# 8. Map policy-protected routes
Add-KrRouteGroup -Prefix '/policy' -AuthorizationSchema 'PolicyBasic' {
    Add-KrMapRoute -Verbs Get -Pattern '/read' -AuthorizationPolicy 'CanRead' -ScriptBlock { Write-KrTextResponse 'Read OK' }
    Add-KrMapRoute -Verbs Get -Pattern '/write' -AuthorizationPolicy 'CanWrite' -ScriptBlock { Write-KrTextResponse 'Write OK' }
    Add-KrMapRoute -Verbs Get -Pattern '/delete' -AuthorizationPolicy 'CanDelete' -ScriptBlock { Write-KrTextResponse 'Delete OK' }
}

# 9. Start server
Start-KrServer -CloseLogsOnExit

