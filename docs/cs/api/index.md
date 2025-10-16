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
| [Flags] enum [KestrunApiContext](./global/KestrunApiContext.md) | Specifies the API context in which a Kestrun route or schedule can be executed. |
| class [KestrunRuntimeApiAttribute](./global/KestrunRuntimeApiAttribute.md) | Attribute to specify runtime API context and notes for Kestrun routes or schedules. |

## Kestrun namespace

| public type | description |
| --- | --- |
| static class [FixedTimeEquals](./Kestrun/FixedTimeEquals.md) | Provides constant-time comparison methods to prevent timing attacks. |
| static class [KestrunHostManager](./Kestrun/KestrunHostManager.md) | Provides management functionality for KestrunHost instances, including creation, retrieval, starting, stopping, and destruction. |
| static class [KestrunRuntimeInfo](./Kestrun/KestrunRuntimeInfo.md) | Utility class to expose information about the runtime environment that Kestrun was built for, and to gate features by TFM and runtime. |

## Kestrun.Authentication namespace

| public type | description |
| --- | --- |
| class [ApiKeyAuthenticationOptions](./Kestrun.Authentication/ApiKeyAuthenticationOptions.md) | Options for API key authentication, including header names, validation, and claims issuance. |
| class [ApiKeyAuthHandler](./Kestrun.Authentication/ApiKeyAuthHandler.md) | Handles API Key authentication for incoming HTTP requests. |
| enum [ApiKeyChallengeFormat](./Kestrun.Authentication/ApiKeyChallengeFormat.md) | Specifies the format for API key authentication challenges. |
| record [AuthenticationCodeSettings](./Kestrun.Authentication/AuthenticationCodeSettings.md) | Represents the settings for authentication code, including language, code, extra imports, and references. |
| class [AuthenticationRegistry](./Kestrun.Authentication/AuthenticationRegistry.md) | Registry of authentication options keyed by (schema, type). Stores as base AuthenticationSchemeOptions, with typed helpers. |
| static class [AuthOptionsHelper](./Kestrun.Authentication/AuthOptionsHelper.md) | Helper class to retrieve authentication options from the DI container. |
| class [BasicAuthenticationOptions](./Kestrun.Authentication/BasicAuthenticationOptions.md) | Options for configuring Basic Authentication in Kestrun. |
| class [BasicAuthHandler](./Kestrun.Authentication/BasicAuthHandler.md) | Handles Basic Authentication for HTTP requests. |
| interface [IAuthenticationCommonOptions](./Kestrun.Authentication/IAuthenticationCommonOptions.md) | Defines common options for authentication, including code validation, claim issuance, and claim policy configuration. |
| interface [IAuthHandler](./Kestrun.Authentication/IAuthHandler.md) | Defines common options for authentication, including code validation, claim issuance, and claim policy configuration. |
| interface [IClaimsCommonOptions](./Kestrun.Authentication/IClaimsCommonOptions.md) | Defines common options for authentication, including code validation, claim issuance, and claim policy configuration. |
| class [JwtAuthenticationOptions](./Kestrun.Authentication/JwtAuthenticationOptions.md) | Provides options for JWT authentication, including claim policies and custom claim issuance. |

## Kestrun.Certificates namespace

| public type | description |
| --- | --- |
| static class [CertificateManager](./Kestrun.Certificates/CertificateManager.md) | Drop-in replacement for Pode’s certificate helpers, powered by Bouncy Castle. |
| record [CsrResult](./Kestrun.Certificates/CsrResult.md) | Represents the result of creating a Certificate Signing Request (CSR), including the PEM-encoded CSR and the private key. |

## Kestrun.Claims namespace

