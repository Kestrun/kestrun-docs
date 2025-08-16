---
layout: default
title: "KestrunResponse class"
parent: "Kestrun.Models"
grand_parent: "C# API"
---
# KestrunResponse class

Represents an HTTP response in the Kestrun framework, providing methods to write various content types and manage headers, cookies, and status codes.

```csharp
public class KestrunResponse
```

## Public Members

| name | description |
| --- | --- |
| [KestrunResponse](KestrunResponse/KestrunResponse)(…) | Initializes a new instance of the [`KestrunResponse`](./KestrunResponse) class with the specified request and optional body async threshold. |
| [AcceptCharset](KestrunResponse/AcceptCharset) { get; } | Global text encoding for all responses. Defaults to UTF-8. |
| [Body](KestrunResponse/Body) { get; set; } | Gets or sets the body of the response, which can be a string, byte array, stream, or file info. |
| [BodyAsyncThreshold](KestrunResponse/BodyAsyncThreshold) { get; set; } | If the response body is larger than this threshold (in bytes), async write will be used. |
| [ContentDisposition](KestrunResponse/ContentDisposition) { get; set; } | Content-Disposition header value. |
| [ContentType](KestrunResponse/ContentType) { get; set; } | Gets or sets the MIME content type of the response. |
| [Cookies](KestrunResponse/Cookies) { get; set; } | Gets or sets the list of Set-Cookie header values for the response. |
| [Encoding](KestrunResponse/Encoding) { get; set; } | Text encoding for textual MIME types. |
| [Headers](KestrunResponse/Headers) { get; set; } | Gets or sets the collection of HTTP headers for the response. |
| [RedirectUrl](KestrunResponse/RedirectUrl) { get; set; } | Gets or sets the URL to redirect the response to, if an HTTP redirect is required. |
| [Request](KestrunResponse/Request) { get; } | Gets the associated KestrunRequest for this response. |
| [StatusCode](KestrunResponse/StatusCode) { get; set; } | Gets or sets the HTTP status code for the response. |
| [ApplyTo](KestrunResponse/ApplyTo)(…) | Applies the current KestrunResponse to the specified HttpResponse, setting status, headers, cookies, and writing the body. |
| [GetHeader](KestrunResponse/GetHeader)(…) | Retrieves the value of the specified header from the response headers. |
| [WriteBinaryResponse](KestrunResponse/WriteBinaryResponse)(…) | Writes a binary response with the specified data, status code, and content type. |
| [WriteBsonResponse](KestrunResponse/WriteBsonResponse)(…) | Writes a BSON response with the specified input object, status code, and content type. |
| [WriteBsonResponseAsync](KestrunResponse/WriteBsonResponseAsync)(…) | Asynchronously writes a BSON response with the specified input object, status code, and content type. |
| [WriteCborResponse](KestrunResponse/WriteCborResponse)(…) | Writes a CBOR response (binary, efficient, not human-readable). |
| [WriteCborResponseAsync](KestrunResponse/WriteCborResponseAsync)(…) | Writes a CBOR response (binary, efficient, not human-readable). |
| [WriteCsvResponse](KestrunResponse/WriteCsvResponse)(…) | Writes a CSV response with the specified input object, status code, content type, and optional CsvConfiguration. |
| [WriteCsvResponseAsync](KestrunResponse/WriteCsvResponseAsync)(…) | Asynchronously writes a CSV response with the specified input object, status code, content type, and optional configuration tweak. |
| [WriteErrorResponse](KestrunResponse/WriteErrorResponse)(…) | Writes an error response with a custom message. Chooses JSON/YAML/XML/plain-text based on override → Accept → default JSON. (2 methods) |
| [WriteErrorResponseAsync](KestrunResponse/WriteErrorResponseAsync)(…) | Write an error response with a custom message. Chooses JSON/YAML/XML/plain-text based on override → Accept → default JSON. (2 methods) |
| [WriteFileResponse](KestrunResponse/WriteFileResponse)(…) | Writes a file response with the specified file path, content type, and HTTP status code. |
| [WriteHtmlResponse](KestrunResponse/WriteHtmlResponse)(…) | Renders the given HTML string with placeholders and writes it as a response. |
| [WriteHtmlResponseAsync](KestrunResponse/WriteHtmlResponseAsync)(…) | Asynchronously writes an HTML response, rendering the provided template string and replacing placeholders with values from the given dictionary. |
| [WriteHtmlResponseFromFile](KestrunResponse/WriteHtmlResponseFromFile)(…) | Reads an .html file, merges in placeholders, and writes it. |
| [WriteHtmlResponseFromFileAsync](KestrunResponse/WriteHtmlResponseFromFileAsync)(…) | Asynchronously reads an HTML file, merges in placeholders from the provided dictionary, and writes the result as a response. |
| [WriteJsonResponse](KestrunResponse/WriteJsonResponse)(…) | Writes a JSON response with the specified input object and HTTP status code. (3 methods) |
| [WriteJsonResponseAsync](KestrunResponse/WriteJsonResponseAsync)(…) | Asynchronously writes a JSON response with the specified input object and HTTP status code. (3 methods) |
| [WriteRedirectResponse](KestrunResponse/WriteRedirectResponse)(…) | Writes an HTTP redirect response with the specified URL and optional message. |
| [WriteResponse](KestrunResponse/WriteResponse)(…) | Writes a response with the specified input object and HTTP status code. Chooses the response format based on the Accept header or defaults to text/plain. |
| [WriteResponseAsync](KestrunResponse/WriteResponseAsync)(…) | Asynchronously writes a response with the specified input object and HTTP status code. Chooses the response format based on the Accept header or defaults to text/plain. |
| [WriteStreamResponse](KestrunResponse/WriteStreamResponse)(…) | Writes a stream response with the specified stream, status code, and content type. |
| [WriteTextResponse](KestrunResponse/WriteTextResponse)(…) | Writes a text response with the specified input object, status code, and content type. |
| [WriteTextResponseAsync](KestrunResponse/WriteTextResponseAsync)(…) | Asynchronously writes a text response with the specified input object, status code, and content type. |
| [WriteXmlResponse](KestrunResponse/WriteXmlResponse)(…) | Writes an XML response with the specified input object, status code, and content type. |
| [WriteXmlResponseAsync](KestrunResponse/WriteXmlResponseAsync)(…) | Asynchronously writes an XML response with the specified input object, status code, and content type. |
| [WriteYamlResponse](KestrunResponse/WriteYamlResponse)(…) | Writes a YAML response with the specified input object, status code, and content type. |
| [WriteYamlResponseAsync](KestrunResponse/WriteYamlResponseAsync)(…) | Asynchronously writes a YAML response with the specified input object, status code, and content type. |
| static [IsTextBasedContentType](KestrunResponse/IsTextBasedContentType)(…) | Determines whether the specified content type is text-based or supports a charset. |

## See Also

* namespace [Kestrun.Models](../Kestrun)

<!-- DO NOT EDIT: generated by xmldo for Kestrun.dll -->
