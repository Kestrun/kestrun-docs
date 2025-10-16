---
layout: default
parent: PowerShell Cmdlets
title: Get-KrServer
nav_order: 90
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrServer

## SYNOPSIS
Gets the current Kestrun server instance.

## SYNTAX

### Default (Default)
```
Get-KrServer [-Server <KestrunHost>] [<CommonParameters>]
```

### StartTime
```
Get-KrServer [-Server <KestrunHost>] [-StartTime] [<CommonParameters>]
```

### StopTime
```
Get-KrServer [-Server <KestrunHost>] [-StopTime] [<CommonParameters>]
```

### Uptime
```
Get-KrServer [-Server <KestrunHost>] [-Uptime] [<CommonParameters>]
```

## DESCRIPTION
This function retrieves the current Kestrun server instance.
If a server instance is not provided,
it attempts to resolve the server from the current context.

## EXAMPLES

### EXAMPLE 1
```powershell
Get-KrServer
This command retrieves the current Kestrun server instance.
```

### EXAMPLE 2
```powershell
Get-KrServer -StartTime
This command retrieves the start time of the current Kestrun server instance.
```

### EXAMPLE 3
```powershell
Get-KrServer -StopTime
This command retrieves the stop time of the current Kestrun server instance.
```

### EXAMPLE 4
```powershell
Get-KrServer -Uptime
This command retrieves the uptime of the current Kestrun server instance.
```

## PARAMETERS

### -Server
The Kestrun server instance to retrieve.
If not specified, the function will attempt to resolve the current server context.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -StartTime
If specified, returns the server's start time as a DateTime object.

```yaml
Type: SwitchParameter
Parameter Sets: StartTime
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -StopTime
If specified, returns the server's stop time as a DateTime object.

```yaml
Type: SwitchParameter
Parameter Sets: StopTime
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Uptime
If specified, returns the server's uptime as a TimeSpan object.

```yaml
Type: SwitchParameter
Parameter Sets: Uptime
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

### [Kestrun.Hosting.KestrunHost]
###     The current Kestrun server instance.
### [DateTime]
###     The server's start time or stop time if the corresponding switch is used.
### [TimeSpan]
###     The server's uptime if the Uptime switch is used.
## NOTES
This function is part of the Kestrun PowerShell module and is used to manage Kestrun server instances.
If the server instance is not found in the context, it attempts to resolve it using the Resolve-KestrunServer function.

## RELATED LINKS
