---
layout: default
title: C# API
nav_order: 1
parent: "C#"
---
# Kestrun assembly

## global namespace

| public type | description |
| --- | --- |
| [Flags] enum [KestrunApiContext](./global/KestrunApiContext) | Specifies the API context in which a Kestrun route or schedule can be executed. |
| class [KestrunRuntimeApiAttribute](./global/KestrunRuntimeApiAttribute) | Attribute to specify runtime API context and notes for Kestrun routes or schedules. |

## Kestrun namespace

| public type | description |
| --- | --- |
| static class [FixedTimeEquals](./Kestrun/FixedTimeEquals) | Provides constant-time comparison methods to prevent timing attacks. |
| static class [KestrunHostManager](./Kestrun/KestrunHostManager) | Provides management functionality for KestrunHost instances, including creation, retrieval, starting, stopping, and destruction. |

## Kestrun.Authentication namespace

| public type | description |
| --- | --- |
| class [ApiKeyAuthenticationOptions](./Kestrun.Authentication/ApiKeyAuthenticationOptions) | Options for API key authentication, including header names, validation, and claims issuance. |
| class [ApiKeyAuthHandler](./Kestrun.Authentication/ApiKeyAuthHandler) | Handles API Key authentication for incoming HTTP requests. |
| enum [ApiKeyChallengeFormat](./Kestrun.Authentication/ApiKeyChallengeFormat) | Specifies the format for API key authentication challenges. |
| record [AuthenticationCodeSettings](./Kestrun.Authentication/AuthenticationCodeSettings) | Represents the settings for authentication code, including language, code, extra imports, and references. |
| class [BasicAuthenticationOptions](./Kestrun.Authentication/BasicAuthenticationOptions) | Options for configuring Basic Authentication in Kestrun. |
| class [BasicAuthHandler](./Kestrun.Authentication/BasicAuthHandler) | Handles Basic Authentication for HTTP requests. |
| interface [IAuthenticationCommonOptions](./Kestrun.Authentication/IAuthenticationCommonOptions) | Defines common options for authentication, including code validation, claim issuance, and claim policy configuration. |
| interface [IAuthHandler](./Kestrun.Authentication/IAuthHandler) | Defines common options for authentication, including code validation, claim issuance, and claim policy configuration. |
| interface [IClaimsCommonOptions](./Kestrun.Authentication/IClaimsCommonOptions) | Defines common options for authentication, including code validation, claim issuance, and claim policy configuration. |
| class [JwtAuthenticationOptions](./Kestrun.Authentication/JwtAuthenticationOptions) | Provides options for JWT authentication, including claim policies and custom claim issuance. |

## Kestrun.Certificates namespace

| public type | description |
| --- | --- |
| static class [CertificateManager](./Kestrun.Certificates/CertificateManager) | Drop-in replacement for Pode’s certificate helpers, powered by Bouncy Castle. |

## Kestrun.Claims namespace

| public type | description |
| --- | --- |
| class [ClaimPolicyBuilder](./Kestrun.Claims/ClaimPolicyBuilder) | Builder for defining claim-based authorization policies. |
| class [ClaimPolicyConfig](./Kestrun.Claims/ClaimPolicyConfig) | A bag of named policies, each backed by a ClaimRule. |
| static class [ClaimPolicyExtensions](./Kestrun.Claims/ClaimPolicyExtensions) | Extension methods for converting ClaimPolicyConfig into ASP.NET Core authorization setup. |
| class [ClaimPolicyPostConfigurer](./Kestrun.Claims/ClaimPolicyPostConfigurer) | Copies [`ClaimPolicyConfig`](./Kestrun.Claims/ClaimPolicyConfig) into AuthorizationOptions after configuration. |
| record [ClaimRule](./Kestrun.Claims/ClaimRule) | Represents one “claim must equal …” rule. |
| static class [KestrunClaimExtensions](./Kestrun.Claims/KestrunClaimExtensions) | Provides extension methods for the KestrunClaim enum. |
| enum [UserIdentityClaim](./Kestrun.Claims/UserIdentityClaim) | Represents the set of claims supported by Kestrun for authentication and authorization purposes. |

## Kestrun.Hosting namespace

