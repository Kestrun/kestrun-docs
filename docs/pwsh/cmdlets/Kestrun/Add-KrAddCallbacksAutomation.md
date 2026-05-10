---
layout: default
parent: PowerShell Cmdlets
nav_order: 1
render_with_liquid: false
title: Add-KrAddCallbacksAutomation
---

# Add-KrAddCallbacksAutomation

## SYNOPSIS

Adds callback automation middleware to the Kestrun host.

## SYNTAX

### Items (Default)

```powershell
Add-KrAddCallbacksAutomation [-DefaultTimeout <int>] [-MaxAttempts <int>] [-BaseDelay <int>]
 [-MaxDelay <int>] [<CommonParameters>]
```

### Options

```powershell
Add-KrAddCallbacksAutomation -Options <CallbackDispatchOptions> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This cmdlet adds middleware to the Kestrun host that enables automatic handling of callbacks using
specified options or individual parameters for configuration.

## EXAMPLES

### EXAMPLE 1

Add-KrAddCallbacksAutomation -DefaultTimeout 30 -MaxAttempts 5 -BaseDelay 2 -MaxDelay 60
Adds callback automation middleware to the current Kestrun host with specified parameters and returns the modified host instance.

### EXAMPLE 2

Add-KrAddCallbacksAutomation -Options $customOptions
Adds callback automation middleware to the specified Kestrun host using the provided options.

## PARAMETERS

### -BaseDelay

The base delay in seconds between callback attempts.
Used when Options is not provided.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DefaultTimeout

The default timeout in seconds for callback operations.
Used when Options is not provided.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MaxAttempts

The maximum number of attempts for callback operations.
Used when Options is not provided.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MaxDelay

The maximum delay in seconds between callback attempts.
Used when Options is not provided.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Options

An instance of CallbackDispatchOptions to configure callback dispatch behavior.

```yaml
Type: Kestrun.Callback.CallbackDispatchOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Options
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

## OUTPUTS

## NOTES

This cmdlet is part of the Kestrun PowerShell module.


## RELATED LINKS

{{ Fill in the related links here }}
