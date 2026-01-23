---
layout: default
parent: PowerShell Cmdlets
nav_order: 44
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/23/2026
PlatyPS schema version: 2024-05-01
title: Add-KrMapRoute
---

# Add-KrMapRoute

## SYNOPSIS

Adds a new map route to the Kestrun server.

## SYNTAX

### ScriptBlock (Default)

```powershell
Add-KrMapRoute [-ScriptBlock] <scriptblock> [-Server <KestrunHost>] [-Verbs <HttpVerb[]>]
 [-Pattern <string>] [-AuthorizationScheme <string[]>] [-AuthorizationPolicy <string[]>]
 [-CorsPolicy <string>] [-AllowAnonymous] [-Arguments <hashtable>] [-Endpoints <string[]>]
 [-AllowDuplicate] [-DuplicateAction <string>] [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrMapRoute -Options <MapRouteOptions> [-Server <KestrunHost>] [-AllowDuplicate]
 [-DuplicateAction <string>] [-PassThru] [<CommonParameters>]
```

### CodeFilePath

```powershell
Add-KrMapRoute -CodeFilePath <string> [-Server <KestrunHost>] [-Verbs <HttpVerb[]>]
 [-Pattern <string>] [-AuthorizationScheme <string[]>] [-AuthorizationPolicy <string[]>]
 [-CorsPolicy <string>] [-AllowAnonymous] [-ExtraImports <string[]>] [-ExtraRefs <Assembly[]>]
 [-Arguments <hashtable>] [-Endpoints <string[]>] [-AllowDuplicate] [-DuplicateAction <string>]
 [-PassThru] [<CommonParameters>]
```

### Code

```powershell
Add-KrMapRoute -Code <string> -Language <ScriptLanguage> [-Server <KestrunHost>]
 [-Verbs <HttpVerb[]>] [-Pattern <string>] [-AuthorizationScheme <string[]>]
 [-AuthorizationPolicy <string[]>] [-CorsPolicy <string>] [-AllowAnonymous]
 [-ExtraImports <string[]>] [-ExtraRefs <Assembly[]>] [-Arguments <hashtable>]
 [-Endpoints <string[]>] [-AllowDuplicate] [-DuplicateAction <string>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function allows you to add a new map route to the Kestrun server by specifying the route path and the script block or code to be executed when the route is accessed.

## EXAMPLES

### EXAMPLE 1

Add-KrMapRoute -Server $myServer -Path "/myroute" -ScriptBlock { Write-Host "Hello, World!" }
Adds a new map route to the specified Kestrun server with the given path and script block.

### EXAMPLE 2

Add-KrMapRoute -Server $myServer -Path "/myroute" -Code "Write-Host 'Hello, World!'" -Language PowerShell
Adds a new map route to the specified Kestrun server with the given path and code.

### EXAMPLE 3

Get-KrServer | Add-KrMapRoute -Path "/myroute" -ScriptBlock { Write-Host "Hello, World!" } -PassThru
Adds a new map route to the current Kestrun server and returns the route object.

## PARAMETERS

### -AllowAnonymous

If specified, allows anonymous access to the route.
it's mutually exclusive with AuthorizationScheme and AuthorizationPolicy.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlock
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AllowDuplicate

If specified, allows the addition of duplicate routes with the same path and HTTP verb.

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

### -Arguments

An optional hashtable of arguments to pass to the script block or code.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlock
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

An optional array of authorization policies that the route requires.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlock
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

An optional array of authorization schemes that the route requires.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlock
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Code

The code to be executed when the route is accessed, used in conjunction with the Language parameter.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- CodeBlock
ParameterSets:
- Name: Code
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CodeFilePath

The file path to the code to be executed when the route is accessed.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CorsPolicy

An optional CORS policy name that the route requires.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlock
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DuplicateAction

Specifies the action to take if a duplicate route is detected.
Options are 'Throw', 'Skip', 'Allow', or 'Warn'.
Default is 'Throw', which will raise an error if a duplicate route is found.

```yaml
Type: System.String
DefaultValue: Throw
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

### -Endpoints

An optional array of endpoint names to which the route should be bound.
If not specified, the route will be bound to all endpoints.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlock
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExtraImports

An optional array of additional namespaces to import for the route.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExtraRefs

An optional array of additional assemblies to reference for the route.

```yaml
Type: System.Reflection.Assembly[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Language

The scripting language of the code to be executed.

```yaml
Type: Kestrun.Scripting.ScriptLanguage
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Code
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Options

An instance of `Kestrun.Hosting.Options.MapRouteOptions` that contains the configuration for the route.
This parameter is used to specify various options for the route, such as HTTP verbs, path, authorization schemes, and more.

```yaml
Type: Kestrun.Hosting.Options.MapRouteOptions
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

### -PassThru

If specified, the function will return the created route object.

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

Alias: Path
The URL path for the new route.

```yaml
Type: System.String
DefaultValue: /
SupportsWildcards: false
Aliases:
- Path
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlock
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

The script block to be executed when the route is accessed.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ScriptBlock
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to which the route will be added.
If not specified, the function will attempt to resolve the current server context.

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

### -Verbs

Alias: Method
The HTTP verbs (GET, POST, etc.) that the route should respond to.
Defaults to GET.

```yaml
Type: Kestrun.Utilities.HttpVerb[]
DefaultValue: "@('Get')"
SupportsWildcards: false
Aliases:
- Method
ParameterSets:
- Name: CodeFilePath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Code
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ScriptBlock
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

### Returns the Kestrun server instance with the new route added.

{{ Fill in the Description }}

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun PowerShell module and is used to manage routes


## RELATED LINKS

{{ Fill in the related links here }}
