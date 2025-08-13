---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Add-KrPowerShellRazorPagesRuntime

## SYNOPSIS
Adds PowerShell support for Razor Pages.

## SYNTAX

```
Add-KrPowerShellRazorPagesRuntime [[-Server] <KestrunHost>] [[-PathPrefix] <String>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to register Razor Pages with PowerShell support in the Kestrun server.
It can be used to serve dynamic web pages using Razor syntax with PowerShell code blocks.

## EXAMPLES

### EXAMPLE 1
```
$server | Add-KrPowerShellRazorPagesRuntime -PathPrefix '/pages'
This example adds PowerShell support for Razor Pages to the server, with a path prefix of '/pages'.
```

### EXAMPLE 2
```
$server | Add-KrPowerShellRazorPagesRuntime
This example adds PowerShell support for Razor Pages to the server without a path prefix.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the PowerShell Razor Pages service will be added.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PathPrefix
An optional path prefix for the Razor Pages.
If specified, the Razor Pages will be served under this path.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
{{ Fill PassThru Description }}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Kestrun.Hosting.KestrunHost
## NOTES
This cmdlet is used to register Razor Pages with PowerShell support in the Kestrun server, allowing you to serve dynamic web pages using Razor syntax with PowerShell code blocks.

## RELATED LINKS