| public type | description |
| --- | --- |
| class [ClaimPolicyBuilder](./Kestrun.Claims/ClaimPolicyBuilder.md) | Builder for defining claim-based authorization policies. |
| class [ClaimPolicyConfig](./Kestrun.Claims/ClaimPolicyConfig.md) | A bag of named policies, each backed by a ClaimRule. |
| static class [ClaimPolicyExtensions](./Kestrun.Claims/ClaimPolicyExtensions.md) | Extension methods for converting ClaimPolicyConfig into ASP.NET Core authorization setup. |
| class [ClaimPolicyPostConfigurer](./Kestrun.Claims/ClaimPolicyPostConfigurer.md) | Copies [`ClaimPolicyConfig`](./Kestrun.Claims/ClaimPolicyConfig.md) into AuthorizationOptions after configuration. |
| record [ClaimRule](./Kestrun.Claims/ClaimRule.md) | Represents one claim must equal rule. |
| static class [KestrunClaimExtensions](./Kestrun.Claims/KestrunClaimExtensions.md) | Provides extension methods for the KestrunClaim enum. |
| enum [UserIdentityClaim](./Kestrun.Claims/UserIdentityClaim.md) | Represents the set of claims supported by Kestrun for authentication and authorization purposes. |

## Kestrun.Client namespace

| public type | description |
| --- | --- |
| static class [KrHttpClientFactory](./Kestrun.Client/KrHttpClientFactory.md) | Factory methods to create HttpClient instances for different transport types. |
| class [KrHttpClientOptions](./Kestrun.Client/KrHttpClientOptions.md) | Extra options to shape HttpClient behavior. |
| static class [KrHttpDownloads](./Kestrun.Client/KrHttpDownloads.md) | Helper methods for common HTTP download scenarios. |

## Kestrun.Health namespace

| public type | description |
| --- | --- |
| class [DiskSpaceProbe](./Kestrun.Health/DiskSpaceProbe.md) | Probe that reports free disk space for a target drive / mount point. |
| enum [HealthEndpointContentType](./Kestrun.Health/HealthEndpointContentType.md) | Supported response content types for the built-in health endpoint. |
| class [HealthEndpointOptions](./Kestrun.Health/HealthEndpointOptions.md) | Options controlling the built-in health endpoint exposed by [`KestrunHost`](./Kestrun.Hosting/KestrunHost.md). |
| record [HealthProbeEntry](./Kestrun.Health/HealthProbeEntry.md) | Represents the result of a single probe execution. |
| record [HealthReport](./Kestrun.Health/HealthReport.md) | Represents an aggregated health report produced by HealthProbeRunner. |
| static class [HealthReportTextFormatter](./Kestrun.Health/HealthReportTextFormatter.md) | Produces a concise, human-readable text representation of a [`HealthReport`](./Kestrun.Health/HealthReport.md). Intended for terminals, logs, or lightweight probes where structured formats (JSON/YAML/XML) are unnecessary. |
| record [HealthSummary](./Kestrun.Health/HealthSummary.md) | Summary counts of probe results grouped by [`ProbeStatus`](./Kestrun.Health/ProbeStatus.md). |
| class [HttpProbe](./Kestrun.Health/HttpProbe.md) | A health probe that performs an HTTP GET request to a specified URL and interprets the JSON response according to the health probe contract. |
| interface [IProbe](./Kestrun.Health/IProbe.md) | Defines a health probe that can be checked asynchronously. |
| abstract class [Probe](./Kestrun.Health/Probe.md) | Base class for health probes. |
| record [ProbeResult](./Kestrun.Health/ProbeResult.md) | Result of a health probe check. |
| enum [ProbeStatus](./Kestrun.Health/ProbeStatus.md) | Health probe status enumeration. |
| static class [ProbeStatusLabels](./Kestrun.Health/ProbeStatusLabels.md) | Provides string constants for well-known probe statuses that dynamic scripts may return. These values are used when converting script outputs into ProbeResult statuses. |
| class [ProcessProbe](./Kestrun.Health/ProcessProbe.md) | A health probe that runs an external process and interprets its output. |

## Kestrun.Hosting namespace

