---
layout: default
parent: PowerShell Cmdlets
title: Remove-KrSession
nav_order: 117
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Remove-KrSession

## SYNOPSIS
Removes a session item by key.

## SYNTAX

```
Remove-KrSession [-Key] <String> [<CommonParameters>]
```

## DESCRIPTION
This function accesses the current HTTP context's session and removes the item
associated with the specified key.

## EXAMPLES

### EXAMPLE 1
```powershell
Remove-KrSession -Key "username"
Removes the session item associated with the key "username".
```

## PARAMETERS

### -Key
The key of the session item to remove.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### None. This function performs a state-changing operation on the session.
## NOTES

## RELATED LINKS
