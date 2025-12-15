---
layout: default
title: "KestrunHost class"
parent: "Kestrun.Hosting"
grand_parent: "C# API"
---
# KestrunHost class

Provides hosting and configuration for the Kestrun application, including service registration, middleware setup, and runspace pool management.

```csharp
public class KestrunHost : IDisposable
```

## Public Members

| name | description |
| --- | --- |
| [KestrunHost](KestrunHost/KestrunHost)(…) | Initializes a new instance of the [`KestrunHost`](./KestrunHost) class with the specified application name, root directory, and optional module paths. (3 constructors) |
| [ApplicationName](KestrunHost/ApplicationName) { get; } | Gets the application name for the Kestrun host. |
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
| [AddControllers](KestrunHost/AddControllers)(…) | Adds MVC / API controllers to the application. |
| [AddFeature](KestrunHost/AddFeature)(…) | Adds a feature configuration action to the feature queue. This action will be executed when the features are applied. |
| [AddPowerShellRuntime](KestrunHost/AddPowerShellRuntime)(…) | Adds a PowerShell runtime to the application. This middleware allows you to execute PowerShell scripts in response to HTTP requests. |
| [AddProbe](KestrunHost/AddProbe)(…) | Registers the provided [`IProbe`](../Kestrun.Health/IProbe) instance with the host. (3 methods) |
| [AddScheduling](KestrunHost/AddScheduling)(…) | Adds a scheduling feature to the Kestrun host, optionally specifying the maximum number of runspaces for the scheduler. |
| [AddService](KestrunHost/AddService)(…) | Adds a service configuration action to the service queue. This action will be executed when the services are built. |
| [AddSignalR](KestrunHost/AddSignalR)(…) | Adds the default SignalR hub (KestrunHub) to the application at the specified path. |
| [AddSignalR&lt;T&gt;](KestrunHost/AddSignalR)(…) | Adds a SignalR hub to the application at the specified path. |
| [AddTasks](KestrunHost/AddTasks)(…) | Adds the Tasks feature to run ad-hoc scripts with status/result/cancellation. |
| [Build](KestrunHost/Build)() | Builds the WebApplication. This method applies all queued services and middleware stages, and returns the built WebApplication instance. |
| [ConfigureListener](KestrunHost/ConfigureListener)(…) | Configures a listener for the Kestrun host with the specified port, optional IP address, certificate, protocols, and connection logging. (5 methods) |
| [CreateRunspacePool](KestrunHost/CreateRunspacePool)(…) | Creates and returns a new [`KestrunRunspacePoolManager`](../Kestrun.Scripting/KestrunRunspacePoolManager) instance with the specified maximum number of runspaces. |
| [Dispose](KestrunHost/Dispose)() | Releases all resources used by the [`KestrunHost`](./KestrunHost) instance. |
| [EnableConfiguration](KestrunHost/EnableConfiguration)(…) | Applies the configured options to the Kestrel server and initializes the runspace pool. |
| [GetOrCreateOpenApiDocument](KestrunHost/GetOrCreateOpenApiDocument)(…) | Gets the OpenAPI document descriptor for the specified document ID. |
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