| public type | description |
| --- | --- |
| class [KestrunHost](./Kestrun.Hosting/KestrunHost.md) | Provides hosting and configuration for the Kestrun application, including service registration, middleware setup, and runspace pool management. |
| static class [KestrunHostAuthnExtensions](./Kestrun.Hosting/KestrunHostAuthnExtensions.md) | Provides extension methods for adding authentication schemes to the Kestrun host. |
| static class [KestrunHostHealthExtensions](./Kestrun.Hosting/KestrunHostHealthExtensions.md) | Adds health-check specific helpers to [`KestrunHost`](./Kestrun.Hosting/KestrunHost.md). |
| static class [KestrunHostMapExtensions](./Kestrun.Hosting/KestrunHostMapExtensions.md) | Provides extension methods for mapping routes and handlers to the KestrunHost. |
| static class [KestrunHostRazorExtensions](./Kestrun.Hosting/KestrunHostRazorExtensions.md) | Provides extension methods for adding PowerShell and Razor Pages to a KestrunHost. |
| static class [KestrunHostScriptValidationExtensions](./Kestrun.Hosting/KestrunHostScriptValidationExtensions.md) | Provides extension methods for validating C# scripts in the context of a KestrunHost. |
| static class [KestrunHostSessionExtensions](./Kestrun.Hosting/KestrunHostSessionExtensions.md) | Provides extension methods for configuring session state and distributed cache in Kestrun. |
| static class [KestrunHostSignalRExtensions](./Kestrun.Hosting/KestrunHostSignalRExtensions.md) | Extension methods for KestrunHost to support SignalR real-time broadcasting. |
| static class [KestrunHostStaticFilesExtensions](./Kestrun.Hosting/KestrunHostStaticFilesExtensions.md) | Provides extension methods for configuring static file, default file, favicon, and file server middleware in KestrunHost. |
| static class [KestrunHttpMiddlewareExtensions](./Kestrun.Hosting/KestrunHttpMiddlewareExtensions.md) | Provides extension methods for configuring common HTTP middleware in Kestrun. |
| class [NoopHostLifetime](./Kestrun.Hosting/NoopHostLifetime.md) | Minimal IHostLifetime that performs no blocking operations. Useful for scenarios like testing where the host lifecycle is externally managed. |

## Kestrun.Hosting.Compression namespace

| public type | description |
| --- | --- |
| static class [KestrunCompressionServiceCollectionExtensions](./Kestrun.Hosting.Compression/KestrunCompressionServiceCollectionExtensions.md) | Extension methods to add Kestrun compression services. |
| class [KestrunResponseCompressionProvider](./Kestrun.Hosting.Compression/KestrunResponseCompressionProvider.md) | A response compression provider that respects endpoint metadata to disable compression. Wraps the built-in ResponseCompressionProvider. |

## Kestrun.Hosting.Options namespace

| public type | description |
| --- | --- |
| class [ExceptionOptions](./Kestrun.Hosting.Options/ExceptionOptions.md) | Options for configuring Kestrun-style exception handling middleware. |
| static class [KestrelOptionsExtensions](./Kestrun.Hosting.Options/KestrelOptionsExtensions.md) | Provides extension methods for copying configuration between KestrelServerOptions instances. |
| class [KestrunOptions](./Kestrun.Hosting.Options/KestrunOptions.md) | Simple options class for configuring Kestrel server settings. |
| record [LanguageOptions](./Kestrun.Hosting.Options/LanguageOptions.md) | Base options for specifying script code and language settings. |
| class [ListenerOptions](./Kestrun.Hosting.Options/ListenerOptions.md) | Configuration for an individual Kestrel listener. |
| record [MapRouteOptions](./Kestrun.Hosting.Options/MapRouteOptions.md) | Options for mapping a route, including pattern, HTTP verbs, script code, authorization, and metadata. |
| record [OpenAPIMetadata](./Kestrun.Hosting.Options/OpenAPIMetadata.md) | Metadata for OpenAPI documentation related to the route. |
| class [StatusCodeOptions](./Kestrun.Hosting.Options/StatusCodeOptions.md) | Options for configuring status code pages middleware. |

## Kestrun.Jwt namespace

| public type | description |
| --- | --- |
| enum [JwtAlgorithm](./Kestrun.Jwt/JwtAlgorithm.md) | Specifies supported JWT signing algorithms. |
| static class [JwtAlgorithmExtensions](./Kestrun.Jwt/JwtAlgorithmExtensions.md) | Provides extension methods for the JwtAlgorithm enum. |
| class [JwtBuilderResult](./Kestrun.Jwt/JwtBuilderResult.md) | Represents the result of building a JWT, including the token, key, builder, issue time, and expiration. |
| static class [JwtInspector](./Kestrun.Jwt/JwtInspector.md) | Provides methods for inspecting and extracting parameters from JWT tokens. |
| class [JwtParameters](./Kestrun.Jwt/JwtParameters.md) | Represents all parameters extracted from a JWT, including header fields, standard properties, and claims. |
| class [JwtTokenBuilder](./Kestrun.Jwt/JwtTokenBuilder.md) | Fluent utility to create any flavour of JWS/JWE in one line. |

