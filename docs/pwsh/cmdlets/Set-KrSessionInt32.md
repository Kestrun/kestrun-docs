---
layout: default
parent: PowerShell Cmdlets
title: Set-KrSessionInt32
nav_order: 136
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrSessionInt32

## SYNOPSIS
Sets a 32-bit integer value in the session by key.

## SYNTAX

```
Set-KrSessionInt32 [-Key] <String> [-Value] <Int32> [<CommonParameters>]
```

## DESCRIPTION
This function accesses the current HTTP context's session and sets the 32-bit integer value
associated with the specified key.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrSessionInt32 -Key "visitCount" -Value 5
Sets the 32-bit integer value associated with the key "visitCount" in the session to 5.
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
The 32-bit integer value to set in the session.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
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
