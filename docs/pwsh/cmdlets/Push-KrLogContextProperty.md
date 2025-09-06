---
layout: default
parent: PowerShell Cmdlets
title: Push-KrLogContextProperty
nav_order: 82
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Push-KrLogContextProperty

## SYNOPSIS
Push a property into Serilog's LogContext for the current scope.

## SYNTAX

```
Push-KrLogContextProperty [-Name] <String> [-Value] <Object> [-Destructure] [<CommonParameters>]
```

## DESCRIPTION
Adds a property to Serilog's ambient LogContext so all log events written within the scope
include the property.
Returns an IDisposable; dispose it to remove the property.

Requires the logger to be configured with Add-KrEnrichFromLogContext.

## EXAMPLES

### EXAMPLE 1
```powershell
$d = Push-KrLogContextProperty -Name CorrelationId -Value $corr
PS> try { Write-KrLog -Level Information -Message 'Hello' } finally { $d.Dispose() }
```

## PARAMETERS

### -Name
Property name to attach.

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

### -Value
Property value to attach.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Destructure
If set, complex objects will be destructured into structured properties.

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

### System.IDisposable
## NOTES

## RELATED LINKS