| public type | description |
| --- | --- |
| record [KestrunContext](./Kestrun.Hosting/KestrunContext) | Represents the context for a Kestrun request, including the request, response, HTTP context, and host. |
| class [KestrunHost](./Kestrun.Hosting/KestrunHost) | Provides hosting and configuration for the Kestrun application, including service registration, middleware setup, and runspace pool management. |
| static class [KestrunHostAuthExtensions](./Kestrun.Hosting/KestrunHostAuthExtensions) | Provides extension methods for adding authentication and authorization schemes to the Kestrun host. |
| static class [KestrunHostMapExtensions](./Kestrun.Hosting/KestrunHostMapExtensions) | Provides extension methods for mapping routes and handlers to the KestrunHost. |
| static class [KestrunHostRazorExtensions](./Kestrun.Hosting/KestrunHostRazorExtensions) | Provides extension methods for adding PowerShell and Razor Pages to a KestrunHost. |
| static class [KestrunHostScriptValidationExtensions](./Kestrun.Hosting/KestrunHostScriptValidationExtensions) | Provides extension methods for validating C# scripts in the context of a KestrunHost. |
| static class [KestrunHostStaticFilesExtensions](./Kestrun.Hosting/KestrunHostStaticFilesExtensions) | Provides extension methods for configuring static file, default file, favicon, and file server middleware in KestrunHost. |
| static class [KestrunHttpMiddlewareExtensions](./Kestrun.Hosting/KestrunHttpMiddlewareExtensions) | Provides extension methods for configuring common HTTP middleware in Kestrun. |
| class [NoopHostLifetime](./Kestrun.Hosting/NoopHostLifetime) | Minimal IHostLifetime that performs no blocking operations. Useful for scenarios like testing where the host lifecycle is externally managed. |

## Kestrun.Hosting.Options namespace

| public type | description |
| --- | --- |
| static class [KestrelOptionsExtensions](./Kestrun.Hosting.Options/KestrelOptionsExtensions) | Provides extension methods for copying configuration between KestrelServerOptions instances. |
| class [KestrunOptions](./Kestrun.Hosting.Options/KestrunOptions) | Simple options class for configuring Kestrel server settings. |
| class [ListenerOptions](./Kestrun.Hosting.Options/ListenerOptions) | Configuration for an individual Kestrel listener. |
| record [MapRouteOptions](./Kestrun.Hosting.Options/MapRouteOptions) | Options for mapping a route, including pattern, HTTP verbs, script code, authorization, and metadata. |

## Kestrun.Languages namespace

| public type | description |
| --- | --- |
| record [CsGlobals](./Kestrun.Languages/CsGlobals) | Provides global and local variable dictionaries and context for C# delegate execution. |

## Kestrun.Logging namespace

| public type | description |
| --- | --- |
| static class [LoggerConfigurationExtensions](./Kestrun.Logging/LoggerConfigurationExtensions) | Convenience extensions for hooking Serilog loggers into [`LoggerManager`](./Kestrun.Logging/LoggerManager). |
| static class [LoggerExtensions](./Kestrun.Logging/LoggerExtensions) | Sanitized Serilog extensions to strip control chars (including CR/LF) from any string property values before writing the log. |
| static class [LoggerManager](./Kestrun.Logging/LoggerManager) | Manages a collection of named Serilog loggers and their configurations. |

## Kestrun.Logging.Data namespace

| public type | description |
| --- | --- |
| class [ErrorRecordWrapper](./Kestrun.Logging.Data/ErrorRecordWrapper) | Wraps an ErrorRecord object to provide additional logging information. |
| class [InvocationInfoWrapper](./Kestrun.Logging.Data/InvocationInfoWrapper) | Wraps the PowerShell InvocationInfo object and exposes its properties for logging purposes. |

## Kestrun.Logging.Enrichers namespace

| public type | description |
| --- | --- |
| class [ErrorRecordEnricher](./Kestrun.Logging.Enrichers/ErrorRecordEnricher) | Enriches Serilog log events with error record and invocation info from WrapperException. |

## Kestrun.Logging.Enrichers.Extensions namespace

| public type | description |
| --- | --- |
| static class [ErrorRecordEnricherExtensions](./Kestrun.Logging.Enrichers.Extensions/ErrorRecordEnricherExtensions) | Provides extension methods for enriching Serilog logs with error record information. |
| static class [ErrorRecordExtensions](./Kestrun.Logging.Enrichers.Extensions/ErrorRecordExtensions) | Provides extension methods for formatting error records and invocation info as tables. |

## Kestrun.Logging.Exceptions namespace

| public type | description |
| --- | --- |
| class [WrapperException](./Kestrun.Logging.Exceptions/WrapperException) | Represents an exception that wraps another exception and optionally an ErrorRecord. |

## Kestrun.Logging.Sinks namespace

