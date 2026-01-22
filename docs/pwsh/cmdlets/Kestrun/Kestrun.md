---
layout: default
parent: PowerShell Cmdlets
nav_order: 134
render_with_liquid: false
ocument type: module
Help Version: 1.0.0.0
HelpInfoUri: 
Locale: ''
Module Guid: 00000000-0000-0000-0000-000000000000
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Kestrun Module
---

# Kestrun Module

## Description

{{ Fill in the Description }}

## Kestrun

### [Add-KrAddCallbacksAutomation](Add-KrAddCallbacksAutomation.md)

Adds callback automation middleware to the Kestrun host.

### [Add-KrAntiforgeryMiddleware](Add-KrAntiforgeryMiddleware.md)

Adds an Antiforgery service to the server.

### [Add-KrAntiforgeryTokenRoute](Add-KrAntiforgeryTokenRoute.md)

Adds a GET endpoint that issues the antiforgery cookie and returns a JSON token payload.

### [Add-KrApiDocumentationRoute](Add-KrApiDocumentationRoute.md)

Adds a new API documentation route (Redoc or Swagger UI) to the Kestrun server.

### [Add-KrApiKeyAuthentication](Add-KrApiKeyAuthentication.md)

Adds API key authentication to the Kestrun server.

### [Add-KrBasicAuthentication](Add-KrBasicAuthentication.md)

Adds basic authentication to the Kestrun server.

### [Add-KrCacheMiddleware](Add-KrCacheMiddleware.md)

Adds response caching to the Kestrun server.

### [Add-KrCacheResponse](Add-KrCacheResponse.md)

Adds caching headers to the HTTP response.

### [Add-KrClaimPolicy](Add-KrClaimPolicy.md)

Adds a new claim policy to the KestrunClaims system.

### [Add-KrClientCertificateAuthentication](Add-KrClientCertificateAuthentication.md)

Adds Client Certificate authentication to the Kestrun server.

### [Add-KrCommonAccessLogMiddleware](Add-KrCommonAccessLogMiddleware.md)

Adds Apache style common access logging to the Kestrun server.

### [Add-KrCompressionMiddleware](Add-KrCompressionMiddleware.md)

Adds response compression to the server.

### [Add-KrCookiesAuthentication](Add-KrCookiesAuthentication.md)

Adds cookie authentication to the Kestrun server.

### [Add-KrCorsPolicy](Add-KrCorsPolicy.md)

Adds a CORS policy to the Kestrun server.

### [Add-KrDistributedRedisCache](Add-KrDistributedRedisCache.md)

Adds StackExchange.Redis distributed cache services to the Kestrun server.

### [Add-KrDistributedSqlServerCache](Add-KrDistributedSqlServerCache.md)

Adds SQL Server distributed cache services to the Kestrun server.

### [Add-KrEndpoint](Add-KrEndpoint.md)

Creates a new Kestrun server instance with specified options and listeners.

### [Add-KrEnrichEnvironment](Add-KrEnrichEnvironment.md)

Adds environment information to the log context.

### [Add-KrEnrichErrorRecord](Add-KrEnrichErrorRecord.md)

Enriches log events with ErrorRecord property if available.

### [Add-KrEnrichExceptionDetail](Add-KrEnrichExceptionDetail.md)

Adds exception details to the log context.

### [Add-KrEnrichFromLogContext](Add-KrEnrichFromLogContext.md)

Enriches log events with properties from LogContext

### [Add-KrEnrichProcessId](Add-KrEnrichProcessId.md)

Adds the process ID to the log context.

### [Add-KrEnrichProcessName](Add-KrEnrichProcessName.md)

Adds the process name to the log context.

### [Add-KrEnrichProperty](Add-KrEnrichProperty.md)

Enriches log events with custom property.

### [Add-KrFaviconMiddleware](Add-KrFaviconMiddleware.md)

Adds a favicon to the Kestrun server.

### [Add-KrFileServerMiddleware](Add-KrFileServerMiddleware.md)

Registers a file server to serve static files from a specified path.

### [Add-KrForwardedHeader](Add-KrForwardedHeader.md)

Adds Forwarded Headers middleware to a Kestrun server.

