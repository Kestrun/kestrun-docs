---
layout: default
parent: PowerShell Cmdlets
title: Get-KrSessionByte
nav_order: 91
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Get-KrSessionByte

## SYNOPSIS
Retrieves a byte array value from the session by key.

## SYNTAX

```
Get-KrSessionByte [-Key] <String> [<CommonParameters>]
```

## DESCRIPTION
This function accesses the current HTTP context's session and retrieves the byte array value
associated with the specified key.

## EXAMPLES

### EXAMPLE 1
```powershell
$value = Get-KrSessionByte -Key "profileImage"
Retrieves the byte array value associated with the key "profileImage" from the session.
```

## PARAMETERS

### -Key
The key of the session item to retrieve.

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

### Returns the byte array value associated with the specified key, or $null if not found.
## NOTES

## RELATED LINKS