## Kestrun.Languages namespace

| public type | description |
| --- | --- |
| record [CsGlobals](./Kestrun.Languages/CsGlobals.md) | Provides global and local variable dictionaries and context for C# delegate execution. |

## Kestrun.Logging namespace

| public type | description |
| --- | --- |
| static class [LoggerConfigurationExtensions](./Kestrun.Logging/LoggerConfigurationExtensions.md) | Convenience extensions for hooking Serilog loggers into [`LoggerManager`](./Kestrun.Logging/LoggerManager.md). |
| static class [LoggerExtensions](./Kestrun.Logging/LoggerExtensions.md) | Sanitized Serilog extensions to strip control chars (including CR/LF) from any string property values before writing the log. |
| static class [LoggerManager](./Kestrun.Logging/LoggerManager.md) | Manages a collection of named Serilog loggers and their configurations. |

## Kestrun.Logging.Data namespace

| public type | description |
| --- | --- |
| class [ErrorRecordWrapper](./Kestrun.Logging.Data/ErrorRecordWrapper.md) | Wraps an ErrorRecord object to provide additional logging information. |
| class [InvocationInfoWrapper](./Kestrun.Logging.Data/InvocationInfoWrapper.md) | Wraps the PowerShell InvocationInfo object and exposes its properties for logging purposes. |

## Kestrun.Logging.Enrichers namespace

| public type | description |
| --- | --- |
| class [ErrorRecordEnricher](./Kestrun.Logging.Enrichers/ErrorRecordEnricher.md) | Enriches Serilog log events with error record and invocation info from WrapperException. |

## Kestrun.Logging.Enrichers.Extensions namespace

| public type | description |
| --- | --- |
| static class [ErrorRecordEnricherExtensions](./Kestrun.Logging.Enrichers.Extensions/ErrorRecordEnricherExtensions.md) | Provides extension methods for enriching Serilog logs with error record information. |
| static class [ErrorRecordExtensions](./Kestrun.Logging.Enrichers.Extensions/ErrorRecordExtensions.md) | Provides extension methods for formatting error records and invocation info as tables. |

## Kestrun.Logging.Exceptions namespace

| public type | description |
| --- | --- |
| class [WrapperException](./Kestrun.Logging.Exceptions/WrapperException.md) | Represents an exception that wraps another exception and optionally an ErrorRecord. |

## Kestrun.Logging.Sinks namespace

| public type | description |
| --- | --- |
| class [PowerShellSink](./Kestrun.Logging.Sinks/PowerShellSink.md) | A Serilog sink that formats log events and invokes a callback for PowerShell integration. |

## Kestrun.Logging.Sinks.Extensions namespace

| public type | description |
| --- | --- |
| static class [PowerShellSinkExtensions](./Kestrun.Logging.Sinks.Extensions/PowerShellSinkExtensions.md) | Provides extension methods for configuring PowerShell sinks in Serilog logging. |

## Kestrun.Logging.Utils.Console namespace

| public type | description |
| --- | --- |
| class [Padding](./Kestrun.Logging.Utils.Console/Padding.md) | Represents padding values for left and right sides, and provides methods to generate padding strings. |
| class [Table](./Kestrun.Logging.Utils.Console/Table.md) | Represents a console table for formatted output with optional grid and padding. |

## Kestrun.Logging.Utils.Console.Extensions namespace

| public type | description |
| --- | --- |
| static class [TableExtensions](./Kestrun.Logging.Utils.Console.Extensions/TableExtensions.md) | Provides extension methods for the [`Table`](./Kestrun.Logging.Utils.Console/Table.md) class. |

## Kestrun.Middleware namespace