### [Add-KrGitHubAuthentication](Add-KrGitHubAuthentication.md)

Adds GitHub OAuth (Authorization Code) authentication to the Kestrun server.

### [Add-KrHealthEndpoint](Add-KrHealthEndpoint.md)

Registers the built-in aggregated health endpoint for the active Kestrun server.

### [Add-KrHealthHttpProbe](Add-KrHealthHttpProbe.md)

Registers an HTTP-based health probe that polls a remote endpoint.

### [Add-KrHealthProbe](Add-KrHealthProbe.md)

Registers a script-based health probe with the active Kestrun server.

### [Add-KrHealthProcessProbe](Add-KrHealthProcessProbe.md)

Registers a health probe that executes an external process.

### [Add-KrHostFiltering](Add-KrHostFiltering.md)

Adds Host Filtering middleware to a Kestrun server instance.

### [Add-KrHsts](Add-KrHsts.md)

Adds HTTP Strict Transport Security (HSTS) middleware to a Kestrun server instance.

### [Add-KrHtmlTemplateRoute](Add-KrHtmlTemplateRoute.md)

Adds a new HTML template route to the Kestrun server.

### [Add-KrHttpsRedirection](Add-KrHttpsRedirection.md)

Adds HTTPS redirection middleware to the Kestrun server.

### [Add-KrJWTAudience](Add-KrJWTAudience.md)

Adds an audience to the JWT token builder.

### [Add-KrJWTBearerAuthentication](Add-KrJWTBearerAuthentication.md)

Adds JWT Bearer authentication to the Kestrun server.

### [Add-KrJWTClaim](Add-KrJWTClaim.md)

Adds a claim to the JWT token builder.

### [Add-KrJWTHeader](Add-KrJWTHeader.md)

Adds a header to the JWT token builder.

### [Add-KrJWTIssuer](Add-KrJWTIssuer.md)

Adds an issuer to the JWT token builder.

### [Add-KrJWTSubject](Add-KrJWTSubject.md)

Adds a subject to the JWT token builder.

### [Add-KrListenUnixSocket](Add-KrListenUnixSocket.md)

Adds a Unix socket listener to a Kestrun server instance.

### [Add-KrMapRoute](Add-KrMapRoute.md)

Adds a new map route to the Kestrun server.

### [Add-KrNamedPipeListener](Add-KrNamedPipeListener.md)

Adds a named pipe listener to a Kestrun server instance.

### [Add-KrOAuth2Authentication](Add-KrOAuth2Authentication.md)

Adds OAuth 2.0 (Authorization Code) authentication to the Kestrun server.

### [Add-KrOpenApiComponent](Add-KrOpenApiComponent.md)

Adds an OpenAPI component (Example or Link) to the specified OpenAPI document(s).

### [Add-KrOpenApiContact](Add-KrOpenApiContact.md)

Adds contact information to the OpenAPI document.

### [Add-KrOpenApiExtension](Add-KrOpenApiExtension.md)

Adds an OpenAPI extension to specified OpenAPI documents.

### [Add-KrOpenApiExternalDoc](Add-KrOpenApiExternalDoc.md)

Adds an OpenAPI External Documentation object to specified OpenAPI documents.

### [Add-KrOpenApiInfo](Add-KrOpenApiInfo.md)

Adds or updates the OpenAPI Info section in the specified OpenAPI documents.

### [Add-KrOpenApiInline](Add-KrOpenApiInline.md)

Adds an inline OpenAPI element (Example or Link) to the specified OpenAPI document(s).

### [Add-KrOpenApiLicense](Add-KrOpenApiLicense.md)

Adds license information to the OpenAPI document.

### [Add-KrOpenApiRoute](Add-KrOpenApiRoute.md)

Adds a new OpenAPI map route to the Kestrun server.

### [Add-KrOpenApiServer](Add-KrOpenApiServer.md)

Creates a new OpenAPI server.

### [Add-KrOpenApiTag](Add-KrOpenApiTag.md)

Adds a tag to the OpenAPI document.

### [Add-KrOpenIdConnectAuthentication](Add-KrOpenIdConnectAuthentication.md)

Adds OpenID Connect (Authorization Code) authentication to the Kestrun server.

