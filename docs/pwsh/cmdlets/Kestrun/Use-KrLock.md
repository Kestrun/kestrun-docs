---
layout: default
parent: PowerShell Cmdlets
nav_order: 226
render_with_liquid: false
title: Use-KrLock
---

# Use-KrLock

## SYNOPSIS

Executes a script block while holding a named lock to ensure exclusive access to a resource.

## SYNTAX

### __AllParameterSets

```powershell
Use-KrLock [-Key] <string> [-ScriptBlock] <scriptblock> [-TimeoutMilliseconds <int>]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Use-KrLock function allows you to execute a script block while holding a lock associated with a specified key.
This is useful for synchronizing access to shared resources within the current application instance.
The function retrieves a lock object using the lock registry and attempts to acquire the lock before executing the script block.
If a timeout is specified and the lock cannot be acquired within that time frame, an error is thrown.
After the script block is executed, the lock is released in a finally block to ensure that it happens even if an error occurs during execution.

## EXAMPLES

### EXAMPLE 1

Use-KrLock -Key "MyResourceLock" -ScriptBlock {
    # Code to execute while holding the lock
    Write-Host "This code is running with exclusive access to MyResourceLock."
}
This example demonstrates how to use the Use-KrLock function to execute a script block while holding a lock associated with the key "MyResourceLock".
The code within the script block will have exclusive access to the resource protected by "MyResourceLock", ensuring that no other thread or process can access it concurrently while the script block is executing.

## PARAMETERS

### -Key

The unique identifier for the lock.
This key is used to retrieve the corresponding lock object from the lock registry.
If a lock object does not already exist for this key, a new one will be created.
The key should be a string that uniquely identifies the resource or critical
section that the lock is intended to protect.
It is important to use consistent keys across the application to ensure that the correct locks are retrieved and used for synchronization.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ScriptBlock

The script block to execute while holding the lock.
This is the code that will be run with exclusive access to the resource associated with the lock.
The script block can contain any valid PowerShell code and can utilize the protected resource safely, knowing that it will not be accessed concurrently by other threads  or processes that are using the same lock key.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TimeoutMilliseconds

The maximum time in milliseconds to wait for the lock before timing out.
The default value is -1, which means to wait indefinitely until the lock is acquired.
If a positive value is specified and the lock cannot be acquired within that time frame, an error will be thrown.
This parameter allows you to control how long the function should wait for the lock, which can be useful in scenarios where you want to avoid waiting
indefinitely and prefer to handle lock acquisition failures gracefully.

```yaml
Type: System.Int32
DefaultValue: -1
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

This function is part of the Kestrun framework and is used to manage locks for synchronizing access to shared resources.
It relies on a lock registry to store and retrieve lock objects based on their associated keys.
The locks returned by this function can be used in conjunction with synchronization primitives such as Monitor, Mutex, or
Semaphore to control access to critical sections of code or shared resources in a thread-safe manner.
It is important to ensure that the keys used with this function are consistent and unique to avoid unintended locking behavior.
Additionally, proper handling of lock acquisition and release is crucial to prevent deadlocks and ensure the smooth operation of the application.


## RELATED LINKS

{{ Fill in the related links here }}