| public type | description |
| --- | --- |
| class [CommonAccessLogMiddleware](./Kestrun.Middleware/CommonAccessLogMiddleware.md) | ASP.NET Core middleware that emits Apache style common access log entries using Serilog. |
| class [CommonAccessLogOptions](./Kestrun.Middleware/CommonAccessLogOptions.md) | Options controlling the behaviour of the [`CommonAccessLogMiddleware`](./Kestrun.Middleware/CommonAccessLogMiddleware.md). |
| static class [FaviconMiddlewareExtensions](./Kestrun.Middleware/FaviconMiddlewareExtensions.md) | Provides extension methods for serving a favicon in ASP.NET Core applications. |
| class [PowerShellRunspaceMiddleware](./Kestrun.Middleware/PowerShellRunspaceMiddleware.md) | Initializes a new instance of the [`PowerShellRunspaceMiddleware`](./Kestrun.Middleware/PowerShellRunspaceMiddleware.md) class. |
| static class [PowerShellRunspaceMiddlewareExtensions](./Kestrun.Middleware/PowerShellRunspaceMiddlewareExtensions.md) | Extension methods for adding PowerShell runspace middleware. |
| static class [StatusCodePageExtensions](./Kestrun.Middleware/StatusCodePageExtensions.md) | Extension methods for adding status code pages middleware. |

## Kestrun.Models namespace

| public type | description |
| --- | --- |
| class [ContentDispositionOptions](./Kestrun.Models/ContentDispositionOptions.md) | Options for Content-Disposition header. |
| enum [ContentDispositionType](./Kestrun.Models/ContentDispositionType.md) | Specifies the type of Content-Disposition header to use in the HTTP response. |
| record [KestrunContext](./Kestrun.Models/KestrunContext.md) | Represents the context for a Kestrun request, including the request, response, HTTP context, and host. |
| class [KestrunRequest](./Kestrun.Models/KestrunRequest.md) | Represents a request model for Kestrun, containing HTTP method, path, query, headers, body, authorization, cookies, and form data. |
| class [KestrunResponse](./Kestrun.Models/KestrunResponse.md) | Represents an HTTP response in the Kestrun framework, providing methods to write various content types and manage headers, cookies, and status codes. |

## Kestrun.Razor namespace

| public type | description |
| --- | --- |
| static class [PowerShellRazorPage](./Kestrun.Razor/PowerShellRazorPage.md) | Provides middleware for enabling PowerShell-backed Razor Pages, allowing execution of a sibling PowerShell script (*.cshtml.ps1) for each Razor view (*.cshtml). |
| class [PwshKestrunModel](./Kestrun.Razor/PwshKestrunModel.md) | Base PageModel that exposes whatever the sibling PowerShell script placed in `HttpContext.Items["PageModel"]`. |

## Kestrun.Runtime namespace

| public type | description |
| --- | --- |
| static class [EnvironmentHelper](./Kestrun.Runtime/EnvironmentHelper.md) | Helpers for determining the current environment name. |
| static class [VariablesMap](./Kestrun.Runtime/VariablesMap.md) | Helper class to map common request and server properties, as well as shared state variables, into a dictionary. |

## Kestrun.Scheduling namespace

| public type | description |
| --- | --- |
| record [JobInfo](./Kestrun.Scheduling/JobInfo.md) | Represents a scheduled task with its configuration and state. |
| record [ScheduleReport](./Kestrun.Scheduling/ScheduleReport.md) | Represents a report of scheduled jobs at a specific time. Contains the generation time and a list of job information. This is useful for monitoring and auditing scheduled tasks. |
| class [SchedulerService](./Kestrun.Scheduling/SchedulerService.md) | Represents a service for managing scheduled tasks. Provides methods to schedule, cancel, pause, resume, and report on tasks. This service is designed to run within a Kestrun application context. It supports both C# and PowerShell jobs, allowing for flexible scheduling options. |

## Kestrun.Scripting namespace