### [Add-KrPowerShellRazorPagesRuntime](Add-KrPowerShellRazorPagesRuntime.md)

Adds PowerShell support for Razor Pages.

### [Add-KrRazorPageService](Add-KrRazorPageService.md)

Adds Razor Pages service to the server.

### [Add-KrRouteGroup](Add-KrRouteGroup.md)

Creates a grouped route context (prefix + shared options) for nested Add-KrMapRoute calls.

### [Add-KrScheduling](Add-KrScheduling.md)

Adds scheduling support to the Kestrun server.

### [Add-KrScriptBlock](Add-KrScriptBlock.md)

Adds a named scriptblock to the specified scope, allowing retrieval via a getter function.

### [Add-KrSession](Add-KrSession.md)

Adds session state services and middleware to the Kestrun server.

### [Add-KrSignalRHubMiddleware](Add-KrSignalRHubMiddleware.md)

Maps a SignalR hub class to the given URL path.

### [Add-KrSinkConsole](Add-KrSinkConsole.md)

Adds a console logging sink to the Kestrun logging system.

### [Add-KrSinkEventLog](Add-KrSinkEventLog.md)

Adds an Event Log sink to the Serilog logger configuration.

### [Add-KrSinkFile](Add-KrSinkFile.md)

Adds a file-based logging sink to the logging system.

### [Add-KrSinkHttp](Add-KrSinkHttp.md)

Adds an HTTP sink to the Serilog logger configuration.

### [Add-KrSinkPowerShell](Add-KrSinkPowerShell.md)

Adds a PowerShell sink to the logger configuration.

### [Add-KrSinkSyslogLocal](Add-KrSinkSyslogLocal.md)

Adds a Syslog Local sink to the Serilog logger configuration.

### [Add-KrSinkSyslogTcp](Add-KrSinkSyslogTcp.md)

Adds a Syslog TCP sink to the logging system.

### [Add-KrSinkSyslogUdp](Add-KrSinkSyslogUdp.md)

Adds a Syslog UDP sink to the Serilog logger configuration.

### [Add-KrSseBroadcastMiddleware](Add-KrSseBroadcastMiddleware.md)

Adds an SSE broadcast endpoint to the server.

### [Add-KrStaticFilesMiddleware](Add-KrStaticFilesMiddleware.md)

Registers a static file server to serve files from a specified path.

### [Add-KrTasksService](Add-KrTasksService.md)

Adds ad-hoc Tasks support to the Kestrun server.

### [Add-KrUserClaim](Add-KrUserClaim.md)

Adds a claim to the current user.
This function allows you to add a new claim to the current user's identity.
The claim can be of any type, and you must specify the claim type and value.
The function will return the updated claims collection.

### [Add-KrWindowsAuthentication](Add-KrWindowsAuthentication.md)

Adds Windows authentication to the Kestrun server.

### [Build-KrClaimPolicy](Build-KrClaimPolicy.md)

Builds the claim policy configuration from the builder.

### [Build-KrJWT](Build-KrJWT.md)

Builds the JWT token from the builder.

### [Build-KrOpenApiDocument](Build-KrOpenApiDocument.md)

Builds the OpenAPI document for the specified Kestrun server.

### [Clear-KrEnvironmentOverride](Clear-KrEnvironmentOverride.md)

Clears any Kestrun environment override for the current PowerShell session.

### [Clear-KrSession](Clear-KrSession.md)

Clears all items from the session.

### [Close-KrLogger](Close-KrLogger.md)

Closes the logger and flushes all logs.

### [ConvertFrom-KrJwkJsonToCertificate](ConvertFrom-KrJwkJsonToCertificate.md)

Creates a self-signed X509 certificate from an RSA JWK.

### [ConvertFrom-KrYaml](ConvertFrom-KrYaml.md)

Converts a YAML string to a PowerShell object or hashtable.

### [ConvertTo-KrBase64Url](ConvertTo-KrBase64Url.md)

Converts a byte array to a Base64Url-encoded string.

### [ConvertTo-KrJwkJson](ConvertTo-KrJwkJson.md)

Converts an X509 certificate or RSA private key PEM to an RSA JWK JSON string.

### [ConvertTo-KrYaml](ConvertTo-KrYaml.md)

