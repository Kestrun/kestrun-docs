---
layout: default
parent: PowerShell Cmdlets
nav_order: 194
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 04/01/2026
PlatyPS schema version: 2024-05-01
title: Set-KrPowerShellErrorResponse
---

# Set-KrPowerShellErrorResponse

## SYNOPSIS

Configures a custom PowerShell scriptblock to build error responses for route execution failures.

## SYNTAX

### Set (Default)

```powershell
Set-KrPowerShellErrorResponse -ScriptBlock <scriptblock> [-Server <KestrunHost>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### Clear

```powershell
Set-KrPowerShellErrorResponse -Clear [-Server <KestrunHost>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Sets or clears a host-level custom PowerShell error response script.
When configured, PowerShell
route execution error paths invoke this scriptblock instead of the default WriteErrorResponseAsync
behavior.
If the custom script is not configured or fails, Kestrun falls back to the default behavior.

## EXAMPLES

### EXAMPLE 1

Set-KrPowerShellErrorResponse -ScriptBlock {
    Write-KrJsonResponse @{ error = $ErrorMessage; status = $StatusCode } -StatusCode $StatusCode
}

Configures a custom JSON error payload for PowerShell route execution errors.

### EXAMPLE 2

Set-KrPowerShellErrorResponse -Clear

Clears the custom PowerShell error response script and restores default error handling.

## PARAMETERS

### -Clear

Clears the currently configured custom PowerShell error response script.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Clear
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Confirm

Prompts for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
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

### -ScriptBlock

Scriptblock invoked during PowerShell route error handling.
The script runs in the request runspace
and can use variables: $Context, $KrContext, $StatusCode, $ErrorMessage, and $Exception.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Set
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
If omitted, the current server is resolved.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Configure this before Enable-KrConfiguration.


## RELATED LINKS

{{ Fill in the related links here }}
