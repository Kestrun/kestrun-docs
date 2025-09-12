---
layout: default
parent: PowerShell Cmdlets
title: Set-KrServerHttpsOptions
nav_order: 100
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Set-KrServerHttpsOptions

## SYNOPSIS
Configures HTTPS options for a Kestrun server instance.

## SYNTAX

### Items (Default)
```
Set-KrServerHttpsOptions [-Server <KestrunHost>] [-SslProtocols <SslProtocols>]
 [-ClientCertificateMode <ClientCertificateMode>] [-CheckCertificateRevocation]
 [-ServerCertificate <X509Certificate2>] [-ServerCertificateChain <X509Certificate2Collection>]
 [-HandshakeTimeout <Int32>] [-PassThru] [<CommonParameters>]
```

### Options
```
Set-KrServerHttpsOptions [-Server <KestrunHost>] -Options <HttpsConnectionAdapterOptions> [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
This function allows administrators to set or modify the HTTPS connection adapter options for a Kestrun
server instance, including SSL protocols, client certificate modes, and server certificates.

## EXAMPLES

### EXAMPLE 1
```powershell
Set-KrServerHttpsOptions -Server $server -SslProtocols Tls12
This command sets the SSL protocols for the specified Kestrun server instance to use TLS 1.2.
```

### EXAMPLE 2
```powershell
Set-KrServerHttpsOptions -Server $server -ClientCertificateMode RequireCertificate
This command sets the client certificate mode for the specified Kestrun server instance to require a client certificate.
```

### EXAMPLE 3
```powershell
Set-KrServerHttpsOptions -Server $server -CheckCertificateRevocation
This command enables certificate revocation checking for the specified Kestrun server instance.
```

### EXAMPLE 4
```powershell
Set-KrServerHttpsOptions -Server $server -ServerCertificate $cert
This command sets the server certificate for the specified Kestrun server instance.
```

### EXAMPLE 5
```powershell
Set-KrServerHttpsOptions -Server $server -HandshakeTimeout 30
This command sets the handshake timeout for the specified Kestrun server instance to 30 seconds.
```

## PARAMETERS

### -Server
The Kestrun server instance to configure.
This parameter is mandatory and must be a valid server object.

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
The HttpsConnectionAdapterOptions object containing the desired HTTPS configuration settings.

```yaml
Type: HttpsConnectionAdapterOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SslProtocols
Specifies the SSL protocols to be used for HTTPS connections.
This parameter is optional and can be set to a specific protocol or left unset to use defaults.

```yaml
Type: SslProtocols
Parameter Sets: Items
Aliases:
Accepted values: None, Ssl2, Ssl3, Tls, Default, Tls11, Tls12, Tls13

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClientCertificateMode
Specifies the client certificate mode for HTTPS connections.
This parameter is optional and can be set to a specific mode or left unset to use defaults.

```yaml
Type: ClientCertificateMode
Parameter Sets: Items
Aliases:
Accepted values: NoCertificate, AllowCertificate, RequireCertificate, DelayCertificate

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CheckCertificateRevocation
If specified, enables certificate revocation checking for HTTPS connections.
This parameter is optional and can be left unset to use defaults.

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

### -ServerCertificate
Specifies the server certificate to be used for HTTPS connections.
This parameter is optional and can be left unset to use defaults.

```yaml
Type: X509Certificate2
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerCertificateChain
Specifies the server certificate chain to be used for HTTPS connections.
This parameter is optional and can be left unset to use defaults.

```yaml
Type: X509Certificate2Collection
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HandshakeTimeout
Specifies the handshake timeout duration in seconds for HTTPS connections.
This parameter is optional and can be left unset to use defaults.

```yaml
Type: Int32
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, the cmdlet will return the modified server instance after applying the HTTPS options.

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

### [Kestrun.Hosting.KestrunHost]
### The modified Kestrun server instance with the applied HTTPS options.
## NOTES
This function is designed to be used in the context of a Kestrun server setup and allows for flexible configuration of HTTPS options.
$ClientCertificateValidation, $ServerCertificateSelector, and $OnAuthenticate are currently not implemented in this cmdlet but can be added in future versions for more advanced scenarios.

## RELATED LINKS