Converts a PowerShell object or hashtable to a YAML string.

### [Copy-KrJWTTokenBuilder](Copy-KrJWTTokenBuilder.md)

Creates a new cloned JWT token builder instance.

### [Enable-KrConfiguration](Enable-KrConfiguration.md)

Enables Kestrun server configuration and starts the server.

### [Enable-KrExceptionHandling](Enable-KrExceptionHandling.md)

Enables exception handling middleware for a Kestrun server instance.

### [Enable-KrStatusCodePage](Enable-KrStatusCodePage.md)

Enables Status Code Pages for a Kestrun server.

### [Expand-KrObject](Expand-KrObject.md)

Expands an object into a formatted string for display.

### [Export-KrCertificate](Export-KrCertificate.md)

Exports an X509Certificate2 to PFX or PEM(+key).

### [Export-KrOpenApiDocument](Export-KrOpenApiDocument.md)

Exports the OpenAPI document for the specified Kestrun server in the desired format.

### [Get-KrBuiltTargetFrameworkVersion](Get-KrBuiltTargetFrameworkVersion.md)

Gets the target framework version that Kestrun was built against.

### [Get-KrCertificatePurpose](Get-KrCertificatePurpose.md)

Lists the Enhanced Key Usage values on a certificate.
This function is designed to be used in the context of Kestrun's certificate management.

### [Get-KrDefaultLogger](Get-KrDefaultLogger.md)

Gets the logger for the current session.

### [Get-KrEnvironment](Get-KrEnvironment.md)

Gets the current Kestrun environment for the PowerShell session.

### [Get-KrFeatureSupport](Get-KrFeatureSupport.md)

Gets the support status of known features in the current Kestrun runtime environment.

### [Get-KrJwkThumbprint](Get-KrJwkThumbprint.md)

Computes an RFC 7638 JWK thumbprint for an RSA key.

### [Get-KrJWTInfo](Get-KrJWTInfo.md)

Retrieves information from a JWT token.

### [Get-KrJWTToken](Get-KrJWTToken.md)

Retrieves the JWT token from the builder result.

### [Get-KrJWTValidationParameter](Get-KrJWTValidationParameter.md)

Retrieves the validation parameters for a JWT token builder result.

### [Get-KrLoggerLevelSwitch](Get-KrLoggerLevelSwitch.md)

Gets the current logging level for a level switch.

### [Get-KrOpenApiDocument](Get-KrOpenApiDocument.md)

Retrieves the OpenAPI document for the specified Kestrun server.

### [Get-KrRequestBody](Get-KrRequestBody.md)

Retrieves a request body value from the HTTP request.

### [Get-KrRequestCookie](Get-KrRequestCookie.md)

Retrieves a cookie value from the HTTP request.

### [Get-KrRequestForm](Get-KrRequestForm.md)

Retrieves a request form value from the HTTP request.

### [Get-KrRequestHeader](Get-KrRequestHeader.md)

Retrieves a request header value from the HTTP request.

### [Get-KrRequestQuery](Get-KrRequestQuery.md)

Retrieves a query parameter value from the HTTP request.

### [Get-KrRequestRouteParam](Get-KrRequestRouteParam.md)

Retrieves a request route value from the HTTP request.

### [Get-KrRoot](Get-KrRoot.md)

Retrieves the Kestrun root directory.

### [Get-KrScheduleReport](Get-KrScheduleReport.md)

Returns the full schedule report.

### [Get-KrScheduleSnapshot](Get-KrScheduleSnapshot.md)

Returns a snapshot of the current schedule.

### [Get-KrServer](Get-KrServer.md)

Gets the current Kestrun server instance.

### [Get-KrSessionByte](Get-KrSessionByte.md)

Retrieves a byte array value from the session by key.

### [Get-KrSessionInt32](Get-KrSessionInt32.md)

Retrieves a 32-bit integer value from the session by key.

### [Get-KrSessionString](Get-KrSessionString.md)

Retrieves a string value from the session by key.

### [Get-KrSharedState](Get-KrSharedState.md)

Retrieves the value of a previously defined global variable.

### [Get-KrSignalRConnectedClient](Get-KrSignalRConnectedClient.md)

