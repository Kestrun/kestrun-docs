---
layout: default
parent: PowerShell Cmdlets
title: Add-KrTasksService
nav_order: 57
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrTasksService

## SYNOPSIS
Adds ad-hoc Tasks support to the Kestrun server.

## SYNTAX

```
Add-KrTasksService [[-Server] <KestrunHost>] [[-MaxRunspaces] <Int32>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Registers the Kestrun Task service on the server, enabling one-off script execution (PowerShell, C#, VB.NET)
with status/result and cancellation support.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrTasksService
Adds the Tasks service to the default server.
```

### EXAMPLE 2
```powershell
$server = Add-KrTasksService -PassThru
Adds the Tasks service and returns the server instance.
```

## PARAMETERS

### -Server
The Kestrun server instance.

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

### -MaxRunspaces
Optional maximum PowerShell runspaces for task execution; falls back to scheduler sizing when omitted.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Returns the server when specified.

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
Requires the Kestrun.Hosting.KestrunHost.AddTasks() method.
If the Tasks service is already registered, this cmdlet has no effect.
The Tasks service enables ad-hoc script execution via New-KrTask, Start-KrTask, Stop-KrTask, Remove-KrTask.
The Tasks service uses PowerShell runspaces for PowerShell tasks; the MaxRunspaces parameter controls the maximum number of concurrent runspaces.

## RELATED LINKS
