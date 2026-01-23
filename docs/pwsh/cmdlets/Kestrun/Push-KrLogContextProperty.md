---
layout: default
parent: PowerShell Cmdlets
nav_order: 158
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Push-KrLogContextProperty
---

# Push-KrLogContextProperty

## SYNOPSIS

Push a property into Serilog's LogContext for the current scope.

## SYNTAX

### __AllParameterSets

```powershell
Push-KrLogContextProperty [-Name] <string> [-Value] <Object> [-Destructure] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Adds a property to Serilog's ambient LogContext so all log events written within the scope
include the property.
Returns an IDisposable; dispose it to remove the property.

Requires the logger to be configured with Add-KrEnrichFromLogContext.

## EXAMPLES

### EXAMPLE 1

$d = Push-KrLogContextProperty -Name CorrelationId -Value $corr
PS> try { Write-KrLog -Level Information -Message 'Hello' } finally { $d.Dispose() }

## PARAMETERS

### -Destructure

If set, complex objects will be destructured into structured properties.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

Property name to attach.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Value

Property value to attach.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.IDisposable

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