Gets the number of connected SignalR clients.

### [Get-KrSinkJsonFormatter](Get-KrSinkJsonFormatter.md)

Returns new instance of Serilog.Formatting.Json.JsonFormatter.

### [Get-KrSseConnectedClientCount](Get-KrSseConnectedClientCount.md)

Gets the number of connected SSE broadcast clients.

### [Get-KrTask](Get-KrTask.md)

Gets the status or result of a task by id.

### [Get-KrTaskResult](Get-KrTaskResult.md)

Gets the detailed result of a task by id.

### [Get-KrTaskState](Get-KrTaskState.md)

Gets the state of a task by id.

### [Get-KrVersion](Get-KrVersion.md)

Retrieves the Kestrun module version information.

### [Import-KrCertificate](Import-KrCertificate.md)

Imports a PFX/PEM certificate file and returns X509Certificate2.

### [Initialize-KrRoot](Initialize-KrRoot.md)

Initializes the Kestrun root directory for path resolution.

### [Invoke-KrChallenge](Invoke-KrChallenge.md)

Challenges the current request to authenticate with the specified authentication scheme.

### [Invoke-KrCookieSignIn](Invoke-KrCookieSignIn.md)

Signs in a user issuing an authentication cookie for the given scheme.

### [Invoke-KrCookieSignOut](Invoke-KrCookieSignOut.md)

Signs out the current user by removing their authentication cookie for the given scheme.

### [Invoke-KrWebRequest](Invoke-KrWebRequest.md)

Sends an HTTP request to a Kestrun server over various transport mechanisms (TCP, Named Pipe, Unix Socket).

### [Limit-KrJWTNotBefore](Limit-KrJWTNotBefore.md)

Sets the NotBefore time for the JWT token builder.

### [Limit-KrJWTValidity](Limit-KrJWTValidity.md)

Sets the validity period for the JWT token.

### [New-KrCertificateRequest](New-KrCertificateRequest.md)

Creates a PEM-encoded CSR (and returns the private key).

### [New-KrClaimPolicy](New-KrClaimPolicy.md)

Creates a new claim policy builder instance.

### [New-KrCookieBuilder](New-KrCookieBuilder.md)

Creates and configures a new [Microsoft.AspNetCore.Http.CookieBuilder] instance.

### [New-KrCorsPolicyBuilder](New-KrCorsPolicyBuilder.md)

Creates a new CORS policy builder.

### [New-KrJWTBuilder](New-KrJWTBuilder.md)

Creates a new JWT token builder instance.

### [New-KrLogger](New-KrLogger.md)

Creates a new instance of Serilog.LoggerConfiguration.

### [New-KrMapRouteOption](New-KrMapRouteOption.md)

Creates a new instance of the Kestrun.Hosting.Options.MapRouteOptions class.

### [New-KrOpenApiExample](New-KrOpenApiExample.md)

Creates a new OpenAPI Component Example object.

### [New-KrOpenApiExternalDoc](New-KrOpenApiExternalDoc.md)

Creates a new OpenAPI External Documentation object.

### [New-KrOpenApiHeader](New-KrOpenApiHeader.md)

Creates a new OpenAPI Header object.

### [New-KrOpenApiLink](New-KrOpenApiLink.md)

Creates a new OpenAPI Link object.

### [New-KrOpenApiServer](New-KrOpenApiServer.md)

Creates a new OpenAPI server.

### [New-KrOpenApiServerVariable](New-KrOpenApiServerVariable.md)

Creates a new OpenAPI server variable.

### [New-KrPrivateKeyJwt](New-KrPrivateKeyJwt.md)

Builds a Private Key JWT (client assertion) for OAuth2/OIDC client authentication.

### [New-KrProbeResult](New-KrProbeResult.md)

Creates a new Kestrun health ProbeResult object.

### [New-KrSelfSignedCertificate](New-KrSelfSignedCertificate.md)

Creates a new self-signed certificate.

### [New-KrServer](New-KrServer.md)

Creates a new Kestrun server instance.

### [New-KrTask](New-KrTask.md)

Creates a task without starting it.

### [NoDefault](NoDefault.md)

Placeholder function to indicate no default value.

