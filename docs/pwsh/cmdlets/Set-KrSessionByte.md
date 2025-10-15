---
layout: default
parent: PowerShell Cmdlets
title: Set-KrSessionByte
nav_order: 135
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrSessionByte

## SYNOPSIS
Sets a byte array value in the session by key.

## SYNTAX

```
Set-KrSessionByte [-Key] <String> [-Value] <Byte[]> [<CommonParameters>]
```

## DESCRIPTION
This function accesses the current HTTP context's session and sets the byte array value
associated with the specified key.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrSessionByte -Key "profileImage" -Value $byteArray
Sets the byte array value associated with the key "profileImage" in the session to $byteArray.
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
The byte array value to set in the session.

```yaml
Type: Byte[]
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
