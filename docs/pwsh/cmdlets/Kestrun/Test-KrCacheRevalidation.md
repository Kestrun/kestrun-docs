---
layout: default
parent: PowerShell Cmdlets
nav_order: 185
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Test-KrCacheRevalidation
---

# Test-KrCacheRevalidation

## SYNOPSIS

Checks request validators and writes 304 if appropriate; otherwise sets ETag/Last-Modified.

## SYNTAX

### __AllParameterSets

```powershell
Test-KrCacheRevalidation [-Payload] <Object> [[-ETag] <string>] [[-LastModified] <DateTimeOffset>]
 [-Weak] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Returns $true if a 304 Not Modified was written (you should NOT write a body).
Returns $false if cache missed; in that case the function sets validators on the response and
you should write the fresh body/status yourself.

## EXAMPLES

### EXAMPLE 1

if (-not (Test-KrCacheRevalidation -Payload $payload)) {
    Write-KrTextResponse -InputObject $payload -StatusCode 200
} # writes auto-ETag based on payload

### EXAMPLE 2

if (-not (Test-KrCacheRevalidation -ETag 'v1' -LastModified (Get-Date '2023-01-01'))) {
    Write-KrTextResponse -InputObject $payload -StatusCode 200
} # writes explicit ETag and Last-Modified

## PARAMETERS

### -ETag

Explicit ETag token (quotes optional).
If supplied, no hashing occurs.

```yaml
Type: System.String
DefaultValue: ''
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

### -LastModified

Optional last-modified timestamp to emit and validate.

```yaml
Type: System.DateTimeOffset
DefaultValue: ''
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

### -Payload

The response payload (string or byte[]) to hash for ETag generation.
If you have a stable payload, use this to get automatic ETag generation.
If you have a dynamic payload, consider using -ETag instead.

```yaml
Type: System.Object
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

### -Weak

Emit a weak ETag (W/"...").

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

## OUTPUTS

### System.Boolean

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