| public type | description |
| --- | --- |
| class [CompilationErrorException](./Kestrun.Scripting/CompilationErrorException.md) | Exception thrown when C# script compilation fails. Contains detailed diagnostic information about compilation errors. |
| class [KestrunRunspacePoolManager](./Kestrun.Scripting/KestrunRunspacePoolManager.md) | Manages a pool of PowerShell runspaces for efficient reuse and resource control. |
| static class [LanguageRuntimeExtensions](./Kestrun.Scripting/LanguageRuntimeExtensions.md) | Extension methods for IApplicationBuilder to support language-based runtime configuration. |
| static class [RouteHandlerBuilderLanguageExtensions](./Kestrun.Scripting/RouteHandlerBuilderLanguageExtensions.md) | Extension methods for RouteHandlerBuilder to support script language metadata. |
| enum [ScriptLanguage](./Kestrun.Scripting/ScriptLanguage.md) | Specifies the supported scripting languages for script execution. |
| class [ScriptLanguageAttribute](./Kestrun.Scripting/ScriptLanguageAttribute.md) | Attribute to specify the script language for a method or delegate. |

## Kestrun.SharedState namespace

| public type | description |
| --- | --- |
| static class [SharedStateStore](./Kestrun.SharedState/SharedStateStore.md) | Thread‑safe, case‑insensitive global key/value store for reference‑type objects. |

## Kestrun.SignalR namespace

| public type | description |
| --- | --- |
| interface [IConnectionTracker](./Kestrun.SignalR/IConnectionTracker.md) | Tracks connected SignalR clients for the Kestrun hub. |
| class [InMemoryConnectionTracker](./Kestrun.SignalR/InMemoryConnectionTracker.md) | In-memory thread-safe implementation of [`IConnectionTracker`](./Kestrun.SignalR/IConnectionTracker.md). |
| interface [IRealtimeBroadcaster](./Kestrun.SignalR/IRealtimeBroadcaster.md) | Provides an interface for broadcasting real-time messages to connected SignalR clients. |
| class [KestrunHub](./Kestrun.SignalR/KestrunHub.md) | Default SignalR hub for Kestrun providing real-time communication capabilities. Clients can connect to this hub to receive log messages, events, and other real-time updates. |
| class [RealtimeBroadcaster](./Kestrun.SignalR/RealtimeBroadcaster.md) | Default implementation of [`IRealtimeBroadcaster`](./Kestrun.SignalR/IRealtimeBroadcaster.md) that broadcasts messages via SignalR. |

## Kestrun.Tasks namespace

| public type | description |
| --- | --- |
| class [KestrunTask](./Kestrun.Tasks/KestrunTask.md) | Represents a single-shot task execution with its current state and telemetry. |
| class [KestrunTaskService](./Kestrun.Tasks/KestrunTaskService.md) | Service to run ad-hoc Kestrun tasks in PowerShell, C#, or VB.NET, with status, result, and cancellation. |
| record [KrTask](./Kestrun.Tasks/KrTask.md) | Basic information about a task for listing purposes. |
| class [ProgressiveKestrunTaskState](./Kestrun.Tasks/ProgressiveKestrunTaskState.md) | Represents the progress state of a task. |
| enum [TaskState](./Kestrun.Tasks/TaskState.md) | Represents the lifecycle state of a KestrunTask. |

## Kestrun.TBuilder namespace

| public type | description |
| --- | --- |
| static class [EndpointConventionBuilderLanguageExtensions](./Kestrun.TBuilder/EndpointConventionBuilderLanguageExtensions.md) | Extension methods for IEndpointConventionBuilder to support script language metadata. |
| static class [EndpointDisablingCompressionExtensions](./Kestrun.TBuilder/EndpointDisablingCompressionExtensions.md) | Extension methods for IEndpointConventionBuilder to support disabling compression metadata. |

## Kestrun.Utilities namespace

