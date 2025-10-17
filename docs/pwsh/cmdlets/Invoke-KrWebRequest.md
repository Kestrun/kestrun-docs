---
layout: default
parent: PowerShell Cmdlets
title: Invoke-KrWebRequest
nav_order: 106
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Invoke-KrWebRequest

## SYNOPSIS
Sends an HTTP request to a Kestrun server over various transport mechanisms (TCP, Named Pipe, Unix Socket).

## SYNTAX

### Tcp (Default)
```
Invoke-KrWebRequest -Uri <Uri> [-Method <String>] [-Path <String>] [-Body <Object>] [-InFile <String>]
 [-ContentType <String>] [-Headers <Hashtable>] [-UserAgent <String>] [-Accept <String>] [-TimeoutSec <Int32>]
 [-SkipCertificateCheck] [-WebSession <Hashtable>] [-SessionVariable <String>] [-DisallowAutoRedirect]
 [-MaximumRedirection <Int32>] [-Credential <PSCredential>] [-UseDefaultCredentials] [-Proxy <Uri>]
 [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-OutFile <String>] [-AsString] [-PassThru]
 [<CommonParameters>]
```

### NamedPipe
```
Invoke-KrWebRequest -NamedPipeName <String> [-Method <String>] [-Path <String>] [-Body <Object>]
 [-InFile <String>] [-ContentType <String>] [-Headers <Hashtable>] [-UserAgent <String>] [-Accept <String>]
 [-TimeoutSec <Int32>] [-SkipCertificateCheck] [-WebSession <Hashtable>] [-SessionVariable <String>]
 [-DisallowAutoRedirect] [-MaximumRedirection <Int32>] [-Credential <PSCredential>] [-UseDefaultCredentials]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-OutFile <String>] [-AsString]
 [-PassThru] [<CommonParameters>]
```

### UnixSocket
```
Invoke-KrWebRequest -UnixSocketPath <String> [-Method <String>] [-Path <String>] [-Body <Object>]
 [-InFile <String>] [-ContentType <String>] [-Headers <Hashtable>] [-UserAgent <String>] [-Accept <String>]
 [-TimeoutSec <Int32>] [-SkipCertificateCheck] [-WebSession <Hashtable>] [-SessionVariable <String>]
 [-DisallowAutoRedirect] [-MaximumRedirection <Int32>] [-Credential <PSCredential>] [-UseDefaultCredentials]
 [-Proxy <Uri>] [-ProxyCredential <PSCredential>] [-ProxyUseDefaultCredentials] [-OutFile <String>] [-AsString]
 [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This function allows sending HTTP requests to a Kestrun server using different transport methods, including TCP, Named Pipe, and Unix Socket.
It supports various HTTP methods, custom headers, request bodies, and response handling options.

## EXAMPLES

### EXAMPLE 1
```powershell
Invoke-KrWebRequest -Uri 'http://localhost:5000' -Method 'GET' -Path '/api/resource'
Sends a GET request to the specified Kestrun server URI and path.
```

### EXAMPLE 2
```powershell
Invoke-KrWebRequest -NamedPipeName 'MyNamedPipe' -Method 'POST' -Path '/api/resource' -Body @{ name = 'value' } -ContentType 'application/json'
Sends a POST request with a JSON body to the Kestrun server over a named pipe.
```

### EXAMPLE 3
```powershell
Invoke-KrWebRequest -UnixSocketPath '/var/run/kestrun.sock' -Method 'GET' -Path '/api/resource' -OutFile 'response.json'
Sends a GET request to the Kestrun server over a Unix socket and saves the response body to a file.
```

## PARAMETERS

### -NamedPipeName
The name of the named pipe to connect to.
This parameter is mandatory when using the NamedPipe transport.

```yaml
Type: String
Parameter Sets: NamedPipe
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UnixSocketPath
The file system path to the Unix domain socket.
This parameter is mandatory when using the UnixSocket transport.

```yaml
Type: String
Parameter Sets: UnixSocket
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Uri
The base URI of the Kestrun server.
This parameter is mandatory when using the Tcp transport.

```yaml
Type: Uri
Parameter Sets: Tcp
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Method
The HTTP method to use for the request (e.g., GET, POST, PUT, DELETE).
The default is GET.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: GET
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
The request target path (e.g., '/api/resource').
Defaults to '/'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: /
Accept pipeline input: False
Accept wildcard characters: False
```

### -Body
The request body, which can be a string, byte array, or object (which will be serialized to JSON).

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InFile
The path to a file whose contents will be uploaded as the request body.

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

### -ContentType
The content type of the request body (e.g., 'application/json').

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

### -Headers
A hashtable of additional headers to include in the request.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserAgent
The User-Agent header value.
Defaults to 'PowerShell/7 Kestrun-InvokeKrWebRequest'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: PowerShell/7 Kestrun-InvokeKrWebRequest
Accept pipeline input: False
Accept wildcard characters: False
```

### -Accept
The Accept header value.
Defaults to '*/*'.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: */*
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeoutSec
The request timeout in seconds.
Defaults to 100 seconds.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 100
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipCertificateCheck
If specified, SSL certificate errors will be ignored (useful for self-signed certificates).

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

### -WebSession
A hashtable containing a CookieContainer for managing cookies across requests.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionVariable
The name of a variable to store the web session (cookies) for reuse in subsequent requests

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

### -DisallowAutoRedirect
If specified, automatic redirection will be disabled.

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

### -MaximumRedirection
The maximum number of automatic redirections to follow.
Defaults to 50.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 50
Accept pipeline input: False
Accept wildcard characters: False
```

### -Credential
The credentials to use for server authentication.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseDefaultCredentials
If specified, the default system credentials will be used for server authentication.

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

### -Proxy
The URI of the proxy server to use for the request.

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

### -ProxyCredential
The credentials to use for proxy authentication.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProxyUseDefaultCredentials
If specified, the default system credentials will be used for proxy authentication.

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

### -OutFile
If specified, the response body will be saved to the given file path.

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

### -AsString
If specified, the response body will be returned as a string.
Otherwise, it will attempt to parse JSON if applicable.

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
If specified, the raw HttpResponseMessage will be returned.

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

## NOTES
This function requires the Kestrun.Net.dll assembly to be available in the same directory or a specified path.
It is designed to work with Kestrun servers but can be adapted for other HTTP servers as needed.

## RELATED LINKS
