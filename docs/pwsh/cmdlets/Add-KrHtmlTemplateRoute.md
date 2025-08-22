---
layout: default
parent: PowerShell Cmdlets
title: Add-KrHtmlTemplateRoute
nav_order: 17
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrHtmlTemplateRoute

## SYNOPSIS
Adds a new HTML template route to the Kestrun server.

## SYNTAX

```
Add-KrHtmlTemplateRoute [[-Server] <KestrunHost>] [-Pattern] <String> [-HtmlTemplatePath] <String>
 [[-Authorization] <String[]>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This function allows you to add a new HTML template route to the Kestrun server by specifying the route path and the HTML template file path.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrHtmlTemplateRoute -Server $myServer -Path "/myroute" -HtmlTemplatePath "C:\Templates\mytemplate.html"
Adds a new HTML template route to the specified Kestrun server with the given path and template file.
```

### EXAMPLE 2
```powershell
Get-KrServer | Add-KrHtmlTemplateRoute -Path "/myroute" -HtmlTemplatePath "C:\Templates\mytemplate.html" -PassThru
Adds a new HTML template route to the current Kestrun server and returns the route object
```

## PARAMETERS

### -Server
The Kestrun server instance to which the route will be added.
If not specified, the function will attempt to resolve the current server context.

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

### -Pattern
The URL path for the new route.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Path

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HtmlTemplatePath
The file path to the HTML template to be used for the route.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Authorization
An optional array of authorization strings for the route.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, the function will return the created route object.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### [Microsoft.AspNetCore.Builder.IEndpointConventionBuilder] representing the created route.
## NOTES
This function is part of the Kestrun PowerShell module and is used to manage routes

## RELATED LINKS
