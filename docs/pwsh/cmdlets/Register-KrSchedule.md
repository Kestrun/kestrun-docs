---
layout: default
parent: PowerShell Cmdlets
title: Register-KrSchedule
nav_order: 84
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Register-KrSchedule

## SYNOPSIS
Creates a new scheduled job in the active Kestrun host.

## SYNTAX

### IntervalScriptBlock (Default)
```
Register-KrSchedule [-Server <KestrunHost>] -Name <String> -Interval <TimeSpan> -ScriptBlock <ScriptBlock>
 [-RunImmediately] [-PassThru] [<CommonParameters>]
```

### IntervalFile
```
Register-KrSchedule [-Server <KestrunHost>] -Name <String> -Language <ScriptLanguage> -Interval <TimeSpan>
 -ScriptPath <String> [-RunImmediately] [-PassThru] [<CommonParameters>]
```

### IntervalBlock
```
Register-KrSchedule [-Server <KestrunHost>] -Name <String> -Language <ScriptLanguage> -Interval <TimeSpan>
 -Code <String> [-RunImmediately] [-PassThru] [<CommonParameters>]
```

### CronBlock
```
Register-KrSchedule [-Server <KestrunHost>] -Name <String> -Language <ScriptLanguage> -Cron <String>
 -Code <String> [-RunImmediately] [-PassThru] [<CommonParameters>]
```

### CronFile
```
Register-KrSchedule [-Server <KestrunHost>] -Name <String> -Language <ScriptLanguage> -Cron <String>
 -ScriptPath <String> [-RunImmediately] [-PassThru] [<CommonParameters>]
```

### CronScriptBlock
```
Register-KrSchedule [-Server <KestrunHost>] -Name <String> -Cron <String> -ScriptBlock <ScriptBlock>
 [-RunImmediately] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Supports either CRON or fixed interval triggers, and either an inline
ScriptBlock or a script file path. 
Use -RunImmediately to execute
once right after registration.

## EXAMPLES

### EXAMPLE 1
```powershell
Register-KrSchedule -Name Cache -Interval '00:15:00' -ScriptBlock {
    Clear-KrCache
}
Register a job that runs every 15 minutes, clearing the cache.
```

### EXAMPLE 2
```powershell
Register-KrSchedule -Name Nightly -Cron '0 0 3 * * *' -ScriptPath 'Scripts/Cleanup.ps1'
Register a job that runs nightly at 3 AM, executing the script at 'Scripts/Cleanup.ps1'.
```

### EXAMPLE 3
```powershell
Register-KrSchedule -Name Heartbeat -Cron '*/10 * * * * *' -ScriptBlock {
    Write-KrLog -Level Information -Message "💓 Heartbeat at {0:O}" -Properties $([DateTimeOffset]::UtcNow)
}
Register a job that runs every 10 seconds, logging a heartbeat message.
```

### EXAMPLE 4
```powershell
Register-KrSchedule -Name 'InlineJob' -Interval '00:01:00' -ScriptBlock {
    Write-Information "[$([DateTime]::UtcNow.ToString('o'))] 🌙 Inline job ran."
}
Register a job that runs every minute, executing the inline PowerShell code.
```

### EXAMPLE 5
```powershell
Register-KrSchedule -Server $server -Name 'CSharpJob' -Cron '0 0/5 * * * *' -Language CSharp -Code @"
    Console.WriteLine($"C# job executed at {DateTime.UtcNow:O}");
"@
Register a job that runs every 5 minutes, executing inline C# code.
```

### EXAMPLE 6
```powershell
Register-KrSchedule -Server $server -Name 'FileJob' -Cron '0 0 1 * * *' -ScriptPath 'Scripts/Backup.cs' -Language CSharp
Register a job that runs daily at 1 AM, executing the C# script at 'Scripts/Backup.cs'.
```

### EXAMPLE 7
```powershell
Register-KrSchedule -Server $server -Name 'RunOnce' -Interval '00:01:00' -ScriptBlock {
    Write-KrLog -Level Information -Message "Running once at {0:O}" -Properties $([DateTimeOffset]::UtcNow)
} -RunImmediately
Register a job that runs once immediately after registration, then every minute.
```

### EXAMPLE 8
```powershell
Register-KrSchedule -Server $server -Name 'CSharpFileJob' -Cron '0 0 2 * * *' -ScriptPath 'Scripts/ProcessData.cs' -Language CSharp
Register a job that runs daily at 2 AM, executing the C# script at 'Scripts/ProcessData.cs'.
```

### EXAMPLE 9
```powershell
Register-KrSchedule -Server $server -Name 'PythonJob' -Cron '0 0/10 * * * *' -Language Python -ScriptPath 'Scripts/AnalyzeData.py'
Register a job that runs every 10 minutes, executing the Python script at 'Scripts/AnalyzeData.py'.
```

### EXAMPLE 10
```powershell
Register-KrSchedule -Server $server -Name 'JavaScriptJob' -Cron '0 0/15 * * * *' -Language JavaScript -ScriptPath 'Scripts/GenerateReport.js'
Register a job that runs every 15 minutes, executing the JavaScript script at 'Scripts/GenerateReport.js'.
```

## PARAMETERS

### -Server
The Kestrun host instance to use for scheduling the job.
This is typically the instance running the Kestrun server.

```yaml
Type: KestrunHost
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Name
Unique job name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Language
Script language to use for the job.

```yaml
Type: ScriptLanguage
Parameter Sets: IntervalFile, IntervalBlock, CronBlock, CronFile
Aliases:
Accepted values: Native, PowerShell, CSharp, FSharp, Python, JavaScript, VBNet

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Cron
6-field cron expression (seconds precision). 
Mutually exclusive with -Interval.

```yaml
Type: String
Parameter Sets: CronBlock, CronFile, CronScriptBlock
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Interval
System.TimeSpan string (e.g.
'00:05:00'). 
Mutually exclusive with -Cron.

```yaml
Type: TimeSpan
Parameter Sets: IntervalScriptBlock, IntervalFile, IntervalBlock
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
Inline PowerShell code to run.
This is the default parameter for the job's script content.

```yaml
Type: ScriptBlock
Parameter Sets: IntervalScriptBlock, CronScriptBlock
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Code
Inline code in the specified language (e.g.
C#) to run.

```yaml
Type: String
Parameter Sets: IntervalBlock, CronBlock
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptPath
Path to a .ps1 file.
The file is read once at registration time.

```yaml
Type: String
Parameter Sets: IntervalFile, CronFile
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RunImmediately
Execute once right after being registered.

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

### -PassThru
If specified, the cmdlet will return the newly registered job info.

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

### Kestrun.Scheduling.JobInfo
## NOTES

## RELATED LINKS
