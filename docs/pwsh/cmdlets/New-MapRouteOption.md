---
layout: default
parent: PowerShell Cmdlets
title: New-MapRouteOption
nav_order: 73
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/kestrun.hosting.options.maprouteoptions
schema: 2.0.0
---

# New-MapRouteOption

## SYNOPSIS
Creates a new instance of the Kestrun.Hosting.Options.MapRouteOptions class.

## SYNTAX

```
New-MapRouteOption [-Property] <Hashtable> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This function initializes a new instance of the MapRouteOptions class, which is used to configure
routing options for Kestrun server routes.

## EXAMPLES

### EXAMPLE 1
```
$options = New-MapRouteOption -Property @{
    Path = "/myroute"
    HttpVerbs = "Get", "Post"
}
This example creates a new MapRouteOptions instance with specified path and HTTP verbs.
```

## PARAMETERS

### -Property
A hashtable containing properties to set on the MapRouteOptions instance.
The keys should match
the property names of the MapRouteOptions class.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
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

### [Kestrun.Hosting.Options.MapRouteOptions]
### A new instance of the MapRouteOptions class.
## NOTES
This function is part of the Kestrun.Hosting module and is used to manage route options.
Maps to MapRouteOptions constructor.

## RELATED LINKS

[https://docs.microsoft.com/en-us/dotnet/api/kestrun.hosting.options.maprouteoptions](https://docs.microsoft.com/en-us/dotnet/api/kestrun.hosting.options.maprouteoptions)