| public type | description |
| --- | --- |
| static class [AssemblyAutoLoader](./Kestrun.Utilities/AssemblyAutoLoader.md) | Registers one or more folders that contain private assemblies and makes sure every DLL in those folders is available to PowerShell / scripts. Call [`PreloadAll`](./Kestrun.Utilities/AssemblyAutoLoader/PreloadAll.md) **once** at startup (or from PowerShell) and forget about “could not load assembly …” errors. |
| static class [BuildError](./Kestrun.Utilities/BuildError.md) | Utilities for formatting PowerShell error streams into HTTP responses. |
| static class [CcUtilities](./Kestrun.Utilities/CcUtilities.md) | Provides utility methods for Kestrun. |
| static class [HostingExtensions](./Kestrun.Utilities/HostingExtensions.md) | Provides extension methods for hosting Kestrun servers. |
| [Flags] enum [HttpVerb](./Kestrun.Utilities/HttpVerb.md) | Common HTTP verbs recognized by the framework. |
| static class [HttpVerbExtensions](./Kestrun.Utilities/HttpVerbExtensions.md) | Extension methods for the [`HttpVerb`](./Kestrun.Utilities/HttpVerb.md) enum. |
| static class [PowerShellModuleLocator](./Kestrun.Utilities/PowerShellModuleLocator.md) | Utility class to locate the Kestrun PowerShell module. It searches for the module in both development and production environments. |
| static class [RateLimiterOptionsExtensions](./Kestrun.Utilities/RateLimiterOptionsExtensions.md) | Provides extension methods for copying rate limiter options and policies. |
| class [ReadOnlyDictionaryAdapter](./Kestrun.Utilities/ReadOnlyDictionaryAdapter.md) | Adapts a non-generic IDictionary to a read-only dictionary with string keys and nullable object values. |
| static class [SecureStringUtils](./Kestrun.Utilities/SecureStringUtils.md) | Provides utility methods for working with SecureString and ReadOnlySpan&lt;char&gt;. |
| static class [XmlHelper](./Kestrun.Utilities/XmlHelper.md) | Helpers for converting arbitrary objects into XElement instances. |

## Kestrun.Utilities.Json namespace

| public type | description |
| --- | --- |
| static class [PayloadSanitizer](./Kestrun.Utilities.Json/PayloadSanitizer.md) | Utilities to sanitize arbitrary payloads (especially PowerShell objects) into JSON-friendly shapes for System.Text.Json/SignalR serialization without reference cycles. |

## Kestrun.Utilities.Yaml namespace

| public type | description |
| --- | --- |
| class [BigIntegerTypeConverter](./Kestrun.Utilities.Yaml/BigIntegerTypeConverter.md) | YAML type converter for BigInteger |
| class [BuilderUtils](./Kestrun.Utilities.Yaml/BuilderUtils.md) | Utility class for building YAML serializers with common settings |
| class [FlowStyleAllEmitter](./Kestrun.Utilities.Yaml/FlowStyleAllEmitter.md) | YAML emitter that forces all mappings and sequences to use flow style |
| class [FlowStyleSequenceEmitter](./Kestrun.Utilities.Yaml/FlowStyleSequenceEmitter.md) | YAML emitter that forces sequences to use flow style |
| class [IDictionaryTypeConverter](./Kestrun.Utilities.Yaml/IDictionaryTypeConverter.md) | YAML type converter for IDictionary types |
| class [NullValueGraphVisitor](./Kestrun.Utilities.Yaml/NullValueGraphVisitor.md) | YAML object graph visitor that omits null values |
| class [PSObjectTypeConverter](./Kestrun.Utilities.Yaml/PSObjectTypeConverter.md) | YAML type converter for PSObject types |
| [Flags] enum [SerializationOptions](./Kestrun.Utilities.Yaml/SerializationOptions.md) | Options for YAML serialization |
| class [StringQuotingEmitter](./Kestrun.Utilities.Yaml/StringQuotingEmitter.md) | YAML emitter that quotes strings that might be misinterpreted as other types |
| static class [YamlHelper](./Kestrun.Utilities.Yaml/YamlHelper.md) | Provides helper methods for serializing and deserializing YAML content, with special handling for PowerShell objects. |
| static class [YamlLoader](./Kestrun.Utilities.Yaml/YamlLoader.md) | Utility class for loading and parsing YAML documents |
| static class [YamlSerializerFactory](./Kestrun.Utilities.Yaml/YamlSerializerFactory.md) | Factory for creating YamlDotNet serializers with specified options |
| static class [YamlTypeConverter](./Kestrun.Utilities.Yaml/YamlTypeConverter.md) | Utility class for converting YAML nodes to appropriate .NET types |

<!-- DO NOT EDIT: generated by xmldocmd for Kestrun.dll -->
