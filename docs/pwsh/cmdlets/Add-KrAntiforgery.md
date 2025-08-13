---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.antiforgery.antiforgeryoptions?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrAntiforgery

## SYNOPSIS
Adds an Antiforgery service to the server.

## SYNTAX

### Items (Default)
```
Add-KrAntiforgery [-Server <KestrunHost>] [-Cookie <CookieBuilder>] [-FormFieldName <String>]
 [-HeaderName <String>] [-SuppressXFrameOptionsHeader] [-PassThru] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

### Options
```
Add-KrAntiforgery [-Server <KestrunHost>] -Options <AntiforgeryOptions> [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to configure the Antiforgery service for the Kestrun server.
It can be used to protect against Cross-Site Request Forgery (CSRF) attacks by generating and validating antiforgery tokens.

## EXAMPLES

### EXAMPLE 1
```
$server | Add-KrAntiforgery -Cookie $cookieBuilder -FormField '__RequestVerificationToken' -HeaderName 'X-CSRF-Token' -SuppressXFrameOptionsHeader
This example adds an Antiforgery service to the server with a custom cookie builder, form field name, and header name.
```

### EXAMPLE 2
```
$server | Add-KrAntiforgery -Options $options
This example adds an Antiforgery service to the server using the specified Antiforgery options.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the Antiforgery service will be added.

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
The Antiforgery options to configure the service.

```yaml
Type: AntiforgeryOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Cookie
The cookie builder to use for the Antiforgery service.

```yaml
Type: CookieBuilder
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FormFieldName
The name of the form field to use for the Antiforgery token.

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

### -HeaderName
The name of the header to use for the Antiforgery token.

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

### -SuppressXFrameOptionsHeader
If specified, the X-Frame-Options header will not be added to responses.

```yaml
Type: SwitchParameter
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: False
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

## RELATED LINKS

[https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.antiforgery.antiforgeryoptions?view=aspnetcore-8.0](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.antiforgery.antiforgeryoptions?view=aspnetcore-8.0)