### [Protect-KrJWT](Protect-KrJWT.md)

Protects a JWT token using a specified secret or certificate.

### [Protect-KrJWTPayload](Protect-KrJWTPayload.md)

Encrypts the JWT payload using a secret, PEM file, or X509 certificate.

### [Push-KrLogContextProperty](Push-KrLogContextProperty.md)

Push a property into Serilog's LogContext for the current scope.

### [Register-KrLogger](Register-KrLogger.md)

Starts the Kestrun logger.

### [Register-KrSchedule](Register-KrSchedule.md)

Creates a new scheduled job in the active Kestrun host.

### [Remove-KrServer](Remove-KrServer.md)

Removes a Kestrun server instance.

### [Remove-KrSession](Remove-KrSession.md)

Removes a session item by key.

### [Remove-KrSharedState](Remove-KrSharedState.md)

Removes a global variable from Kestrun shared state.

### [Remove-KrTask](Remove-KrTask.md)

Removes a finished task from the registry.

### [Resolve-KrPath](Resolve-KrPath.md)

Resolves a file path relative to the Kestrun root or a specified base path.

### [Resume-KrSchedule](Resume-KrSchedule.md)

Resumes a previously-paused schedule.

### [Send-KrSignalREvent](Send-KrSignalREvent.md)

Broadcasts a custom event to all connected SignalR clients.

### [Send-KrSignalRGroupMessage](Send-KrSignalRGroupMessage.md)

Broadcasts a message to a specific SignalR group.

### [Send-KrSignalRLog](Send-KrSignalRLog.md)

Broadcasts a log message to all connected SignalR clients.

### [Send-KrSseBroadcastEvent](Send-KrSseBroadcastEvent.md)

Broadcasts an SSE event to all connected SSE broadcast clients.

### [Set-KrCorsCredential](Set-KrCorsCredential.md)

Set the CORS credentials policy for a given CorsPolicyBuilder object.

### [Set-KrCorsExposedHeader](Set-KrCorsExposedHeader.md)

Set exposed headers for a CORS policy builder.

### [Set-KrCorsHeader](Set-KrCorsHeader.md)

Set CORS headers for a given CORS policy builder.

### [Set-KrCorsMethod](Set-KrCorsMethod.md)

Sets the methods for a CORS policy in a .NET Core application.

### [Set-KrCorsOrigin](Set-KrCorsOrigin.md)

Sets the CORS origin for a given CorsPolicyBuilder object.

### [Set-KrCorsPreflightMaxAge](Set-KrCorsPreflightMaxAge.md)

Sets the preflight max age for CORS policies in ASP.NET Core.

### [Set-KrDefaultLogger](Set-KrDefaultLogger.md)

Sets the logger for the current session.

### [Set-KrEnvironment](Set-KrEnvironment.md)

Sets the Kestrun environment for the current PowerShell session.

### [Set-KrLoggerLevel](Set-KrLoggerLevel.md)

Sets the minimum log level for the logger configuration.

### [Set-KrLoggerLevelSwitch](Set-KrLoggerLevelSwitch.md)

Sets the minimum logging level for a level switch.

### [Set-KrPythonRuntime](Set-KrPythonRuntime.md)

Selects which CPython runtime pythonnet will embed.

### [Set-KrServerHttpsOptions](Set-KrServerHttpsOptions.md)

Configures HTTPS options for a Kestrun server instance.

### [Set-KrServerLimit](Set-KrServerLimit.md)

Configures advanced options and operational limits for a Kestrun server instance.

### [Set-KrServerNamedPipeOptions](Set-KrServerNamedPipeOptions.md)

Sets the named pipe options for a Kestrun server instance. (Windows Operating Systems only)

### [Set-KrServerOptions](Set-KrServerOptions.md)

Configures advanced options and operational limits for a Kestrun server instance.

### [Set-KrSessionByte](Set-KrSessionByte.md)

Sets a byte array value in the session by key.

### [Set-KrSessionInt32](Set-KrSessionInt32.md)

Sets a 32-bit integer value in the session by key.

### [Set-KrSessionString](Set-KrSessionString.md)

Sets a string value in the session by key.

### [Set-KrSharedState](Set-KrSharedState.md)

