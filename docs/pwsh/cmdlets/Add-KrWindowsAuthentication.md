---
layout: default
parent: PowerShell Cmdlets
title: Add-KrWindowsAuthentication
nav_order: 60
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrWindowsAuthentication

## SYNOPSIS
Adds Windows authentication to the Kestrun server.

## SYNTAX

```
Add-KrWindowsAuthentication [[-Server] <KestrunHost>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Configures the Kestrun server to use Windows authentication for incoming requests.
This allows the server to authenticate users based on their Windows credentials.
This enables the server to use Kerberos or NTLM for authentication.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrWindowsAuthentication -Server $myServer -PassThru
This example adds Windows authentication to the specified Kestrun server instance and returns the modified instance.
```

## PARAMETERS

### -Server
The Kestrun server instance to configure.

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

### -PassThru
If specified, returns the modified server instance after adding the authentication.

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

### Kestrun.Hosting.KestrunHost
## NOTES
This cmdlet is used to configure Windows authentication for the Kestrun server, allowing you to secure your APIs with Windows credentials.

## RELATED LINKS
