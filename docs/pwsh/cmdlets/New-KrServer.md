---
layout: default
parent: PowerShell Cmdlets
title: New-KrServer
nav_order: 88
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# New-KrServer

## SYNOPSIS
Creates a new Kestrun server instance.

## SYNTAX

### Logger (Default)
```
New-KrServer -Name <String> [-Logger <ILogger>] [-PassThru] [-Force] [<CommonParameters>]
```

### LoggerName
```
New-KrServer -Name <String> -LoggerName <String> [-PassThru] [-Force] [<CommonParameters>]
```

## DESCRIPTION
This function initializes a new Kestrun server instance with the specified name and logger.

## EXAMPLES

### EXAMPLE 1
```powershell
New-KrServer -Name "MyKestrunServer"
Creates a new Kestrun server instance with the specified name.
```

## PARAMETERS

### -Name
The name of the Kestrun server instance to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Logger
An optional Serilog logger instance to use for logging.
It's mutually exclusive with the LoggerName parameter.
If not specified, the default logger will be used.

```yaml
Type: ILogger
Parameter Sets: Logger
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoggerName
An optional name of a registered logger to use for logging.
It's mutually exclusive with the Logger parameter.
If specified, the logger with this name will be used instead of the default logger.

```yaml
Type: String
Parameter Sets: LoggerName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, the cmdlet will return the created server instance.

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

### -Force
If specified, the cmdlet will overwrite any existing server instance with the same name.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Kestrun.Hosting.KestrunHost
## NOTES
This function is designed to be used in the context of a Kestrun server setup.

## RELATED LINKS
