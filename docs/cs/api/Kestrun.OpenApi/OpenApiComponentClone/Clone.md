---
layout: default
title: "OpenApiComponentClone.Clone method (1 of 37)"
parent: "Kestrun.OpenApi"
grand_parent: "C# API"
---
# OpenApiComponentClone.Clone method (1 of 37)

Clones a dictionary of OpenApiExample instances.

```csharp
public static IDictionary<string, IOpenApiExample>? Clone(
    this IDictionary<string, IOpenApiExample>? examples)
```

| parameter | description |
| --- | --- |
| examples | The dictionary to clone. |

## Return Value

A new dictionary with cloned OpenApiExample instances.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (2 of 37)

Clones a dictionary of OpenApiExtension instances.

```csharp
public static IDictionary<string, IOpenApiExtension>? Clone(
    this IDictionary<string, IOpenApiExtension>? extensions)
```

| parameter | description |
| --- | --- |
| extensions | The dictionary to clone. |

## Return Value

A new dictionary with cloned OpenApiExtension instances.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (3 of 37)

Clones a dictionary of IOpenApiHeader instances.

```csharp
public static IDictionary<string, IOpenApiHeader>? Clone(
    this IDictionary<string, IOpenApiHeader>? headers)
```

| parameter | description |
| --- | --- |
| headers | The dictionary of headers to clone. |

## Return Value

A new dictionary with cloned IOpenApiHeader instances.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (4 of 37)

Clones a dictionary of IOpenApiLink instances.

```csharp
public static IDictionary<string, IOpenApiLink>? Clone(
    this IDictionary<string, IOpenApiLink>? links)
```

| parameter | description |
| --- | --- |
| links | The dictionary of IOpenApiLink instances to clone. |

## Return Value

A new dictionary containing cloned IOpenApiLink instances.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (5 of 37)

Clones a dictionary of OpenApiMediaType instances.

```csharp
public static IDictionary<string, IOpenApiMediaType>? Clone(
    this IDictionary<string, IOpenApiMediaType>? content)
```

| parameter | description |
| --- | --- |
| content | The dictionary to clone. |

## Return Value

A new dictionary with cloned OpenApiMediaType instances.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (6 of 37)

Clones a dictionary of OpenApiSchema instances.

```csharp
public static Dictionary<string, IOpenApiSchema>? Clone(
    this IDictionary<string, IOpenApiSchema>? schemas)
```

| parameter | description |
| --- | --- |
| schemas | The dictionary to clone. |

## Return Value

A new dictionary containing cloned OpenApiSchema instances.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (7 of 37)

Clones a dictionary of RuntimeExpressionAnyWrapper instances.

```csharp
public static IDictionary<string, RuntimeExpressionAnyWrapper>? Clone(
    this IDictionary<string, RuntimeExpressionAnyWrapper>? parameters)
```

| parameter | description |
| --- | --- |
| parameters | The dictionary of RuntimeExpressionAnyWrapper instances to clone. |

## Return Value

A new dictionary that is a deep clone of the input dictionary.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (8 of 37)

Clones a list of OpenApiSchema instances.

```csharp
public static IList<IOpenApiSchema>? Clone(this IList<IOpenApiSchema>? schemas)
```

| parameter | description |
| --- | --- |
| schemas | The list to clone. |

## Return Value

A new list containing cloned OpenApiSchema instances.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (9 of 37)

Clones an IOpenApiCallback instance.

```csharp
public static IOpenApiCallback Clone(this IOpenApiCallback callback)
```

| parameter | description |
| --- | --- |
| callback | The IOpenApiCallback to clone. |

## Return Value

A new IOpenApiCallback instance with the same properties as the input callback.

## Exceptions

| exception | condition |
| --- | --- |
| InvalidOperationException | Thrown when the callback is of an unsupported type. |

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (10 of 37)

Clones an OpenApiExtension instance.

```csharp
public static IOpenApiExtension Clone(this IOpenApiExtension extension)
```

| parameter | description |
| --- | --- |
| extension | The OpenApiExtension to clone. |

## Return Value

A new OpenApiExtension instance with the same properties as the input extension.

## Exceptions

| exception | condition |
| --- | --- |
| InvalidOperationException | Thrown when the extension is of an unsupported type. |

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (11 of 37)

Clones an IOpenApiHeader instance.

```csharp
public static IOpenApiHeader Clone(this IOpenApiHeader header)
```

| parameter | description |
| --- | --- |
| header | The IOpenApiHeader to clone. |

## Return Value

A new IOpenApiHeader instance with the same properties as the input header.

## Exceptions

| exception | condition |
| --- | --- |
| InvalidOperationException | Thrown when the header is of an unsupported type. |

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (12 of 37)

