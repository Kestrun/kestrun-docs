---
layout: default
parent: PowerShell Cmdlets
title: Build-KrClaimPolicy
nav_order: 49
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Build-KrClaimPolicy

## SYNOPSIS
Builds the claim policy configuration from the builder.

## SYNTAX

```
Build-KrClaimPolicy [-Builder] <ClaimPolicyBuilder> [<CommonParameters>]
```

## DESCRIPTION
This function finalizes the claim policy construction by invoking the Build method on the ClaimPolicyBuilder instance.

## EXAMPLES

### EXAMPLE 1
```powershell
$policyConfig = New-KrClaimPolicy | Add-KrClaimPolicy -PolicyName "AdminOnly" -ClaimType "role" -AllowedValues "admin" | Build-KrClaimPolicy
This example creates a new claim policy builder, adds a policy, and then builds the claim policy configuration.
```

## PARAMETERS

### -Builder
The claim policy builder to finalize.

```yaml
Type: ClaimPolicyBuilder
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [Kestrun.Claims.ClaimPolicyConfig]
### The constructed claim policy configuration.
## NOTES
This function is part of the Kestrun.Claims module and is used to build claim policies
Maps to ClaimPolicyBuilder.Build

## RELATED LINKS
