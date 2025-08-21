---
layout: default
parent: PowerShell Cmdlets
title: Remove-KrServer
nav_order: 83
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Remove-KrServer

## SYNOPSIS
Removes a Kestrun server instance.

## SYNTAX

```
Remove-KrServer [-Name] <String> [-Force] [<CommonParameters>]
```

## DESCRIPTION
This function stops and destroys a Kestrun server instance with the specified name.

## EXAMPLES

### EXAMPLE 1
```powershell
Remove-KrServer -Name "MyKestrunServer"
Removes the specified Kestrun server instance.
```

### EXAMPLE 2
```powershell
Remove-KrServer -Name "MyKestrunServer" -Force
Removes the specified Kestrun server instance without confirmation.
```

## PARAMETERS

### -Name
The name of the Kestrun server instance to remove.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Force
If specified, the server will be stopped and destroyed without confirmation.

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
This function is designed to be used in the context of a Kestrun server management.

## RELATED LINKS
