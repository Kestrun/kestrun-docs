---
layout: default
parent: PowerShell Cmdlets
title: Write-KrJsonResponse
nav_order: 106
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytokenhandler?view=azure-dotnet
schema: 2.0.0
---

# Write-KrJsonResponse

## SYNOPSIS
Writes an object to the HTTP response body as JSON.

## SYNTAX

```
Write-KrJsonResponse [-InputObject] <Object> [[-StatusCode] <Int32>] [[-Depth] <Int32>] [[-Compress] <Boolean>]
 [[-ContentType] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Serializes the provided object to JSON using Newtonsoft.Json and writes it
to the current HTTP response.
The caller can specify the HTTP status code,
serialization depth and formatting options.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -InputObject
{{ Fill InputObject Description }}

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -StatusCode
{{ Fill StatusCode Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: 200
Accept pipeline input: False
Accept wildcard characters: False
```

### -Depth
{{ Fill Depth Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 10
Accept pipeline input: False
Accept wildcard characters: False
```

### -Compress
{{ Fill Compress Description }}

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContentType
{{ Fill ContentType Description }}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
