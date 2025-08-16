---
layout: default
title: "SchedulerService.Schedule method (1 of 8)"
parent: "Kestrun.Scheduling"
grand_parent: "C# API"
---
# SchedulerService.Schedule method (1 of 8)

Schedules a C# job to run according to a cron expression.

```csharp
public void Schedule(string name, string cronExpr, Func<CancellationToken, Task> job, 
    bool runImmediately = false)
```

| parameter | description |
| --- | --- |
| name | The name of the job. |
| cronExpr | The cron expression specifying the job schedule. |
| job | The asynchronous job delegate to execute. |
| runImmediately | Whether to run the job immediately upon scheduling. |

## See Also

* class [SchedulerService](../SchedulerService)
* namespace [Kestrun.Scheduling](../../Kestrun)

---

# SchedulerService.Schedule method (2 of 8)

Schedules a PowerShell job to run according to a cron expression.

```csharp
public void Schedule(string name, string cron, ScriptBlock scriptblock, bool runImmediately = false)
```

| parameter | description |
| --- | --- |
| name | The name of the job. |
| cron | The cron expression specifying the job schedule. |
| scriptblock | The PowerShell script block to execute. |
| runImmediately | Whether to run the job immediately upon scheduling. |

## See Also

* class [SchedulerService](../SchedulerService)
* namespace [Kestrun.Scheduling](../../Kestrun)

---

# SchedulerService.Schedule method (3 of 8)

Schedules a C# job to run at a specified interval.

```csharp
public void Schedule(string name, TimeSpan interval, Func<CancellationToken, Task> job, 
    bool runImmediately = false)
```

| parameter | description |
| --- | --- |
| name | The name of the job. |
| interval | The interval between job executions. |
| job | The asynchronous job delegate to execute. |
| runImmediately | Whether to run the job immediately upon scheduling. |

## See Also

* class [SchedulerService](../SchedulerService)
* namespace [Kestrun.Scheduling](../../Kestrun)

---

# SchedulerService.Schedule method (4 of 8)

Schedules a PowerShell job to run at a specified interval.

```csharp
public void Schedule(string name, TimeSpan interval, ScriptBlock scriptblock, 
    bool runImmediately = false)
```

| parameter | description |
| --- | --- |
| name | The name of the job. |
| interval | The interval between job executions. |
| scriptblock | The PowerShell script block to execute. |
| runImmediately | Whether to run the job immediately upon scheduling. |

## See Also

* class [SchedulerService](../SchedulerService)
* namespace [Kestrun.Scheduling](../../Kestrun)

---

# SchedulerService.Schedule method (5 of 8)

Schedules a script job from a file to run according to a cron expression.

```csharp
public void Schedule(string name, string cron, FileInfo fileInfo, ScriptLanguage lang, 
    bool runImmediately = false)
```

| parameter | description |
| --- | --- |
| name | The name of the job. |
| cron | The cron expression specifying the job schedule. |
| fileInfo | The file containing the script code to execute. |
| lang | The language of the script (e.g., PowerShell, CSharp). |
| runImmediately | Whether to run the job immediately upon scheduling. |

## See Also

* enum [ScriptLanguage](../../Kestrun.Scripting/ScriptLanguage)
* class [SchedulerService](../SchedulerService)
* namespace [Kestrun.Scheduling](../../Kestrun)

---

# SchedulerService.Schedule method (6 of 8)

Schedules a script job to run according to a cron expression.

```csharp
public void Schedule(string name, string cron, string code, ScriptLanguage lang, 
    bool runImmediately = false)
```

| parameter | description |
| --- | --- |
| name | The name of the job. |
| cron | The cron expression specifying the job schedule. |
| code | The script code to execute. |
| lang | The language of the script (e.g., PowerShell, CSharp). |
| runImmediately | Whether to run the job immediately upon scheduling. |

## See Also

* enum [ScriptLanguage](../../Kestrun.Scripting/ScriptLanguage)
* class [SchedulerService](../SchedulerService)
* namespace [Kestrun.Scheduling](../../Kestrun)

---

# SchedulerService.Schedule method (7 of 8)

Schedules a script job from a file to run at a specified interval.

```csharp
public void Schedule(string name, TimeSpan interval, FileInfo fileInfo, ScriptLanguage lang, 
    bool runImmediately = false)
```

| parameter | description |
| --- | --- |
| name | The name of the job. |
| interval | The interval between job executions. |
| fileInfo | The file containing the script code to execute. |
| lang | The language of the script (e.g., PowerShell, CSharp). |
| runImmediately | Whether to run the job immediately upon scheduling. |

## See Also

* enum [ScriptLanguage](../../Kestrun.Scripting/ScriptLanguage)
* class [SchedulerService](../SchedulerService)
* namespace [Kestrun.Scheduling](../../Kestrun)

---

# SchedulerService.Schedule method (8 of 8)

Schedules a script job to run at a specified interval.

```csharp
public void Schedule(string name, TimeSpan interval, string code, ScriptLanguage lang, 
    bool runImmediately = false)
```

| parameter | description |
| --- | --- |
| name | The name of the job. |
| interval | The interval between job executions. |
| code | The script code to execute. |
| lang | The language of the script (e.g., PowerShell, CSharp). |
| runImmediately | Whether to run the job immediately upon scheduling. |

## See Also

* enum [ScriptLanguage](../../Kestrun.Scripting/ScriptLanguage)
* class [SchedulerService](../SchedulerService)
* namespace [Kestrun.Scheduling](../../Kestrun)

<!-- DO NOT EDIT: generated by xmldo for Kestrun.dll -->
