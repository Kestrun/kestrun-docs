---
layout: default
parent: PowerShell Cmdlets
nav_order: 100
render_with_liquid: false
title: Export-KrSharedState
---

# Export-KrSharedState

## SYNOPSIS

Exports a PowerShell object to a serialized XML representation.

## SYNTAX

### ToString (Default)

```powershell
Export-KrSharedState [-InputObject] <Object> [-OutputType <string>] [-Lock <SemaphoreSlim>]
 [-TimeoutMilliseconds <int>] [-Encoding <Encoding>] [<CommonParameters>]
```

### ToFile

```powershell
Export-KrSharedState [-InputObject] <Object> -Path <string> [-OutputType <string>]
 [-Lock <SemaphoreSlim>] [-TimeoutMilliseconds <int>] [-Encoding <Encoding>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Export-KrSharedState serializes a PowerShell object using
[System.Management.Automation.PSSerializer] and returns the serialized
data as a string, as a byte array, or writes it to a file.

Access is synchronized through a shared lock so that callers using the
same lock serialize shared state in a thread-safe manner within the
current process.

## EXAMPLES

### EXAMPLE 1

$xml = Export-KrSharedState -InputObject $state

### EXAMPLE 2

$bytes = Export-KrSharedState -InputObject $state -OutputType ByteArray

### EXAMPLE 3

Export-KrSharedState -InputObject $state -OutputType File -Path '.\state.xml'

### EXAMPLE 4

Export-KrSharedState -InputObject $state -Path '.\state.xml'

### EXAMPLE 5

$lock = Get-KrLock 'sharedstate:cache'
Export-KrSharedState -InputObject $state -Lock $lock

## PARAMETERS

### -Encoding

The text encoding used when converting to bytes or writing to a file.

```yaml
Type: System.Text.Encoding
DefaultValue: '[System.Text.Encoding]::UTF8'
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

### -InputObject

The object to serialize.

```yaml
Type: System.Object
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

### -Lock

The semaphore used to synchronize access to shared state.
If not provided,
the default shared-state lock is used.

```yaml
Type: System.Threading.SemaphoreSlim
DefaultValue: ''
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

### -OutputType

Specifies how the serialized XML is returned:
- String
- ByteArray
- File

When Path is provided, the effective output type is File.
Supplying Path
with a different OutputType value results in an error.

```yaml
Type: System.String
DefaultValue: String
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

### -Path

The destination file path.
When provided, Export-KrSharedState writes the
serialized XML to this file and returns the written file.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ToFile
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TimeoutMilliseconds

The maximum time to wait for the lock.
Use -1 to wait indefinitely.

```yaml
Type: System.Int32
DefaultValue: 30000
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

### System.String

{{ Fill in the Description }}

### System.Byte

{{ Fill in the Description }}

### System.IO.FileInfo

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
