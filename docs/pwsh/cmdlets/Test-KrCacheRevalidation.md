---
layout: default
parent: PowerShell Cmdlets
title: Test-KrCacheRevalidation
nav_order: 145
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Test-KrCacheRevalidation

## SYNOPSIS
Checks request validators and writes 304 if appropriate; otherwise sets ETag/Last-Modified.

## SYNTAX

```
Test-KrCacheRevalidation [-Payload] <Object> [[-ETag] <String>] [-Weak] [[-LastModified] <DateTimeOffset>]
 [<CommonParameters>]
```

## DESCRIPTION
Returns $true if a 304 Not Modified was written (you should NOT write a body).
Returns $false if cache missed; in that case the function sets validators on the response and
you should write the fresh body/status yourself.

## EXAMPLES

### EXAMPLE 1
```powershell
if (-not (Test-KrCacheRevalidation -Payload $payload)) {
    Write-KrTextResponse -InputObject $payload -StatusCode 200
} # writes auto-ETag based on payload
```

### EXAMPLE 2
```powershell
if (-not (Test-KrCacheRevalidation -ETag 'v1' -LastModified (Get-Date '2023-01-01'))) {
    Write-KrTextResponse -InputObject $payload -StatusCode 200
} # writes explicit ETag and Last-Modified
```

## PARAMETERS

### -Payload
The response payload (string or byte\[\]) to hash for ETag generation.
If you have a stable payload, use this to get automatic ETag generation.
If you have a dynamic payload, consider using -ETag instead.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ETag
Explicit ETag token (quotes optional).
If supplied, no hashing occurs.

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

### -Weak
Emit a weak ETag (W/"...").

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

### -LastModified
Optional last-modified timestamp to emit and validate.

```yaml
Type: DateTimeOffset
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Boolean
## NOTES

## RELATED LINKS
