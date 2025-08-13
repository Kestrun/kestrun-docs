---
layout: default
parent: PowerShell Cmdlets
title: Add-KrCorsPolicy
nav_order: 7
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.cors.infrastructure.corspolicybuilder?view=aspnetcore-8.0
schema: 2.0.0
---

# Add-KrCorsPolicy

## SYNOPSIS
Adds a CORS policy to the server.

## SYNTAX

### Items (Default)
```
Add-KrCorsPolicy [-Server <KestrunHost>] -Name <String> [-AllowAnyOrigin] [-AllowAnyMethod] [-AllowAnyHeader]
 [-AllowCredentials] [-DisallowCredentials] [-PassThru] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

### Options
```
Add-KrCorsPolicy [-Server <KestrunHost>] -Name <String> -Builder <CorsPolicyBuilder> [-PassThru]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This cmdlet allows you to configure a CORS policy for the Kestrun server.
It can be used to specify allowed origins, methods, headers, and other CORS settings.

## EXAMPLES

### EXAMPLE 1
```
$server | Add-KrCorsPolicy -Name 'AllowAll' -AllowAnyOrigin -AllowAnyMethod -AllowAnyHeader
This example adds a CORS policy named 'AllowAll' to the server, allowing any origin, method, and header.
```

### EXAMPLE 2
```
$server | Add-KrCorsPolicy -Name 'CustomPolicy' -Builder $builder
This example adds a CORS policy named 'CustomPolicy' to the server using the specified CORS policy builder.
```

### EXAMPLE 3
```
$server | Add-KrCorsPolicy -Server $server -Name 'CustomPolicy' -AllowAnyOrigin -AllowAnyMethod -AllowAnyHeader
This example adds a CORS policy named 'CustomPolicy' to the server, allowing any origin, method, and header.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the CORS policy will be added.

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

### -Name
The name of the CORS policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Builder
The CORS policy builder to configure the CORS policy.

```yaml
Type: CorsPolicyBuilder
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowAnyOrigin
If specified, allows any origin to access the resources.

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

### -AllowAnyMethod
If specified, allows any HTTP method to be used in requests.

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

### -AllowAnyHeader
If specified, allows any header to be included in requests.
If not specified, only headers explicitly allowed will be included.

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

### -AllowCredentials
If specified, allows credentials (cookies, authorization headers, etc.) to be included in requests.

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

### -DisallowCredentials
If specified, disallows credentials in requests.
If not specified, credentials will be allowed.

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
This cmdlet is used to configure CORS policies for the Kestrun server, allowing you to control cross-origin requests and specify which origins, methods, and headers are allowed.

## RELATED LINKS

[https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.cors.infrastructure.corspolicybuilder?view=aspnetcore-8.0](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.cors.infrastructure.corspolicybuilder?view=aspnetcore-8.0)

