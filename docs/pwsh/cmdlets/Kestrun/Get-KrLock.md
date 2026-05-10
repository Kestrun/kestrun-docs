---
layout: default
parent: PowerShell Cmdlets
nav_order: 114
render_with_liquid: false
title: Get-KrLock
---

# Get-KrLock

## SYNOPSIS

Retrieves a lock object associated with the specified key, creating it if it does not already exist.
This lock can be used to synchronize access to shared resources across different parts of the application within the current process.

## SYNTAX

### __AllParameterSets

```powershell
Get-KrLock [-Key] <string> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

The Get-KrLock function is designed to provide a mechanism for obtaining a lock object that is associated with a specific key.
If a lock object for the given key does not already exist, it will be created.
This allows for synchronization of access to shared resources that are identified by the key,
ensuring that only one thread within the current process can access the resource at a time when using the lock.
The function uses a process-local registry of locks to manage and retrieve lock objects based on their associated keys.
This is particularly useful in scenarios where multiple threads or runspaces in the same application instance need to coordinate access to shared resources, such as files, shared state, or critical sections of code.
It does not synchronize access across separate processes or application instances.

## EXAMPLES

### EXAMPLE 1

$lock = Get-KrLock -Key "MyResourceLock"
This example demonstrates how to retrieve a lock object associated with the key "MyResourceLock".
If a lock object for this key does not already exist, it will be created. The returned lock object can then be used to synchronize
access to the resource identified by "MyResourceLock" across different parts of the application within the current process.

## PARAMETERS

### -Key

The unique identifier for the lock.
This key is used to retrieve the corresponding lock object from the lock registry.
If a lock object does not already exist for this key, a new one will be created.
The key should be a string that uniquely identifies the resource
or critical section that the lock is intended to protect.
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

This function is part of the Kestrun framework and is used to manage locks for synchronizing access to shared resources.
It relies on a process-local lock registry to store and retrieve lock objects based on their associated keys.
The locks returned by this function can be used in conjunction with synchronization primitives such as Monitor, Mutex,
or Semaphore to control access to critical sections of code or shared resources in a thread-safe manner.
It is important to ensure that the keys used with this function are consistent and unique to avoid unintended locking behavior.
Additionally, proper handling of lock acquisition and release is crucial to prevent deadlocks and ensure the smooth operation of the application.


## RELATED LINKS

{{ Fill in the related links here }}
