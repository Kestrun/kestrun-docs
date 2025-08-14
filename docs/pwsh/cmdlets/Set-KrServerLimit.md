---
layout: default
parent: PowerShell Cmdlets
title: Set-KrServerLimit
nav_order: 85
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Set-KrServerLimit

## SYNOPSIS
{{ Fill in the Synopsis }}

## SYNTAX

```
Set-KrServerLimit [[-Server] <KestrunHost>] [[-MaxRequestBodySize] <Int64>]
 [[-MaxConcurrentConnections] <Int32>] [[-MaxRequestHeaderCount] <Int32>] [[-KeepAliveTimeoutSeconds] <Int32>]
 [[-MaxRequestBufferSize] <Int64>] [[-MaxRequestHeadersTotalSize] <Int32>] [[-MaxRequestLineSize] <Int32>]
 [[-MaxResponseBufferSize] <Int64>] [[-MinRequestBodyDataRate] <MinDataRate>]
 [[-MinResponseDataRate] <MinDataRate>] [[-RequestHeadersTimeoutSeconds] <Int32>] [-PassThru]
 [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeepAliveTimeoutSeconds
{{ Fill KeepAliveTimeoutSeconds Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxConcurrentConnections
{{ Fill MaxConcurrentConnections Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRequestBodySize
{{ Fill MaxRequestBodySize Description }}

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRequestBufferSize
{{ Fill MaxRequestBufferSize Description }}

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRequestHeaderCount
{{ Fill MaxRequestHeaderCount Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRequestHeadersTotalSize
{{ Fill MaxRequestHeadersTotalSize Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRequestLineSize
{{ Fill MaxRequestLineSize Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxResponseBufferSize
{{ Fill MaxResponseBufferSize Description }}

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinRequestBodyDataRate
{{ Fill MinRequestBodyDataRate Description }}

```yaml
Type: MinDataRate
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MinResponseDataRate
{{ Fill MinResponseDataRate Description }}

```yaml
Type: MinDataRate
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
{{ Fill PassThru Description }}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestHeadersTimeoutSeconds
{{ Fill RequestHeadersTimeoutSeconds Description }}

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Server
{{ Fill Server Description }}

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```



### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost
## OUTPUTS

### Kestrun.Hosting.KestrunHost
## NOTES

## RELATED LINKS
