---
layout: default
parent: PowerShell Cmdlets
title: Add-KrPowerShellRuntime
nav_order: 28
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrPowerShellRuntime

## SYNOPSIS
Adds PowerShell runtime support to the Kestrun server.

## SYNTAX

```
Add-KrPowerShellRuntime [[-Server] <KestrunHost>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to register a PowerShell runtime with the Kestrun server.
It can be used to execute PowerShell scripts and commands in the context of the Kestrun server.

## EXAMPLES

### EXAMPLE 1
```powershell
$server | Add-KrPowerShellRuntime -PathPrefix '/ps'
This example adds PowerShell runtime support to the server, with a path prefix of '/ps'.
```

### EXAMPLE 2
```powershell
$server | Add-KrPowerShellRuntime
This example adds PowerShell runtime support to the server without a path prefix.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the PowerShell runtime will be added.

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

### -PassThru
If specified, the cmdlet will return the modified server instance.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Kestrun.Hosting.KestrunHost
## NOTES
This cmdlet is used to register a PowerShell runtime with the Kestrun server, allowing you to execute PowerShell scripts and commands in the context of the Kestrun server.

## RELATED LINKS
