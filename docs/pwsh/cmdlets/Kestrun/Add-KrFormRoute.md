---
layout: default
parent: PowerShell Cmdlets
nav_order: 28
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 02/08/2026
PlatyPS schema version: 2024-05-01
title: Add-KrFormRoute
---

# Add-KrFormRoute

## SYNOPSIS

Adds a form parsing route to the Kestrun server.

## SYNTAX

### Default (Default)

```powershell
Add-KrFormRoute -Pattern <string> -ScriptBlock <scriptblock> -OptionsName <string>
 [-AuthorizationScheme <string[]>] [-AuthorizationPolicy <string[]>] [-CorsPolicy <string>]
 [-AllowAnonymous] [-PassThru] [<CommonParameters>]
```

### WithOptions

```powershell
Add-KrFormRoute -Pattern <string> -ScriptBlock <scriptblock> -Options <KrFormOptions>
 [-AuthorizationScheme <string[]>] [-AuthorizationPolicy <string[]>] [-CorsPolicy <string>]
 [-AllowAnonymous] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Registers a POST route that parses multipart/form-data payloads using
KrFormParser.
Additional request content types (e.g., multipart/mixed
and application/x-www-form-urlencoded) are opt-in via
KrFormOptions.AllowedRequestContentTypes.
Once parsed, it injects the parsed payload into the runspace as
$FormPayload and invokes the provided script block.

## EXAMPLES

### EXAMPLE 1

Add-KrFormRoute -Pattern '/upload' -ScriptBlock {
    param($FormPayload, $Context)
    # Handle the parsed form payload
    $FormPayload.Files
} -Options $formOptions -PassThru
This example adds a form route at '/upload' that processes multipart/form-data uploads
using the specified form options and returns the updated server instance.

## PARAMETERS

### -AllowAnonymous

Allows anonymous access to the route.

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

### -AuthorizationPolicy

Optional authorization policies required for the route.

```yaml
Type: System.String[]
DefaultValue: ''
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

### -AuthorizationScheme

Optional authorization schemes required for the route.

```yaml
Type: System.String[]
DefaultValue: ''
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

### -CorsPolicy

Optional CORS policy name to apply to the route.

```yaml
Type: System.String
DefaultValue: ''
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

### -Options

The KrFormOptions used to configure form parsing.

```yaml
Type: Kestrun.Forms.KrFormOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: WithOptions
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OptionsName

The name of an existing KrFormOptions on the server to use for form parsing.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Default
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

Returns the updated server instance when specified.

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

### -Pattern

The route pattern (e.g., '/upload').

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

### -ScriptBlock

The script block to execute once the payload is parsed.
The parsed
payload is available as $FormPayload (and the request context is
available as $Context).

```yaml
Type: System.Management.Automation.ScriptBlock
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

### Kestrun.Forms.KrFormOptions

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun.Forms module and is used to define form routes.


## RELATED LINKS

{{ Fill in the related links here }}