| public type | description |
| --- | --- |
| class [PowerShellSink](./Kestrun.Logging.Sinks/PowerShellSink) | A Serilog sink that formats log events and invokes a callback for PowerShell integration. |

## Kestrun.Logging.Sinks.Extensions namespace

| public type | description |
| --- | --- |
| static class [PowerShellSinkExtensions](./Kestrun.Logging.Sinks.Extensions/PowerShellSinkExtensions) | Provides extension methods for configuring PowerShell sinks in Serilog logging. |

## Kestrun.Logging.Utils.Console namespace

| public type | description |
| --- | --- |
| class [Padding](./Kestrun.Logging.Utils.Console/Padding) | Represents padding values for left and right sides, and provides methods to generate padding strings. |
| class [Table](./Kestrun.Logging.Utils.Console/Table) | Represents a console table for formatted output with optional grid and padding. |

## Kestrun.Logging.Utils.Console.Extensions namespace

| public type | description |
| --- | --- |
| static class [TableExtensions](./Kestrun.Logging.Utils.Console.Extensions/TableExtensions) | Provides extension methods for the [`Table`](./Kestrun.Logging.Utils.Console/Table) class. |

## Kestrun.Middleware namespace

| public type | description |
| --- | --- |
| static class [FaviconMiddlewareExtensions](./Kestrun.Middleware/FaviconMiddlewareExtensions) | Provides extension methods for serving a favicon in ASP.NET Core applications. |
| class [PowerShellRunspaceMiddleware](./Kestrun.Middleware/PowerShellRunspaceMiddleware) | Initializes a new instance of the [`PowerShellRunspaceMiddleware`](./Kestrun.Middleware/PowerShellRunspaceMiddleware) class. |
| static class [PowerShellRunspaceMiddlewareExtensions](./Kestrun.Middleware/PowerShellRunspaceMiddlewareExtensions) | Extension methods for adding PowerShell runspace middleware. |

## Kestrun.Models namespace

| public type | description |
| --- | --- |
| class [ContentDispositionOptions](./Kestrun.Models/ContentDispositionOptions) | Options for Content-Disposition header. |
| enum [ContentDispositionType](./Kestrun.Models/ContentDispositionType) | Specifies the type of Content-Disposition header to use in the HTTP response. |
| class [KestrunRequest](./Kestrun.Models/KestrunRequest) | Represents a request model for Kestrun, containing HTTP method, path, query, headers, body, authorization, cookies, and form data. |
| class [KestrunResponse](./Kestrun.Models/KestrunResponse) | Represents an HTTP response in the Kestrun framework, providing methods to write various content types and manage headers, cookies, and status codes. |

## Kestrun.Razor namespace

| public type | description |
| --- | --- |
| static class [PowerShellRazorPage](./Kestrun.Razor/PowerShellRazorPage) | Provides middleware for enabling PowerShell-backed Razor Pages, allowing execution of a sibling PowerShell script (*.cshtml.ps1) for each Razor view (*.cshtml). |
| class [PwshKestrunModel](./Kestrun.Razor/PwshKestrunModel) | Base PageModel that exposes whatever the sibling PowerShell script placed in `HttpContext.Items["PageModel"]`. |

## Kestrun.Scheduling namespace

| public type | description |
| --- | --- |
| record [JobInfo](./Kestrun.Scheduling/JobInfo) | Represents a scheduled task with its configuration and state. |
| record [ScheduleReport](./Kestrun.Scheduling/ScheduleReport) | Represents a report of scheduled jobs at a specific time. Contains the generation time and a list of job information. This is useful for monitoring and auditing scheduled tasks. |
| class [SchedulerService](./Kestrun.Scheduling/SchedulerService) | Represents a service for managing scheduled tasks. Provides methods to schedule, cancel, pause, resume, and report on tasks. This service is designed to run within a Kestrun application context. It supports both C# and PowerShell jobs, allowing for flexible scheduling options. |

## Kestrun.Scripting namespace

