---
layout: default
parent: PowerShell Cmdlets
title: New-KrProbeResult
nav_order: 108
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# New-KrProbeResult

## SYNOPSIS
Creates a new Kestrun health ProbeResult object.

## SYNTAX

```
New-KrProbeResult [-Status] <String> [-Description] <String> [[-Data] <Hashtable>] [<CommonParameters>]
```

## DESCRIPTION
Simplifies constructing a \[Kestrun.Health.ProbeResult\] from PowerShell without using the
raw static ::new() syntax.
Accepts status, description, and an optional hashtable of data
which is converted to a strongly typed Dictionary\[string, object\].
Returns the created
ProbeResult for piping back to Add-KrHealthProbe script blocks or custom logic.

## EXAMPLES

### EXAMPLE 1
```powershell
New-KrProbeResult -Status Healthy -Description 'Cache OK'
```

### EXAMPLE 2
```powershell
New-KrProbeResult Degraded 'Latency high' -Data @{ p95 = 180; threshold = 150 }
```

## PARAMETERS

### -Status
Health status.
Accepts Healthy, Degraded, or Unhealthy (case-insensitive).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Short human readable description for diagnostics.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Data
Optional hashtable of additional metrics/values (serialized into response JSON).

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Kestrun.Health.ProbeResult
## NOTES
Intended for use inside -ScriptBlock probes: \`return New-KrProbeResult Healthy 'Ready'\`.

## RELATED LINKS
