---
layout: default
parent: PowerShell Cmdlets
nav_order: 153
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: New-KrServer
---

# New-KrServer

## SYNOPSIS

Creates a new Kestrun server instance.

## SYNTAX

### Logger (Default)

```powershell
New-KrServer -Name <string> [-Logger <ILogger>] [-PassThru] [-DisablePowershellMiddleware]
 [-Default] [-Environment <string>] [-Force] [<CommonParameters>]
```

### LoggerName

```powershell
New-KrServer -Name <string> -LoggerName <string> [-PassThru] [-DisablePowershellMiddleware]
 [-Default] [-Environment <string>] [-Force] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function initializes a new Kestrun server instance with the specified name and logger.

## EXAMPLES

### EXAMPLE 1

New-KrServer -Name "MyKestrunServer"
Creates a new Kestrun server instance with the specified name.

## PARAMETERS

### -Default

If specified, this server instance will be set as the default instance.

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

### -DisablePowershellMiddleware

If specified, the PowerShell middleware will be disabled for this server instance.

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

### -Environment

The environment to set for the Kestrun server instance.
Valid values are 'Auto', 'Development', 'Staging', and 'Production'.
- 'Auto' (default): Automatically sets the environment to 'Development' if a debugger is attached or
    if the -Debug switch is used; otherwise, it uses the environment specified by the KESTRUN_ENVIRONMENT environment variable
    or defaults to 'Production'.
- 'Development': Forces the environment to 'Development'.
- 'Staging': Forces the environment to 'Staging'.
- 'Production': Forces the environment to 'Production'.
The environment setting affects middleware behavior, such as detailed error pages in 'Development'.

```yaml
Type: System.String
DefaultValue: Auto
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

### -Force

If specified, the cmdlet will overwrite any existing server instance with the same name.

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

### -Logger

An optional Serilog logger instance to use for logging.
It's mutually exclusive with the LoggerName parameter.
If not specified, the default logger will be used.

```yaml
Type: Serilog.ILogger
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Logger
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LoggerName

An optional name of a registered logger to use for logging.
It's mutually exclusive with the Logger parameter.
If specified, the logger with this name will be used instead of the default logger.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: LoggerName
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

The name of the Kestrun server instance to create.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, the cmdlet will return the created server instance.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This function is designed to be used in the context of a Kestrun server setup.


## RELATED LINKS

{{ Fill in the related links here }}