Clones an IOpenApiLink instance.

```csharp
public static IOpenApiLink Clone(this IOpenApiLink link)
```

| parameter | description |
| --- | --- |
| link | The IOpenApiLink to clone. |

## Return Value

A new IOpenApiLink instance with the same properties as the input link.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (13 of 37)

Clones an IOpenApiMediaType instance.

```csharp
public static IOpenApiMediaType Clone(this IOpenApiMediaType mediaType)
```

| parameter | description |
| --- | --- |
| mediaType | The IOpenApiMediaType instance to clone. |

## Return Value

A cloned IOpenApiMediaType instance.

## Exceptions

| exception | condition |
| --- | --- |
| InvalidOperationException | Thrown when the IOpenApiMediaType implementation is unsupported. |

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (14 of 37)

Clones an IOpenApiParameter instance.

```csharp
public static IOpenApiParameter Clone(this IOpenApiParameter parameter)
```

| parameter | description |
| --- | --- |
| parameter | The IOpenApiParameter instance to clone. |

## Return Value

A cloned instance of IOpenApiParameter.

## Exceptions

| exception | condition |
| --- | --- |
| InvalidOperationException | Thrown when the IOpenApiParameter implementation is unsupported. |

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (15 of 37)

Clones an IOpenApiRequestBody instance.

```csharp
public static IOpenApiRequestBody Clone(this IOpenApiRequestBody parameter)
```

| parameter | description |
| --- | --- |
| parameter | The IOpenApiRequestBody instance to clone. |

## Return Value

A cloned instance of IOpenApiRequestBody.

## Exceptions

| exception | condition |
| --- | --- |
| InvalidOperationException | Thrown when the IOpenApiRequestBody implementation is unsupported. |

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (16 of 37)

Clones an IOpenApiResponse instance.

```csharp
public static IOpenApiResponse Clone(this IOpenApiResponse response)
```

| parameter | description |
| --- | --- |
| response | The IOpenApiResponse instance to clone. |

## Return Value

A cloned IOpenApiResponse instance.

## Exceptions

| exception | condition |
| --- | --- |
| InvalidOperationException | Thrown when the IOpenApiResponse implementation is unsupported. |

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (17 of 37)

Clones an IOpenApiSchema instance.

```csharp
public static IOpenApiSchema Clone(this IOpenApiSchema schema)
```

| parameter | description |
| --- | --- |
| schema | The IOpenApiSchema to clone. |

## Return Value

A new IOpenApiSchema instance with the same properties as the input schema.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (18 of 37)

Clones an OpenApiCallback instance.

```csharp
public static OpenApiCallback Clone(this OpenApiCallback callback)
```

| parameter | description |
| --- | --- |
| callback | The OpenApiCallback to clone. |

## Return Value

A new OpenApiCallback instance with the same properties as the input callback.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (19 of 37)

Clones an OpenApiCallbackReference instance.

```csharp
public static OpenApiCallbackReference Clone(this OpenApiCallbackReference callback)
```

| parameter | description |
| --- | --- |
| callback | The OpenApiCallbackReference to clone. |

## Return Value

A new OpenApiCallbackReference instance with the same properties as the input callback.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (20 of 37)

Clones an OpenApiExample instance.

```csharp
public static OpenApiExample Clone(this OpenApiExample example)
```

| parameter | description |
| --- | --- |
| example | The OpenApiExample to clone. |

## Return Value

A new OpenApiExample instance with the same properties as the input example.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (21 of 37)

Clones an OpenApiExampleReference instance.

```csharp
public static OpenApiExampleReference Clone(this OpenApiExampleReference example)
```

| parameter | description |
| --- | --- |
| example | The OpenApiExampleReference to clone. |

## Return Value

A new OpenApiExampleReference instance with the same properties as the input instance.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (22 of 37)

Clones an OpenApiHeader instance.

```csharp
public static OpenApiHeader Clone(this OpenApiHeader header)
```

| parameter | description |
| --- | --- |
| header | The OpenApiHeader to clone. |

## Return Value

A new OpenApiHeader instance with the same properties as the input header.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (23 of 37)

Clones an OpenApiHeaderReference instance.

```csharp
public static OpenApiHeaderReference Clone(this OpenApiHeaderReference header)
```

| parameter | description |
| --- | --- |
| header | The OpenApiHeaderReference to clone. |

## Return Value

A new OpenApiHeaderReference instance with the same properties as the input header.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (24 of 37)

Clones an OpenApiLink instance.

```csharp
public static OpenApiLink Clone(this OpenApiLink link)
```

| parameter | description |
| --- | --- |
| link | The OpenApiLink instance to clone. |

## Return Value

A new OpenApiLink instance with the same properties as the input instance.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (25 of 37)

