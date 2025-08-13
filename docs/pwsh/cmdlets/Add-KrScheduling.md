---
layout: default
parent: PowerShell Cmdlets
title: Add-KrScheduling
nav_order: 32
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.responsecompression.responsecompressionoptions?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrScheduling

## SYNOPSIS
Adds scheduling support to the Kestrun server.

## SYNTAX

```
Add-KrScheduling [[-Server] <KestrunHost>] [[-MaxRunspaces] <Int32>] [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to register a scheduling service with the Kestrun server.
It can be used to manage scheduled tasks and jobs in the context of the Kestrun server.

## EXAMPLES

### EXAMPLE 1
```
$server | Add-KrScheduling -MaxRunspaces 5
This example adds scheduling support to the server, with a maximum of 5 runspaces.
```

### EXAMPLE 2
```
$server | Add-KrScheduling
This example adds scheduling support to the server without specifying a maximum number of runspaces.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the scheduling service will be added.

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
The maximum number of runspaces to use for scheduling tasks.
If not specified, defaults to 0 (unlimited).

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
This cmdlet is used to register a scheduling service with the Kestrun server, allowing you to manage scheduled tasks and jobs.

## RELATED LINKS
