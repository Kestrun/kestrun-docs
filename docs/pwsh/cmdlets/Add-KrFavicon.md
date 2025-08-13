---
title: Add-KrFavicon
nav_order: 16
render_with_liquid: false
---
---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.defaultfilesoptions?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrFavicon

## SYNOPSIS
Adds a favicon to the Kestrun server.

## SYNTAX

```
Add-KrFavicon [[-Server] <KestrunHost>] [[-IconPath] <String>] [-PassThru] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to register a favicon for the Kestrun server.
It can be used to set a custom favicon for the server's web interface.

## EXAMPLES

### EXAMPLE 1
```
$server | Add-KrFavicon -IconPath 'C:\path\to\favicon.ico'
This example adds a custom favicon to the server from the specified path.
```

### EXAMPLE 2
```
$server | Add-KrFavicon
This example adds the default embedded favicon to the server.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the favicon will be added.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -IconPath
The path to the favicon file.
If not specified, a default embedded favicon will be used.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
{{ Fill PassThru Description }}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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

### Kestrun.Hosting.KestrunHost
## NOTES
This cmdlet is used to register a favicon for the Kestrun server, allowing you to set a custom favicon for the server's web interface.
If no icon path is specified, the default embedded favicon will be used.

## RELATED LINKS
