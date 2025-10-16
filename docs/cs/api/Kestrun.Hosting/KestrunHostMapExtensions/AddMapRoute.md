---
layout: default
title: "KestrunHostMapExtensions.AddMapRoute method (1 of 6)"
parent: "Kestrun.Hosting"
grand_parent: "C# API"
---
# KestrunHostMapExtensions.AddMapRoute method (1 of 6)

Adds a route to the KestrunHost using the specified MapRouteOptions.

```csharp
public static KestrunHost AddMapRoute(this KestrunHost host, MapRouteOptions options)
```

| parameter | description |
| --- | --- |
| host | The KestrunHost instance. |
| options | The MapRouteOptions containing route configuration. |

## Return Value

The KestrunHost instance for chaining.

## See Also

* class [KestrunHost](../KestrunHost)
* record [MapRouteOptions](../../Kestrun.Hosting.Options/MapRouteOptions)
* class [KestrunHostMapExtensions](../KestrunHostMapExtensions)
* namespace [Kestrun.Hosting](../../Kestrun)

---

# KestrunHostMapExtensions.AddMapRoute method (2 of 6)

Adds a native route to the KestrunHost using the specified MapRouteOptions and handler.

```csharp
public static KestrunHost AddMapRoute(this KestrunHost host, MapRouteOptions options, 
    KestrunHandler handler, out IEndpointConventionBuilder? map)
```

| parameter | description |
| --- | --- |
| host | The KestrunHost instance. |
| options | The MapRouteOptions containing route configuration. |
| handler | The handler to execute for the route. |
| map | The endpoint convention builder for further configuration. |

## Return Value

The KestrunHost instance for chaining.

## See Also

* class [KestrunHost](../KestrunHost)
* record [MapRouteOptions](../../Kestrun.Hosting.Options/MapRouteOptions)
* delegate [KestrunHandler](../KestrunHostMapExtensions.KestrunHandler)
* class [KestrunHostMapExtensions](../KestrunHostMapExtensions)
* namespace [Kestrun.Hosting](../../Kestrun)

---

# KestrunHostMapExtensions.AddMapRoute method (3 of 6)

Adds a native route to the KestrunHost for the specified pattern and HTTP verb.

```csharp
public static KestrunHost AddMapRoute(this KestrunHost host, string pattern, HttpVerb httpVerb, 
    KestrunHandler handler, out IEndpointConventionBuilder? map, string[]? requireSchemes = null)
```

| parameter | description |
| --- | --- |
| host | The KestrunHost instance. |
| pattern | The route pattern. |
| httpVerb | The HTTP verb for the route. |
| handler | The handler to execute for the route. |
| requireSchemes | Optional array of authorization schemes required for the route. |
| map | The endpoint convention builder for further configuration. |

## Return Value

The KestrunHost instance for chaining.

## See Also

* class [KestrunHost](../KestrunHost)
* enum [HttpVerb](../../Kestrun.Utilities/HttpVerb)
* delegate [KestrunHandler](../KestrunHostMapExtensions.KestrunHandler)
* class [KestrunHostMapExtensions](../KestrunHostMapExtensions)
* namespace [Kestrun.Hosting](../../Kestrun)

---

# KestrunHostMapExtensions.AddMapRoute method (4 of 6)

Adds a native route to the KestrunHost for the specified pattern and HTTP verbs.

```csharp
public static KestrunHost AddMapRoute(this KestrunHost host, string pattern, 
    IEnumerable<HttpVerb> httpVerbs, KestrunHandler handler, out IEndpointConventionBuilder? map, 
    string[]? requireSchemes = null)
```

| parameter | description |
| --- | --- |
| host | The KestrunHost instance. |
| pattern | The route pattern. |
| httpVerbs | The HTTP verbs for the route. |
| handler | The handler to execute for the route. |
| requireSchemes | Optional array of authorization schemes required for the route. |
| map | The endpoint convention builder for further configuration. |

## Return Value

The KestrunHost instance for chaining.

## See Also

* class [KestrunHost](../KestrunHost)
* enum [HttpVerb](../../Kestrun.Utilities/HttpVerb)
* delegate [KestrunHandler](../KestrunHostMapExtensions.KestrunHandler)
* class [KestrunHostMapExtensions](../KestrunHostMapExtensions)
* namespace [Kestrun.Hosting](../../Kestrun)

---

# KestrunHostMapExtensions.AddMapRoute method (5 of 6)

Adds a route to the KestrunHost that executes a script block for the specified HTTP verb and pattern.

```csharp
public static KestrunHost AddMapRoute(this KestrunHost host, string pattern, HttpVerb httpVerbs, 
    string scriptBlock, ScriptLanguage language = ScriptLanguage.PowerShell, 
    string[]? requireSchemes = null, Dictionary<string, object?>? arguments = null)
```

| parameter | description |
| --- | --- |
| host | The KestrunHost instance. |
| pattern | The route pattern. |
| httpVerbs | The HTTP verb for the route. |
| scriptBlock | The script block to execute. |
| language | The scripting language to use (default is PowerShell). |
| requireSchemes | Optional array of authorization schemes required for the route. |
| arguments | Optional dictionary of arguments to pass to the script. |

## Return Value

The KestrunHost instance for chaining.

## See Also

* class [KestrunHost](../KestrunHost)
* enum [HttpVerb](../../Kestrun.Utilities/HttpVerb)
* enum [ScriptLanguage](../../Kestrun.Scripting/ScriptLanguage)
* class [KestrunHostMapExtensions](../KestrunHostMapExtensions)
* namespace [Kestrun.Hosting](../../Kestrun)

---

# KestrunHostMapExtensions.AddMapRoute method (6 of 6)

Adds a route to the KestrunHost that executes a script block for the specified HTTP verbs and pattern.

```csharp
public static KestrunHost AddMapRoute(this KestrunHost host, string pattern, 
    IEnumerable<HttpVerb> httpVerbs, string scriptBlock, 
    ScriptLanguage language = ScriptLanguage.PowerShell, string[]? requireSchemes = null, 
    Dictionary<string, object?>? arguments = null)
```

| parameter | description |
| --- | --- |
| host | The KestrunHost instance. |
| pattern | The route pattern. |
| httpVerbs | The HTTP verbs for the route. |
| scriptBlock | The script block to execute. |
| language | The scripting language to use (default is PowerShell). |
| requireSchemes | Optional array of authorization schemes required for the route. |
| arguments | Optional dictionary of arguments to pass to the script. |

## Return Value

The KestrunHost instance for chaining.

## See Also

* class [KestrunHost](../KestrunHost)
* enum [HttpVerb](../../Kestrun.Utilities/HttpVerb)
* enum [ScriptLanguage](../../Kestrun.Scripting/ScriptLanguage)
* class [KestrunHostMapExtensions](../KestrunHostMapExtensions)
* namespace [Kestrun.Hosting](../../Kestrun)

<!-- DO NOT EDIT: generated by xmldo for Kestrun.dll -->
