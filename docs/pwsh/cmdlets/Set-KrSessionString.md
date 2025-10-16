---
layout: default
parent: PowerShell Cmdlets
title: Set-KrSessionString
nav_order: 141
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrSessionString

## SYNOPSIS
Sets a string value in the session by key.

## SYNTAX

```
Set-KrSessionString [-Key] <String> [-Value] <String> [<CommonParameters>]
```

## DESCRIPTION
This function accesses the current HTTP context's session and sets the string value
associated with the specified key.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrSessionString -Key "userName" -Value "JohnDoe"
Sets the string value associated with the key "userName" in the session to "JohnDoe".
```

## PARAMETERS

### -Key
The key of the session item to set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Value
The string value to set in the session.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### None. This function performs a state-changing operation on the session.
## NOTES

## RELATED LINKS