Defines or updates a global variable accessible across Kestrun scripts.

### [Set-KrTaskName](Set-KrTaskName.md)

Sets the name and/or description of a task.

### [Start-KrServer](Start-KrServer.md)

Starts the Kestrun server and listens for incoming requests.

### [Start-KrSseResponse](Start-KrSseResponse.md)

Starts a Server-Sent Events (SSE) response to the client.

### [Start-KrTask](Start-KrTask.md)

Starts a previously created task by id.

### [Stop-KrServer](Stop-KrServer.md)

Starts the Kestrun server and listens for incoming requests.

### [Stop-KrTask](Stop-KrTask.md)

Requests cancellation for a running task.

### [Suspend-KrSchedule](Suspend-KrSchedule.md)

Suspends a schedule, preventing it from running until resumed.

### [Test-KrCacheRevalidation](Test-KrCacheRevalidation.md)

Checks request validators and writes 304 if appropriate; otherwise sets ETag/Last-Modified.

### [Test-KrCapability](Test-KrCapability.md)

Check if a specific feature is supported in the current Kestrun runtime environment.

### [Test-KrCertificate](Test-KrCertificate.md)

Validates a certificate’s chain, EKU, and cryptographic strength.

### [Test-KrDebugContext](Test-KrDebugContext.md)

Tests if the current PowerShell session is in a debugging context.

### [Test-KrJWT](Test-KrJWT.md)

Validates a JWT token against the builder's parameters.

### [Test-KrLogger](Test-KrLogger.md)

Tests if a logger exists or returns the current default logger for the session.

### [Test-KrOpenApiDocument](Test-KrOpenApiDocument.md)

Tests the OpenAPI document for the specified Kestrun server.

### [Test-KrRoute](Test-KrRoute.md)

Tests if a route exists in the Kestrun host.

### [Update-KrJWT](Update-KrJWT.md)

Updates an existing JWT token.

### [Update-KrSynchronizedCounter](Update-KrSynchronizedCounter.md)

Updates a synchronized counter in a thread-safe manner.

### [Write-KrBinaryResponse](Write-KrBinaryResponse.md)

Writes binary data directly to the HTTP response body.

### [Write-KrBsonResponse](Write-KrBsonResponse.md)

Writes an object serialized as BSON to the HTTP response.

### [Write-KrCborResponse](Write-KrCborResponse.md)

Writes an object serialized as CBOR to the HTTP response.

### [Write-KrCsvResponse](Write-KrCsvResponse.md)

Writes CSV data to the HTTP response body.

### [Write-KrErrorResponse](Write-KrErrorResponse.md)

Writes an error response to the HTTP client.

### [Write-KrFileResponse](Write-KrFileResponse.md)

Sends a file as the HTTP response.

### [Write-KrFormUrlEncodedResponse](Write-KrFormUrlEncodedResponse.md)

Writes key/value data to the HTTP response body as application/x-www-form-urlencoded.

### [Write-KrHtmlResponse](Write-KrHtmlResponse.md)

Writes an HTML response to the HTTP response body.

### [Write-KrJsonResponse](Write-KrJsonResponse.md)

Writes an object to the HTTP response body as JSON.

### [Write-KrLog](Write-KrLog.md)

Logs a message with the specified log level and parameters.

### [Write-KrRedirectResponse](Write-KrRedirectResponse.md)

Writes a redirect response to the HTTP client.

### [Write-KrResponse](Write-KrResponse.md)

Writes a response with the specified input object and HTTP status code.

### [Write-KrSseEvent](Write-KrSseEvent.md)

Sends a Server-Sent Event (SSE) to connected clients.

### [Write-KrStatusResponse](Write-KrStatusResponse.md)

Sets only the HTTP status code for the response, without a body.

### [Write-KrStreamResponse](Write-KrStreamResponse.md)

Writes a stream directly to the HTTP response body.

### [Write-KrTextResponse](Write-KrTextResponse.md)

Writes plain text to the HTTP response body.

### [Write-KrXmlResponse](Write-KrXmlResponse.md)

Writes an object serialized as XML to the HTTP response.

### [Write-KrYamlResponse](Write-KrYamlResponse.md)

Writes an object to the HTTP response body as YAML.
