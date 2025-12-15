---
layout: default
parent: PowerShell Cmdlets
nav_order: 126
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 12/15/2025
PlatyPS schema version: 2024-05-01
title: Invoke-KrWebRequest
---

# Invoke-KrWebRequest

## SYNOPSIS

Sends an HTTP request to a Kestrun server over various transport mechanisms (TCP, Named Pipe, Unix Socket).

## SYNTAX

### Tcp (Default)

```powershell
Invoke-KrWebRequest -Uri <uri> [-Method <string>] [-Path <string>] [-Body <Object>]
 [-InFile <string>] [-ContentType <string>] [-Headers <hashtable>] [-UserAgent <string>]
 [-Accept <string>] [-TimeoutSec <int>] [-SkipCertificateCheck] [-WebSession <hashtable>]
 [-SessionVariable <string>] [-DisallowAutoRedirect] [-MaximumRedirection <int>]
 [-Credential <pscredential>] [-UseDefaultCredentials] [-Proxy <uri>]
 [-ProxyCredential <pscredential>] [-ProxyUseDefaultCredentials] [-OutFile <string>] [-AsString]
 [-PassThru] [<CommonParameters>]
```

### NamedPipe

```powershell
Invoke-KrWebRequest -NamedPipeName <string> [-Method <string>] [-Path <string>] [-Body <Object>]
 [-InFile <string>] [-ContentType <string>] [-Headers <hashtable>] [-UserAgent <string>]
 [-Accept <string>] [-TimeoutSec <int>] [-SkipCertificateCheck] [-WebSession <hashtable>]
 [-SessionVariable <string>] [-DisallowAutoRedirect] [-MaximumRedirection <int>]
 [-Credential <pscredential>] [-UseDefaultCredentials] [-Proxy <uri>]
 [-ProxyCredential <pscredential>] [-ProxyUseDefaultCredentials] [-OutFile <string>] [-AsString]
 [-PassThru] [<CommonParameters>]
```

### UnixSocket

```powershell
Invoke-KrWebRequest -UnixSocketPath <string> [-Method <string>] [-Path <string>] [-Body <Object>]
 [-InFile <string>] [-ContentType <string>] [-Headers <hashtable>] [-UserAgent <string>]
 [-Accept <string>] [-TimeoutSec <int>] [-SkipCertificateCheck] [-WebSession <hashtable>]
 [-SessionVariable <string>] [-DisallowAutoRedirect] [-MaximumRedirection <int>]
 [-Credential <pscredential>] [-UseDefaultCredentials] [-Proxy <uri>]
 [-ProxyCredential <pscredential>] [-ProxyUseDefaultCredentials] [-OutFile <string>] [-AsString]
 [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

This function allows sending HTTP requests to a Kestrun server using different transport methods, including TCP, Named Pipe, and Unix Socket.
It supports various HTTP methods, custom headers, request bodies, and response handling options.

## EXAMPLES

### EXAMPLE 1

Invoke-KrWebRequest -Uri 'http://localhost:5000' -Method 'GET' -Path '/api/resource'
Sends a GET request to the specified Kestrun server URI and path.

### EXAMPLE 2

Invoke-KrWebRequest -NamedPipeName 'MyNamedPipe' -Method 'POST' -Path '/api/resource' -Body @{ name = 'value' } -ContentType 'application/json'
Sends a POST request with a JSON body to the Kestrun server over a named pipe.

### EXAMPLE 3

Invoke-KrWebRequest -UnixSocketPath '/var/run/kestrun.sock' -Method 'GET' -Path '/api/resource' -OutFile 'response.json'
Sends a GET request to the Kestrun server over a Unix socket and saves the response body to a file.

## PARAMETERS

### -Accept

The Accept header value.
Defaults to '*/*'.

```yaml
Type: System.String
DefaultValue: '*/*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AsString

If specified, the response body will be returned as a string.
Otherwise, it will attempt to parse JSON if applicable.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Body

The request body, which can be a string, byte array, or object (which will be serialized to JSON).

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ContentType

The content type of the request body (e.g., 'application/json').

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Credential

The credentials to use for server authentication.

```yaml
Type: System.Management.Automation.PSCredential
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DisallowAutoRedirect

If specified, automatic redirection will be disabled.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Headers

A hashtable of additional headers to include in the request.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -InFile

The path to a file whose contents will be uploaded as the request body.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MaximumRedirection

The maximum number of automatic redirections to follow.
Defaults to 50.

```yaml
Type: System.Int32
DefaultValue: 50
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Method

The HTTP method to use for the request (e.g., GET, POST, PUT, DELETE).
The default is GET.

```yaml
Type: System.String
DefaultValue: GET
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -NamedPipeName

The name of the named pipe to connect to.
This parameter is mandatory when using the NamedPipe transport.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NamedPipe
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutFile

If specified, the response body will be saved to the given file path.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, the raw HttpResponseMessage will be returned.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Path

The request target path (e.g., '/api/resource').
Defaults to '/'.

```yaml
Type: System.String
DefaultValue: /
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Proxy

The URI of the proxy server to use for the request.

```yaml
Type: System.Uri
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ProxyCredential

The credentials to use for proxy authentication.

```yaml
Type: System.Management.Automation.PSCredential
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ProxyUseDefaultCredentials

If specified, the default system credentials will be used for proxy authentication.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SessionVariable

The name of a variable to store the web session (cookies) for reuse in subsequent requests

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SkipCertificateCheck

If specified, SSL certificate errors will be ignored (useful for self-signed certificates).

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TimeoutSec

The request timeout in seconds.
Defaults to 100 seconds.

```yaml
Type: System.Int32
DefaultValue: 100
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UnixSocketPath

The file system path to the Unix domain socket.
This parameter is mandatory when using the UnixSocket transport.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UnixSocket
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Uri

The base URI of the Kestrun server.
This parameter is mandatory when using the Tcp transport.

```yaml
Type: System.Uri
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Tcp
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseDefaultCredentials

If specified, the default system credentials will be used for server authentication.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UserAgent

The User-Agent header value.
Defaults to 'PowerShell/7 Kestrun-InvokeKrWebRequest'.

```yaml
Type: System.String
DefaultValue: PowerShell/7 Kestrun-InvokeKrWebRequest
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WebSession

A hashtable containing a CookieContainer for managing cookies across requests.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

This function requires the Kestrun.Net.dll assembly to be available in the same directory or a specified path.
It is designed to work with Kestrun servers but can be adapted for other HTTP servers as needed.


## RELATED LINKS

{{ Fill in the related links here }}
