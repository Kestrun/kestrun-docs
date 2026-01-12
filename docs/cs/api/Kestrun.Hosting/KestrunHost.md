---
layout: default
title: "KestrunHost class"
parent: "Kestrun.Hosting"
grand_parent: "C# API"
---
# KestrunHost class

Provides hosting and configuration for the Kestrun application, including service registration, middleware setup, and runspace pool management.

Adds health-check specific helpers to [`KestrunHost`](./KestrunHost).

Provides extension methods for adding PowerShell and Razor Pages to a Kestrun

SSE broadcast extensions

Provides methods for configuring static file, default file, favicon, and file server middleware in Kestrun

```csharp
public class KestrunHost : IDisposable
```

## Public Members

| name | description |
| --- | --- |
| [KestrunHost](KestrunHost/KestrunHost)(…) | Initializes a new instance of the [`KestrunHost`](./KestrunHost) class with the specified application name, root directory, and optional module paths. (3 constructors) |
| [AntiforgeryOptions](KestrunHost/AntiforgeryOptions) { get; set; } | Gets the antiforgery options for configuring antiforgery token generation and validation. |
| [ApplicationName](KestrunHost/ApplicationName) { get; } | Gets the application name for the Kestrun host. |
| [ComponentAnnotations](KestrunHost/ComponentAnnotations) { get; } | Gets the scanned OpenAPI component annotations from PowerShell scripts. |
| [CorsPolicyDefined](KestrunHost/CorsPolicyDefined) { get; } | Gets or sets a value indicating whether CORS (Cross-Origin Resource Sharing) is enabled. |
| [DefaultCacheControl](KestrunHost/DefaultCacheControl) { get; } | Gets or sets the default cache control settings for HTTP responses. |
| [DefaultHost](KestrunHost/DefaultHost) { get; } | Gets or sets a value indicating whether this instance is the default Kestrun host. |
| [DefinedCorsPolicyNames](KestrunHost/DefinedCorsPolicyNames) { get; } | The list of CORS policy names that have been defined in the KestrunHost instance. |
| [ExceptionOptions](KestrunHost/ExceptionOptions) { get; set; } | Gets or sets the exception options for configuring exception handling. |
| [ForwardedHeaderOptions](KestrunHost/ForwardedHeaderOptions) { get; set; } | Gets or sets the forwarded headers options for configuring forwarded headers handling. |
| [IsConfigured](KestrunHost/IsConfigured) { get; } | Indicates whether the Kestrun host configuration has been applied. |
| [IsRunning](KestrunHost/IsRunning) { get; } | Determines whether the Kestrun web application is currently running. |
| [KestrunRoot](KestrunHost/KestrunRoot) { get; } | Gets the root directory path for the Kestrun application. |
| [Logger](KestrunHost/Logger) { get; } | Gets the Serilog logger instance used by the Kestrun host. |
| [ModulePaths](KestrunHost/ModulePaths) { get; } | Gets the collection of module paths to be loaded by the Kestrun host. |
| [OpenApiDocumentDescriptor](KestrunHost/OpenApiDocumentDescriptor) { get; } | Gets the OpenAPI document descriptor for configuring OpenAPI generation. |
| [OpenApiDocumentIds](KestrunHost/OpenApiDocumentIds) { get; } | Gets the IDs of all OpenAPI documents configured in the Kestrun host. |
| [Options](KestrunHost/Options) { get; } | Gets the configuration options for the Kestrun host. |
| [PowershellMiddlewareEnabled](KestrunHost/PowershellMiddlewareEnabled) { get; set; } | Gets the shared state manager for managing shared data across requests and sessions. |
| [RegisteredAuthentications](KestrunHost/RegisteredAuthentications) { get; } | Gets the registered authentication schemes in the Kestrun host. |
| [RegisteredRoutes](KestrunHost/RegisteredRoutes) { get; } | Gets the registered routes in the Kestrun host. |
| [RouteGroupStack](KestrunHost/RouteGroupStack) { get; } | Gets the stack used for managing route groups in the Kestrun host. |
| [Scheduler](KestrunHost/Scheduler) { get; } | Gets the scheduler service used for managing scheduled tasks in the Kestrun host. Initialized in ConfigureServices via AddScheduler() |
| [SharedState](KestrunHost/SharedState) { get; } | Gets the shared state store for managing shared data across requests and sessions. |
| [StartTime](KestrunHost/StartTime) { get; } | Gets the timestamp when the Kestrun host was started. |
| [StatusCodeOptions](KestrunHost/StatusCodeOptions) { get; set; } | Gets or sets the status code options for configuring status code pages. |
| [StopTime](KestrunHost/StopTime) { get; } | Gets the timestamp when the Kestrun host was stopped. |
| [Tasks](KestrunHost/Tasks) { get; } | Gets the ad-hoc task service used for running one-off tasks (PowerShell, C#, VB.NET). Initialized via AddTasks() |
| [Uptime](KestrunHost/Uptime) { get; } | Gets the uptime duration of the Kestrun host. While running (no StopTime yet), this returns DateTime.UtcNow - StartTime. After stopping, it returns StopTime - StartTime. If StartTime is not set, returns null. |
| [AddCallbacksAutomation](KestrunHost/AddCallbacksAutomation)(…) | Adds callback automation middleware to the Kestrun host. |
| [AddControllers](KestrunHost/AddControllers)(…) | Adds MVC / API controllers to the application. |
| [AddDefaultFiles](KestrunHost/AddDefaultFiles)(…) | Adds default files middleware to the application. This middleware serves default files like index.html when a directory is requested. (2 methods) |
| [AddDirectoryBrowser](KestrunHost/AddDirectoryBrowser)(…) | Adds a directory browser middleware to the application. This middleware enables directory browsing for a specified request path. |
| [AddFavicon](KestrunHost/AddFavicon)(…) | Adds a favicon middleware to the application. |
| [AddFeature](KestrunHost/AddFeature)(…) | Adds a feature configuration action to the feature queue. This action will be executed when the features are applied. |
| [AddFileServer](KestrunHost/AddFileServer)(…) | Adds a file server middleware to the application. (2 methods) |
| [AddHealthEndpoint](KestrunHost/AddHealthEndpoint)(…) | Registers a GET endpoint (default `/health`) that aggregates the state of all registered probes. (2 methods) |
| [AddPowerShellRazorPages](KestrunHost/AddPowerShellRazorPages)() | Adds PowerShell Razor Pages to the application with default configuration and no route prefix. |
| [AddPowerShellRazorPages](KestrunHost/AddPowerShellRazorPages)(…) | Adds PowerShell Razor Pages to the application. This middleware allows you to serve Razor Pages using PowerShell scripts. (5 methods) |
| [AddPowerShellRuntime](KestrunHost/AddPowerShellRuntime)(…) | Adds a PowerShell runtime to the application. This middleware allows you to execute PowerShell scripts in response to HTTP requests. |
| [AddProbe](KestrunHost/AddProbe)(…) | Registers the provided [`IProbe`](../Kestrun.Health/IProbe) instance with the host. (3 methods) |
| [AddRazorPages](KestrunHost/AddRazorPages)(…) | Adds Razor Pages to the application. (2 methods) |
| [AddScheduling](KestrunHost/AddScheduling)(…) | Adds a scheduling feature to the Kestrun host, optionally specifying the maximum number of runspaces for the scheduler. |
| [AddService](KestrunHost/AddService)(…) | Adds a service configuration action to the service queue. This action will be executed when the services are built. |
| [AddSignalR](KestrunHost/AddSignalR)(…) | Adds the default SignalR hub (KestrunHub) to the application at the specified path. |
| [AddSignalR&lt;T&gt;](KestrunHost/AddSignalR)(…) | Adds a SignalR hub to the application at the specified path. |
| [AddSseBroadcast](KestrunHost/AddSseBroadcast)(…) | Adds an SSE broadcast endpoint that keeps a connection open and streams broadcast events. |
| [AddStaticFiles](KestrunHost/AddStaticFiles)(…) | Adds static files to the application. This overload allows you to specify configuration options. (2 methods) |
| [AddTasks](KestrunHost/AddTasks)(…) | Adds the Tasks feature to run ad-hoc scripts with status/result/cancellation. |
| [BroadcastSseEventAsync](KestrunHost/BroadcastSseEventAsync)(…) | Broadcasts an SSE event to all connected clients. |
| [Build](KestrunHost/Build)() | Builds the WebApplication. This method applies all queued services and middleware stages, and returns the built WebApplication instance. |
| [ConfigureListener](KestrunHost/ConfigureListener)(…) | Configures a listener for the Kestrun host with the specified port, optional IP address, certificate, protocols, and connection logging. (5 methods) |
| [CreateRunspacePool](KestrunHost/CreateRunspacePool)(…) | Creates and returns a new [`KestrunRunspacePoolManager`](../Kestrun.Scripting/KestrunRunspacePoolManager) instance with the specified maximum number of runspaces. |
| [Dispose](KestrunHost/Dispose)() | Releases all resources used by the [`KestrunHost`](./KestrunHost) instance. |
| [EnableConfiguration](KestrunHost/EnableConfiguration)(…) | Applies the configured options to the Kestrel server and initializes the runspace pool. |
| [GetOrCreateOpenApiDocument](KestrunHost/GetOrCreateOpenApiDocument)(…) | Gets the OpenAPI document descriptor for the specified document ID. (2 methods) |
| [GetSseConnectedClientCount](KestrunHost/GetSseConnectedClientCount)() | Gets the number of currently connected SSE broadcast clients, if available. |
| [IsServiceRegistered](KestrunHost/IsServiceRegistered)(…) | Returns true if the specified service type has already been registered in the IServiceCollection. |
| [IsServiceRegistered&lt;TService&gt;](KestrunHost/IsServiceRegistered)() | Generic convenience overload. |
| [Run](KestrunHost/Run)() | Runs the Kestrun web application, applying configuration and starting the server. |
| [StartAsync](KestrunHost/StartAsync)(…) | Starts the Kestrun web application asynchronously. |
| [Stop](KestrunHost/Stop)() | Initiates a graceful shutdown of the Kestrun web application. |
| [StopAsync](KestrunHost/StopAsync)(…) | Stops the Kestrun web application asynchronously. |
| [Use](KestrunHost/Use)(…) | Adds a middleware stage to the application pipeline. |

## See Also

* namespace [Kestrun.Hosting](../Kestrun)
* [KestrunHost.cs](https://github.com/Kestrun/Kestrun/tree/main/src/CSharp/Kestrun/Hosting/KestrunHost.cs)

<!-- DO NOT EDIT: generated by xmldo for Kestrun.dll -->
