---
layout: default
parent: PowerShell Cmdlets
title: Add-KrHealthEndpoint
nav_order: 22
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrHealthEndpoint

## SYNOPSIS
Registers the built-in aggregated health endpoint for the active Kestrun server.

## SYNTAX

```
Add-KrHealthEndpoint [[-Server] <KestrunHost>] [[-Pattern] <String>] [[-DefaultTags] <String[]>]
 [[-AllowAnonymous] <Boolean>] [[-TreatDegradedAsUnhealthy] <Boolean>] [[-ThrowOnDuplicate] <Boolean>]
 [[-RequireSchemes] <String[]>] [[-RequirePolicies] <String[]>] [[-CorsPolicyName] <String>]
 [[-RateLimitPolicyName] <String>] [[-ShortCircuit] <Boolean>] [[-ShortCircuitStatusCode] <Int32>]
 [[-OpenApiSummary] <String>] [[-OpenApiDescription] <String>] [[-OpenApiOperationId] <String>]
 [[-OpenApiTags] <String[]>] [[-OpenApiGroupName] <String>] [[-MaxDegreeOfParallelism] <Int32>]
 [[-ProbeTimeout] <TimeSpan>] [[-DefaultScriptLanguage] <ScriptLanguage>]
 [[-ResponseContentType] <HealthEndpointContentType>] [[-XmlRootElementName] <String>] [-Compress] [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
Wraps the Kestrun host health extension to add (or replace) the HTTP endpoint that aggregates
all registered health probes.
Most parameters are optional and override the defaults provided by
the active host configuration.
When no overrides are supplied the endpoint is registered at
'/health' and inherits the server's existing security posture.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrHealthEndpoint -Pattern '/healthz' -TreatDegradedAsUnhealthy $true -ProbeTimeout '00:00:05'
Registers a health endpoint at /healthz that fails when probes report a degraded status and enforces a 5 second probe timeout.
```

### EXAMPLE 2
```powershell
Get-KrServer | Add-KrHealthEndpoint -OpenApiTags 'Diagnostics','Monitoring' -PassThru
Adds the health endpoint to the current server, customises OpenAPI metadata, and returns the server for further configuration.
```

## PARAMETERS

### -Server
The Kestrun host instance to configure.
If omitted, the current server context is resolved automatically.

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
The relative URL pattern for the endpoint (for example '/healthz').
Must begin with '/'.

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

### -DefaultTags
Optional collection of probe tags to evaluate when the incoming request does not specify an explicit tag filter.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowAnonymous
Set to $true to permit anonymous calls or $false to require authentication.
When omitted, the existing configuration is used.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -TreatDegradedAsUnhealthy
Set to $true to return HTTP 503 when any probe reports a degraded state.
Defaults to $false.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ThrowOnDuplicate
When $true, throws if another GET route already exists at the specified pattern.
Otherwise the endpoint is skipped with a warning.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequireSchemes
Optional list of authentication schemes required to access the endpoint.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequirePolicies
Optional list of authorization policies required to access the endpoint.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CorsPolicyName
Optional ASP.NET Core CORS policy name applied to the endpoint.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RateLimitPolicyName
Optional ASP.NET Core rate limiting policy name applied to the endpoint.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShortCircuit
Set to $true to short-circuit the pipeline with the health result.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShortCircuitStatusCode
Overrides the status code used when ShortCircuit is $true.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -OpenApiSummary
Overrides the OpenAPI summary documented for the endpoint.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OpenApiDescription
Overrides the OpenAPI description documented for the endpoint.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OpenApiOperationId
Overrides the OpenAPI operation id documented for the endpoint.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OpenApiTags
Overrides the OpenAPI tag list documented for the endpoint.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OpenApiGroupName
Overrides the OpenAPI group name documented for the endpoint.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxDegreeOfParallelism
Limits the number of concurrent probes executed during a health request.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 18
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProbeTimeout
Adjusts the timeout enforced for each probe during a health request.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: 19
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultScriptLanguage
Overrides the default script language used when registering script-based probes.

```yaml
Type: ScriptLanguage
Parameter Sets: (All)
Aliases:
Accepted values: Native, PowerShell, CSharp, FSharp, Python, JavaScript, VBNet

Required: False
Position: 20
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResponseContentType
Controls the response payload format returned by the endpoint (Json, Yaml, Xml, or Auto for content negotiation).

```yaml
Type: HealthEndpointContentType
Parameter Sets: (All)
Aliases:
Accepted values: Json, Yaml, Xml, Text, Auto

Required: False
Position: 21
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -XmlRootElementName
When emitting XML output, overrides the root element name (defaults to 'Response').
Ignored for non-XML formats.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 22
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Compress
When set, JSON and XML output are compact (no indentation).
By default output is human readable.

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
Emits the configured server instance so the call can be chained.

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

## RELATED LINKS