| public type | description |
| --- | --- |
| class [CompilationErrorException](./Kestrun.Scripting/CompilationErrorException) | Exception thrown when C# script compilation fails. Contains detailed diagnostic information about compilation errors. |
| static class [EndpointConventionBuilderLanguageExtensions](./Kestrun.Scripting/EndpointConventionBuilderLanguageExtensions) | Extension methods for IEndpointConventionBuilder to support script language metadata. |
| class [KestrunRunspacePoolManager](./Kestrun.Scripting/KestrunRunspacePoolManager) | Manages a pool of PowerShell runspaces for efficient reuse and resource control. |
| static class [LanguageRuntimeExtensions](./Kestrun.Scripting/LanguageRuntimeExtensions) | Extension methods for IApplicationBuilder to support language-based runtime configuration. |
| static class [RouteHandlerBuilderLanguageExtensions](./Kestrun.Scripting/RouteHandlerBuilderLanguageExtensions) | Extension methods for RouteHandlerBuilder to support script language metadata. |
| enum [ScriptLanguage](./Kestrun.Scripting/ScriptLanguage) | Specifies the supported scripting languages for script execution. |
| class [ScriptLanguageAttribute](./Kestrun.Scripting/ScriptLanguageAttribute) | Attribute to specify the script language for a method or delegate. |

## Kestrun.Security namespace

| public type | description |
| --- | --- |
| enum [JwtAlgorithm](./Kestrun.Security/JwtAlgorithm) | Specifies supported JWT signing algorithms. |
| static class [JwtAlgorithmExtensions](./Kestrun.Security/JwtAlgorithmExtensions) | Provides extension methods for the JwtAlgorithm enum. |
| class [JwtBuilderResult](./Kestrun.Security/JwtBuilderResult) | Represents the result of building a JWT, including the token, key, builder, issue time, and expiration. |
| static class [JwtInspector](./Kestrun.Security/JwtInspector) | Provides methods for inspecting and extracting parameters from JWT tokens. |
| class [JwtParameters](./Kestrun.Security/JwtParameters) | Represents all parameters extracted from a JWT, including header fields, standard properties, and claims. |
| class [JwtTokenBuilder](./Kestrun.Security/JwtTokenBuilder) | Fluent utility to create any flavour of JWS/JWE in one line. |

## Kestrun.SharedState namespace

| public type | description |
| --- | --- |
| static class [SharedStateStore](./Kestrun.SharedState/SharedStateStore) | Thread‑safe, case‑insensitive global key/value store for reference‑type objects. |

## Kestrun.Utilities namespace

| public type | description |
| --- | --- |
| static class [AssemblyAutoLoader](./Kestrun.Utilities/AssemblyAutoLoader) | Registers one or more folders that contain private assemblies and makes sure every DLL in those folders is available to PowerShell / scripts. Call [`PreloadAll`](./Kestrun.Utilities/AssemblyAutoLoader/PreloadAll) **once** at startup (or from PowerShell) and forget about “could not load assembly …” errors. |
| static class [BuildError](./Kestrun.Utilities/BuildError) | Utilities for formatting PowerShell error streams into HTTP responses. |
| static class [CcUtilities](./Kestrun.Utilities/CcUtilities) | Provides utility methods for Kestrun. |
| static class [HostingExtensions](./Kestrun.Utilities/HostingExtensions) | Provides extension methods for hosting Kestrun servers. |
| [Flags] enum [HttpVerb](./Kestrun.Utilities/HttpVerb) | Common HTTP verbs recognized by the framework. |
| static class [HttpVerbExtensions](./Kestrun.Utilities/HttpVerbExtensions) | Extension methods for the [`HttpVerb`](./Kestrun.Utilities/HttpVerb) enum. |
| static class [PowerShellModuleLocator](./Kestrun.Utilities/PowerShellModuleLocator) | Utility class to locate the Kestrun PowerShell module. It searches for the module in both development and production environments. |
| static class [RateLimiterOptionsExtensions](./Kestrun.Utilities/RateLimiterOptionsExtensions) | Provides extension methods for copying rate limiter options and policies. |
| class [ReadOnlyDictionaryAdapter](./Kestrun.Utilities/ReadOnlyDictionaryAdapter) | Adapts a non-generic IDictionary to a read-only dictionary with string keys and nullable object values. |
| static class [SecureStringUtils](./Kestrun.Utilities/SecureStringUtils) | Provides utility methods for working with SecureString and ReadOnlySpan&lt;char&gt;. |
| static class [VariablesMap](./Kestrun.Utilities/VariablesMap) | Provides utility methods for mapping and flattening variables from various sources. |
| static class [XmlUtil](./Kestrun.Utilities/XmlUtil) | Helpers for converting arbitrary objects into XElement instances. |
| static class [YamlHelper](./Kestrun.Utilities/YamlHelper) | Provides helper methods for serializing and deserializing YAML content, with special handling for PowerShell objects. |

<!-- DO NOT EDIT: generated by xmldocmd for Kestrun.dll -->
