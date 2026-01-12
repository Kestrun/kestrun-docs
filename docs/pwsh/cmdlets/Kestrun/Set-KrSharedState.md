---
layout: default
parent: PowerShell Cmdlets
nav_order: 187
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Set-KrSharedState
---

# Set-KrSharedState

## SYNOPSIS

Defines or updates a global variable accessible across Kestrun scripts.

## SYNTAX

### Server (Default)

```powershell
Set-KrSharedState -Name <string> -Value <Object> [-Server <KestrunHost>] [-AllowsValueType]
 [-ThreadSafe] [<CommonParameters>]
```

### Global

```powershell
Set-KrSharedState -Global -Name <string> -Value <Object> [-AllowsValueType] [-ThreadSafe]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Stores a value in the Kestrun global variable table.
Variables may be marked
as read-only to prevent accidental modification.
If the variable already exists, its value is updated.
If it does not exist,
it is created.

## EXAMPLES

### EXAMPLE 1

Set-KrSharedState -Name "MyVariable" -Value "Hello, World!"
This creates a global variable "MyVariable" with the value "Hello, World!".

### EXAMPLE 2

Set-KrSharedState -Name "MyNamespace.MyVariable" -Value @{item=42}
This creates a global variable "MyNamespace.MyVariable" with the value @{item=42}.

## PARAMETERS

### -AllowsValueType

If specified, allows the variable to hold value types (e.g., int, bool).

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

### -Global

If specified, the variable is stored in the global shared state.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Global
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

Name of the variable to create or update.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Server
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ThreadSafe

If specified, the value is converted to a thread-safe representation.

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

### -Value

Value to assign to the variable.

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

## NOTES

This function is part of the Kestrun.SharedState module and is used to define or update global variables.


## RELATED LINKS

{{ Fill in the related links here }}
