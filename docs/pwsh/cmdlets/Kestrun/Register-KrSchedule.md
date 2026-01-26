---
layout: default
parent: PowerShell Cmdlets
nav_order: 163
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: ''
Locale: en-US
Module Name: Kestrun
ms.date: 01/26/2026
PlatyPS schema version: 2024-05-01
title: Register-KrSchedule
---

# Register-KrSchedule

## SYNOPSIS

Creates a new scheduled job in the active Kestrun host.

## SYNTAX

### IntervalScriptBlock (Default)

```powershell
Register-KrSchedule -Name <string> -Interval <timespan> -ScriptBlock <scriptblock>
 [-Server <KestrunHost>] [-RunImmediately] [-PassThru] [<CommonParameters>]
```

### IntervalFile

```powershell
Register-KrSchedule -Name <string> -Language <ScriptLanguage> -Interval <timespan>
 -ScriptPath <string> [-Server <KestrunHost>] [-RunImmediately] [-PassThru] [<CommonParameters>]
```

### IntervalBlock

```powershell
Register-KrSchedule -Name <string> -Language <ScriptLanguage> -Interval <timespan> -Code <string>
 [-Server <KestrunHost>] [-RunImmediately] [-PassThru] [<CommonParameters>]
```

### CronBlock

```powershell
Register-KrSchedule -Name <string> -Language <ScriptLanguage> -Cron <string> -Code <string>
 [-Server <KestrunHost>] [-RunImmediately] [-PassThru] [<CommonParameters>]
```

### CronFile

```powershell
Register-KrSchedule -Name <string> -Language <ScriptLanguage> -Cron <string> -ScriptPath <string>
 [-Server <KestrunHost>] [-RunImmediately] [-PassThru] [<CommonParameters>]
```

### CronScriptBlock

```powershell
Register-KrSchedule -Name <string> -Cron <string> -ScriptBlock <scriptblock> [-Server <KestrunHost>]
 [-RunImmediately] [-PassThru] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Supports either CRON or fixed interval triggers, and either an inline
ScriptBlock or a script file path.
 Use -RunImmediately to execute
once right after registration.

## EXAMPLES

### EXAMPLE 1

Register-KrSchedule -Name Cache -Interval '00:15:00' -ScriptBlock {
    Clear-KrCache
}
Register a job that runs every 15 minutes, clearing the cache.

### EXAMPLE 2

Register-KrSchedule -Name Nightly -Cron '0 0 3 * * *' -ScriptPath 'Scripts/Cleanup.ps1'
Register a job that runs nightly at 3 AM, executing the script at 'Scripts/Cleanup.ps1'.

### EXAMPLE 3

Register-KrSchedule -Name Heartbeat -Cron '*/10 * * * * *' -ScriptBlock {
    Write-KrLog -Level Information -Message "💓 Heartbeat at {0:O}" -Values $([DateTimeOffset]::UtcNow)
}
Register a job that runs every 10 seconds, logging a heartbeat message.

### EXAMPLE 4

Register-KrSchedule -Name 'InlineJob' -Interval '00:01:00' -ScriptBlock {
    Write-Information "[$([DateTime]::UtcNow.ToString('o'))] 🌙 Inline job ran."
}
Register a job that runs every minute, executing the inline PowerShell code.

### EXAMPLE 5

Register-KrSchedule -Server $server -Name 'CSharpJob' -Cron '0 0/5 * * * *' -Language CSharp -Code @"
    Console.WriteLine($"C# job executed at {DateTime.UtcNow:O}");
"@
Register a job that runs every 5 minutes, executing inline C# code.

### EXAMPLE 6

Register-KrSchedule -Server $server -Name 'FileJob' -Cron '0 0 1 * * *' -ScriptPath 'Scripts/Backup.cs' -Language CSharp
Register a job that runs daily at 1 AM, executing the C# script at 'Scripts/Backup.cs'.

### EXAMPLE 7

Register-KrSchedule -Server $server -Name 'RunOnce' -Interval '00:01:00' -ScriptBlock {
    Write-KrLog -Level Information -Message "Running once at {0:O}" -Values $([DateTimeOffset]::UtcNow)
} -RunImmediately
Register a job that runs once immediately after registration, then every minute.

### EXAMPLE 8

Register-KrSchedule -Server $server -Name 'CSharpFileJob' -Cron '0 0 2 * * *' -ScriptPath 'Scripts/ProcessData.cs' -Language CSharp
Register a job that runs daily at 2 AM, executing the C# script at 'Scripts/ProcessData.cs'.

### EXAMPLE 9

Register-KrSchedule -Server $server -Name 'PythonJob' -Cron '0 0/10 * * * *' -Language Python -ScriptPath 'Scripts/AnalyzeData.py'
Register a job that runs every 10 minutes, executing the Python script at 'Scripts/AnalyzeData.py'.

### EXAMPLE 10

Register-KrSchedule -Server $server -Name 'JavaScriptJob' -Cron '0 0/15 * * * *' -Language JavaScript -ScriptPath 'Scripts/GenerateReport.js'
Register a job that runs every 15 minutes, executing the JavaScript script at 'Scripts/GenerateReport.js'.

## PARAMETERS

### -Code

Inline code in the specified language (e.g.
C#) to run.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: IntervalBlock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: CronBlock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Cron

6-field cron expression (seconds precision).
 Mutually exclusive with -Interval.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CronFile
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: CronBlock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: CronScriptBlock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Interval

System.TimeSpan string (e.g.
'00:05:00').
 Mutually exclusive with -Cron.

```yaml
Type: System.TimeSpan
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: IntervalFile
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: IntervalBlock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: IntervalScriptBlock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Language

Script language to use for the job.

```yaml
Type: Kestrun.Scripting.ScriptLanguage
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: IntervalFile
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: IntervalBlock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: CronBlock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: CronFile
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Name

Unique job name.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PassThru

If specified, the cmdlet will return the newly registered job info.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RunImmediately

Execute once right after being registered.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ScriptBlock

Inline PowerShell code to run.
This is the default parameter for the job's script content.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: IntervalScriptBlock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: CronScriptBlock
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ScriptPath

Path to a .ps1 file.
The file is read once at registration time.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: IntervalFile
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: CronFile
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun host instance to use for scheduling the job.
This is typically the instance running the Kestrun server.

```yaml
Type: Kestrun.Hosting.KestrunHost
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Scheduling.JobInfo

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
