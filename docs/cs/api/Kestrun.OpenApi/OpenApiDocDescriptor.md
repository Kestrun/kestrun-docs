---
layout: default
title: "OpenApiDocDescriptor class"
parent: "Kestrun.OpenApi"
grand_parent: "C# API"
---
# OpenApiDocDescriptor class

Generates OpenAPI v2 (Swagger) documents from C# types decorated with OpenApiSchema attributes.

Helper methods for accessing OpenAPI document components.

Generates OpenAPI v2 (Swagger) documents from C# types decorated with OpenApiSchema attributes.

Generates OpenAPI v2 (Swagger) documents from C# types decorated with OpenApiSchema attributes.

Helper methods for accessing OpenAPI document components.

Generates OpenAPI v2 (Swagger) documents from C# types decorated with OpenApiSchema attributes.

Helper methods for accessing OpenAPI document components.

Generates OpenAPI v2 (Swagger) documents from C# types decorated with OpenApiSchema attributes.

Generates OpenAPI v2 (Swagger) documents from C# types decorated with OpenApiSchema attributes.

Generates OpenAPI v2 (Swagger) documents from C# types decorated with OpenApiSchema attributes.

Methods for applying security schemes to the OpenAPI document.

Helper methods for accessing OpenAPI document components.

Helper methods for accessing OpenAPI document components.

```csharp
public class OpenApiDocDescriptor
```

## Public Members

| name | description |
| --- | --- |
| [OpenApiDocDescriptor](OpenApiDocDescriptor/OpenApiDocDescriptor)(…) | Initializes a new instance of the OpenApiDocDescriptor. |
| [Callbacks](OpenApiDocDescriptor/Callbacks) { get; set; } | OpenAPI metadata for callbacks associated with this document. |
| [Document](OpenApiDocDescriptor/Document) { get; } | The OpenAPI document being generated. |
| [DocumentId](OpenApiDocDescriptor/DocumentId) { get; set; } | The ID of the OpenAPI document being generated. |
| [HasBeenGenerated](OpenApiDocDescriptor/HasBeenGenerated) { get; } | Indicates whether the OpenAPI document has been generated at least once. |
| [Host](OpenApiDocDescriptor/Host) { get; set; } | The Kestrun host providing registered routes. |
| [InlineComponents](OpenApiDocDescriptor/InlineComponents) { get; } | Inline components specific to this OpenAPI document. |
| [SecurityRequirement](OpenApiDocDescriptor/SecurityRequirement) { get; } | Security requirements for the OpenAPI document. |
| [WebHook](OpenApiDocDescriptor/WebHook) { get; set; } | OpenAPI metadata for webhooks associated with this document. |
| [AddComponentExample](OpenApiDocDescriptor/AddComponentExample)(…) | Adds a component example to the OpenAPI document. |
| [AddComponentHeader](OpenApiDocDescriptor/AddComponentHeader)(…) | Adds an OpenApiHeader component to the OpenAPI document. |
| [AddComponentLink](OpenApiDocDescriptor/AddComponentLink)(…) | Adds a component link to the OpenAPI document. |
| [AddInlineExample](OpenApiDocDescriptor/AddInlineExample)(…) | Adds an inline example to the OpenAPI document. |
| [AddInlineLink](OpenApiDocDescriptor/AddInlineLink)(…) | Adds an inline link to the OpenAPI document. |
| [AddTag](OpenApiDocDescriptor/AddTag)(…) | Adds a tag if it doesn't exist and returns the existing or newly created tag. |
| [ApplySecurityScheme](OpenApiDocDescriptor/ApplySecurityScheme)(…) | Applies a security scheme to the OpenAPI document based on the provided authentication options. |
| [ContainsTag](OpenApiDocDescriptor/ContainsTag)(…) | Determines whether the OpenAPI document contains a tag with the specified name. |
| [GenerateComponents](OpenApiDocDescriptor/GenerateComponents)() | Generates the OpenAPI document by auto-discovering component types. |
| [GenerateDoc](OpenApiDocDescriptor/GenerateDoc)() | Generates the OpenAPI document by processing components and building paths and webhooks. |
| [InferPrimitiveSchema](OpenApiDocDescriptor/InferPrimitiveSchema)(…) | Infers a primitive OpenApiSchema from a .NET type. |
| [LoadAnnotatedFunctions](OpenApiDocDescriptor/LoadAnnotatedFunctions)(…) | Enumerates all in-session PowerShell functions in the given runspace, detects those annotated with [OpenApiPath], and maps them into the provided KestrunHost. |
| [NewOpenApiHeader](OpenApiDocDescriptor/NewOpenApiHeader)(…) | Creates a new OpenApiHeader with the specified properties. |
| [ReadAndDiagnose](OpenApiDocDescriptor/ReadAndDiagnose)(…) | Reads and diagnoses the OpenAPI document by serializing and re-parsing it. |
| [RemoveTag](OpenApiDocDescriptor/RemoveTag)(…) | Removes a tag by instance. Returns true if removed. |
| [ToJson](OpenApiDocDescriptor/ToJson)(…) | Serializes the OpenAPI document to a JSON string. |
| [ToYaml](OpenApiDocDescriptor/ToYaml)(…) | Serializes the OpenAPI document to a YAML string. |
| [TryGetComponent&lt;T&gt;](OpenApiDocDescriptor/TryGetComponent)(…) | Tries to retrieve an OpenAPI component by name and kind. |
| [TryGetInline&lt;T&gt;](OpenApiDocDescriptor/TryGetInline)(…) | Tries to retrieve an inline OpenAPI component by name and kind. |
| [TryGetTag](OpenApiDocDescriptor/TryGetTag)(…) | Tries to get a tag item by name from the OpenAPI document. |
| const [DefaultDocumentationId](OpenApiDocDescriptor/DefaultDocumentationId) | Default documentation identifier. |
| static readonly [DefaultDocumentationIds](OpenApiDocDescriptor/DefaultDocumentationIds) | Default documentation identifiers for OpenAPI authentication schemes. |
| static [CreateExternalDocs](OpenApiDocDescriptor/CreateExternalDocs)(…) | Creates an OpenApiExternalDocs object with optional extensions. (2 methods) |
| static [ToNode](OpenApiDocDescriptor/ToNode)(…) | Converts a .NET object to a JsonNode representation. |

## See Also

* namespace [Kestrun.OpenApi](../Kestrun)
* [OpenApiDocDescriptor.cs](https://github.com/Kestrun/Kestrun/tree/main/src/CSharp/Kestrun/OpenApi/OpenApiDocDescriptor.cs)

<!-- DO NOT EDIT: generated by xmldo for Kestrun.dll -->
