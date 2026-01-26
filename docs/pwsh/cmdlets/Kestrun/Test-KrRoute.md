---
layout: default
parent: PowerShell Cmdlets
nav_order: 207
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Test-KrRoute
---

# Test-KrRoute

## SYNOPSIS

Tests if a route exists in the Kestrun host.

## SYNTAX

### __AllParameterSets

```powershell
Test-KrRoute [-Pattern] <string> [[-Verbs] <HttpVerb[]>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function checks if a specific route is defined in the Kestrun host's routing table.

## EXAMPLES

### EXAMPLE 1

Test-KrRoute -Path "/api/test" -Verbs "GET"
# Tests if a GET route exists for "/api/test".

### EXAMPLE 2

Test-KrRoute -Path "/api/test" -Verbs "POST"
# Tests if a POST route exists for "/api/test".

## PARAMETERS

### -Pattern

The path of the route to test.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Path
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

### -Verbs

The HTTP verb(s) to test for the route.

```yaml
Type: Kestrun.Utilities.HttpVerb[]
DefaultValue: '@([Kestrun.Utilities.HttpVerb]::Get)'
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Boolean

{{ Fill in the Description }}

## NOTES

This function is part of the Kestrun PowerShell module and is used to manage routes.


## RELATED LINKS

{{ Fill in the related links here }}