Clones an OpenApiLinkReference instance.

```csharp
public static OpenApiLinkReference Clone(this OpenApiLinkReference link)
```

| parameter | description |
| --- | --- |
| link | The OpenApiLinkReference instance to clone. |

## Return Value

A new OpenApiLinkReference instance with the same properties as the input instance.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (26 of 37)

Clones an OpenApiMediaType instance.

```csharp
public static OpenApiMediaType Clone(this OpenApiMediaType mediaType)
```

| parameter | description |
| --- | --- |
| mediaType | The OpenApiMediaType instance to clone. |

## Return Value

A cloned OpenApiMediaType instance.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (27 of 37)

Clones an OpenApiMediaTypeReference instance.

```csharp
public static OpenApiMediaTypeReference Clone(this OpenApiMediaTypeReference mediaType)
```

| parameter | description |
| --- | --- |
| mediaType | The OpenApiMediaTypeReference instance to clone. |

## Return Value

A cloned OpenApiMediaTypeReference instance.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (28 of 37)

Clones an OpenApiParameter instance.

```csharp
public static OpenApiParameter Clone(this OpenApiParameter parameter)
```

| parameter | description |
| --- | --- |
| parameter | The OpenApiParameter to clone. |

## Return Value

A new OpenApiParameter instance with the same properties as the input parameter.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (29 of 37)

Clones an OpenApiParameterReference instance.

```csharp
public static OpenApiParameterReference Clone(this OpenApiParameterReference parameter)
```

| parameter | description |
| --- | --- |
| parameter | The OpenApiParameterReference to clone. |

## Return Value

A new OpenApiParameterReference instance with the same properties as the input parameter.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (30 of 37)

Clones an OpenApiRequestBody instance.

```csharp
public static OpenApiRequestBody Clone(this OpenApiRequestBody requestBody)
```

| parameter | description |
| --- | --- |
| requestBody | The OpenApiRequestBody to clone. |

## Return Value

A new OpenApiRequestBody instance with the same properties as the input requestBody.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (31 of 37)

Clones an OpenApiRequestBodyReference instance.

```csharp
public static OpenApiRequestBodyReference Clone(this OpenApiRequestBodyReference requestBody)
```

| parameter | description |
| --- | --- |
| requestBody | The OpenApiRequestBodyReference to clone. |

## Return Value

A new OpenApiRequestBodyReference instance with the same properties as the input requestBody.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (32 of 37)

Clones an OpenApiResponse instance.

```csharp
public static OpenApiResponse Clone(this OpenApiResponse response)
```

| parameter | description |
| --- | --- |
| response | The OpenApiResponse to clone. |

## Return Value

A new OpenApiResponse instance with the same properties as the input response.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (33 of 37)

Clones an OpenApiResponseReference instance.

```csharp
public static OpenApiResponseReference Clone(this OpenApiResponseReference response)
```

| parameter | description |
| --- | --- |
| response | The OpenApiResponseReference to clone. |

## Return Value

A new OpenApiResponseReference instance with the same properties as the input response.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (34 of 37)

Clones an OpenApiSchema instance.

```csharp
public static OpenApiSchema Clone(this OpenApiSchema schema)
```

| parameter | description |
| --- | --- |
| schema | The OpenApiSchema to clone. |

## Return Value

A new OpenApiSchema instance with the same properties as the input schema.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (35 of 37)

Clones an OpenApiSchemaReference instance.

```csharp
public static OpenApiSchemaReference Clone(this OpenApiSchemaReference schemaRef)
```

| parameter | description |
| --- | --- |
| schemaRef | The OpenApiSchemaReference to clone |

## Return Value

A new OpenApiSchemaReference instance with the same properties as the input instance.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (36 of 37)

Clones an OpenApiServer instance.

```csharp
public static OpenApiServer Clone(this OpenApiServer server)
```

| parameter | description |
| --- | --- |
| server | The OpenApiServer instance to clone. |

## Return Value

A new OpenApiServer instance with the same properties as the input instance.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

---

# OpenApiComponentClone.Clone method (37 of 37)

Clones a RuntimeExpressionAnyWrapper instance.

```csharp
public static RuntimeExpressionAnyWrapper Clone(this RuntimeExpressionAnyWrapper expressionWrapper)
```

| parameter | description |
| --- | --- |
| expressionWrapper | The RuntimeExpressionAnyWrapper instance to clone. |

## Return Value

A new RuntimeExpressionAnyWrapper instance with the same properties as the input instance.

## See Also

* class [OpenApiComponentClone](../OpenApiComponentClone)
* namespace [Kestrun.OpenApi](../../Kestrun)

<!-- DO NOT EDIT: generated by xmldo for Kestrun.dll -->
