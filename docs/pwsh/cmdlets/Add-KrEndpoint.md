---
layout: default
parent: PowerShell Cmdlets
title: Add-KrEndpoint
nav_order: 14
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrEndpoint

## SYNOPSIS
Creates a new Kestrun server instance with specified options and listeners.

## SYNTAX

### NoCert (Default)
```
Add-KrEndpoint [-Server <KestrunHost>] [-Port <Int32>] [-IPAddress <IPAddress>] [-HostName <String>]
 [-Uri <Uri>] [-AddressFamily <AddressFamily[]>] [-UseConnectionLogging] [-PassThru] [<CommonParameters>]
```

### CertFile
```
Add-KrEndpoint [-Server <KestrunHost>] [-Port <Int32>] [-IPAddress <IPAddress>] [-HostName <String>]
 [-Uri <Uri>] [-AddressFamily <AddressFamily[]>] -CertPath <String> [-CertPassword <SecureString>]
 [-Protocols <HttpProtocols>] [-UseConnectionLogging] [-PassThru] [<CommonParameters>]
```

### SelfSignedCert
```
Add-KrEndpoint [-Server <KestrunHost>] [-Port <Int32>] [-IPAddress <IPAddress>] [-HostName <String>]
 [-Uri <Uri>] [-AddressFamily <AddressFamily[]>] [-SelfSignedCert] [-Protocols <HttpProtocols>]
 [-UseConnectionLogging] [-PassThru] [<CommonParameters>]
```

### x509Certificate
```
Add-KrEndpoint [-Server <KestrunHost>] [-Port <Int32>] [-IPAddress <IPAddress>] [-HostName <String>]
 [-Uri <Uri>] [-AddressFamily <AddressFamily[]>] -X509Certificate <X509Certificate2>
 [-Protocols <HttpProtocols>] [-UseConnectionLogging] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This function initializes a new Kestrun server instance, allowing configuration of various options and listeners.

## EXAMPLES

### EXAMPLE 1
```powershell
New-KrServer -Name 'MyKestrunServer'
Creates a new Kestrun server instance with the specified name.
```

## PARAMETERS

### -Server
The Kestrun server instance to configure.
This parameter is Mandatory and must be a valid server object.

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

### -Port
The port on which the server will listen for incoming requests.
The default is 0, which means a random available port will be assigned.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -IPAddress
The IP address on which the server will listen.
Defaults to \[System.Net.IPAddress\]::Any, which means it will listen on all available network interfaces.

```yaml
Type: IPAddress
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HostName
The hostname for the listener.
This parameter is Mandatory if using the 'HostName' parameter set.

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

### -Uri
The full URI for the listener.
This parameter is Mandatory if using the 'Uri' parameter set.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AddressFamily
An array of address families to filter resolved addresses (e.g., IPv4-only).
This parameter is optional.

```yaml
Type: AddressFamily[]
Parameter Sets: (All)
Aliases:
Accepted values: Unspecified, Unix, InterNetwork, ImpLink, Pup, Chaos, NS, Ipx, Iso, Osi, Ecma, DataKit, Ccitt, Sna, DecNet, DataLink, Lat, HyperChannel, AppleTalk, NetBios, VoiceView, FireFox, Banyan, Atm, InterNetworkV6, Cluster, Ieee12844, Irda, NetworkDesigners, Max, Packet, ControllerAreaNetwork, Unknown

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CertPath
The path to the SSL certificate file.
This parameter is Mandatory if using HTTPS.

```yaml
Type: String
Parameter Sets: CertFile
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CertPassword
The password for the SSL certificate, if applicable.
This parameter is optional.

```yaml
Type: SecureString
Parameter Sets: CertFile
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SelfSignedCert
If specified, a self-signed certificate will be generated and used for HTTPS.
This parameter is optional.

```yaml
Type: SwitchParameter
Parameter Sets: SelfSignedCert
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -X509Certificate
An X509Certificate2 object representing the SSL certificate.
This parameter is Mandatory if using HTTPS

```yaml
Type: X509Certificate2
Parameter Sets: x509Certificate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Protocols
The HTTP protocols to use (e.g., Http1, Http2).
Defaults to Http1 for HTTP listeners and Http1OrHttp2 for HTTPS listeners.

```yaml
Type: HttpProtocols
Parameter Sets: CertFile, SelfSignedCert, x509Certificate
Aliases:
Accepted values: None, Http1, Http2, Http1AndHttp2, Http3, Http1AndHttp2AndHttp3

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseConnectionLogging
If specified, enables connection logging for the listener.
This is useful for debugging and monitoring purposes.

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

### -PassThru
If specified, the cmdlet will return the modified server instance after adding the listener.

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
This function is designed to be used after the server has been configured with routes and listeners.

## RELATED LINKS
