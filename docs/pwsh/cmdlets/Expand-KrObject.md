---
layout: default
parent: PowerShell Cmdlets
title: Expand-KrObject
nav_order: 50
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Expand-KrObject

## SYNOPSIS
Expands an object into a formatted string for display.

## SYNTAX

```
Expand-KrObject [[-InputObject] <Object>] [-ForegroundColor <ConsoleColor>] [-Label <String>]
 [<CommonParameters>]
```

## DESCRIPTION
This function takes an object and formats it for display in the console.
It includes the type name and the object's string representation.
If a label is provided, it prefixes the output with the label.

## EXAMPLES

### EXAMPLE 1
```powershell
Expand-KrObject -InputObject $myObject -ForegroundColor Cyan -Label "My Object"
Displays the $myObject with a cyan foreground color and prefixes it with "My Object".
```

## PARAMETERS

### -InputObject
The object to expand and display.
This can be any PowerShell object, including complex types.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ForegroundColor
The color to use for the output text in the console.
If not specified, defaults to the console's current foreground color.

```yaml
Type: ConsoleColor
Parameter Sets: (All)
Aliases:
Accepted values: Black, DarkBlue, DarkGreen, DarkCyan, DarkRed, DarkMagenta, DarkYellow, Gray, DarkGray, Blue, Green, Cyan, Red, Magenta, Yellow, White

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Label
An optional label to prefix the output.
This can be used to provide context or a name for the object being displayed.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

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
This function is designed to be used in the context of Kestrun for debugging or logging purposes.

## RELATED LINKS
