---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.mvc.razorpages.razorpagesoptions?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrRazorPageService

## SYNOPSIS
Adds Razor Pages service to the server.

## SYNTAX

### Items (Default)
```
Add-KrRazorPageService [-Server <KestrunHost>] [-RootDirectory <String>] [-Conventions <IPageConvention[]>]
 [-PassThru] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Options
```
Add-KrRazorPageService [-Server <KestrunHost>] -Options <RazorPagesOptions> [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to register Razor Pages with the Kestrun server.
It can be used to serve dynamic web pages using Razor syntax.

## EXAMPLES

### EXAMPLE 1
```
$server | Add-KrRazorPageService -RootDirectory '/Pages' -Conventions $conventions
This example adds Razor Pages service to the server, specifying the root directory and conventions for the pages.
```

### EXAMPLE 2
```
$server | Add-KrRazorPageService -Options $options
This example adds Razor Pages service to the server using the specified RazorPagesOptions.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the Razor Pages service will be added.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Options
The RazorPagesOptions to configure the Razor Pages service.

```yaml
Type: RazorPagesOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RootDirectory
The root directory for the Razor Pages.

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Conventions
An array of page conventions to apply to the Razor Pages.

```yaml
Type: IPageConvention[]
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: @()
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
This cmdlet is used to register Razor Pages with the Kestrun server, allowing you to serve dynamic web pages using Razor syntax.

## RELATED LINKS

[https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.mvc.razorpages.razorpagesoptions?view=aspnetcore-8.0](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.mvc.razorpages.razorpagesoptions?view=aspnetcore-8.0)

