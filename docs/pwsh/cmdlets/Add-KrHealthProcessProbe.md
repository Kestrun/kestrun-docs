---
layout: default
parent: PowerShell Cmdlets
title: Add-KrHealthProcessProbe
nav_order: 28
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrHealthProcessProbe

## SYNOPSIS
Registers a health probe that executes an external process.

## SYNTAX

```
Add-KrHealthProcessProbe [[-Server] <KestrunHost>] [-Name] <String> [-FilePath] <String>
 [[-Arguments] <String>] [[-Tags] <String[]>] [[-Timeout] <TimeSpan>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Creates a Kestrun ProcessProbe that launches the specified command, waits for completion, and
interprets the exit code or JSON payload to determine health.
Provide tags to support filtering
and optionally adjust the timeout enforced on the subprocess.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrHealthProcessProbe -Name DiskSpace -FilePath 'pwsh' -Arguments '-File ./Scripts/Check-Disk.ps1' -Tags 'infra'
Registers a process probe that runs a PowerShell script to evaluate disk capacity.
```

## PARAMETERS

### -Server
The Kestrun host instance to configure.
If omitted, the current server context is resolved automatically.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
Unique name for the probe.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FilePath
The executable or script to launch.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Arguments
Command-line arguments passed to the process.
Defaults to an empty string.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
Optional set of tags used to include or exclude the probe when requests filter by tag.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Timeout
Optional timeout applied to the process execution.
Defaults to 10 seconds.

```yaml
Type: TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Emits the configured server instance so the call can be chained.

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

## RELATED LINKS
