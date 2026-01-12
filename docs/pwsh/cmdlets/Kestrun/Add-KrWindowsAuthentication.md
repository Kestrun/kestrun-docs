---
layout: default
parent: PowerShell Cmdlets
nav_order: 75
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.authentication.windowsauthentication?view=aspnetcore-8.0
Locale: en-US
Module Name: Kestrun
ms.date: 01/12/2026
PlatyPS schema version: 2024-05-01
title: Add-KrWindowsAuthentication
---

# Add-KrWindowsAuthentication

## SYNOPSIS

Adds Windows authentication to the Kestrun server.

## SYNTAX

### ItemsScriptBlock (Default)

```powershell
Add-KrWindowsAuthentication [[-Server] <KestrunHost>] [[-AuthenticationScheme] <string>]
 [[-DisplayName] <string>] [[-Description] <string>] [[-Options] <WindowsAuthOptions>] [-Deprecated]
 [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Configures the Kestrun server to use Windows authentication for incoming requests.
This allows the server to authenticate users based on their Windows credentials.
This enables the server to use Kerberos or NTLM for authentication.

## EXAMPLES

### EXAMPLE 1

Add-KrWindowsAuthentication -Server $myServer -PassThru
This example adds Windows authentication to the specified Kestrun server instance and returns the modified instance.

## PARAMETERS

### -AuthenticationScheme

The name of the Windows authentication scheme (default is 'Negotiate').

```yaml
Type: System.String
DefaultValue: Negotiate
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Deprecated

If specified, marks the authentication scheme as deprecated in OpenAPI documentation.

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

### -Description

A description of the Windows authentication scheme.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DisplayName

The display name for the authentication scheme.

```yaml
Type: System.String
DefaultValue: Windows Authentication
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Options

The Windows authentication options to configure.
If not specified, default options are used.

```yaml
Type: Kestrun.Authentication.WindowsAuthOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, returns the modified server instance after adding the authentication.

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

### -Server

The Kestrun server instance to configure.
If not specified, the current server instance is used.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This cmdlet is used to configure Windows authentication for the Kestrun server, allowing you to secure your APIs with Windows credentials.


## RELATED LINKS

- [](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.authentication.windowsauthentication?view=aspnetcore-8.0)