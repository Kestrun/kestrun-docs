---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytokenhandler?view=azure-dotnet
schema: 2.0.0
---

# Write-KrYamlResponse

## SYNOPSIS
Writes an object to the HTTP response body as YAML.

## SYNTAX

```
Write-KrYamlResponse [-InputObject] <Object> [[-StatusCode] <Int32>] [[-ContentType] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Serializes the provided object to YAML using the underlying C# helper and
sets the specified status code on the response.

## EXAMPLES

### EXAMPLE 1
```
Write-KrYamlResponse -InputObject $myObject -StatusCode 200 -ContentType "application/x-yaml"
Writes the $myObject serialized as YAML to the response with a 200 status code
and content type "application/x-yaml".
```

## PARAMETERS

### -InputObject
The object to serialize and write to the response body.
This can be any
PowerShell object, including complex types.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StatusCode
The HTTP status code to set for the response.
Defaults to 200 (OK).

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

### -ContentType
The content type of the response.
If not specified, defaults to "application/yaml".

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
This function is designed to be used in the context of a Kestrun server response.

## RELATED LINKS
