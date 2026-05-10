---
layout: default
parent: PowerShell Cmdlets
nav_order: 140
render_with_liquid: false
title: Import-KrSharedState
---

# Import-KrSharedState

## SYNOPSIS

Imports a PowerShell object from a serialized XML representation.

## SYNTAX

### FromString (Default)

```powershell
Import-KrSharedState [-InputString] <string> [-Lock <SemaphoreSlim>] [-TimeoutMilliseconds <int>]
 [-Encoding <Encoding>] [<CommonParameters>]
```

### FromBytes

```powershell
Import-KrSharedState [-InputBytes] <byte[]> [-Lock <SemaphoreSlim>] [-TimeoutMilliseconds <int>]
 [-Encoding <Encoding>] [<CommonParameters>]
```

### FromFile

```powershell
Import-KrSharedState [-Path] <string> [-Lock <SemaphoreSlim>] [-TimeoutMilliseconds <int>]
 [-Encoding <Encoding>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Import-KrSharedState deserializes a PowerShell object that was previously
created by Export-KrSharedState.
The serialized content can come from a
string, a byte array, or a file.

Access is synchronized through a shared lock so that callers using the
same lock deserialize shared state in a thread-safe manner within the
current process.

## EXAMPLES

### EXAMPLE 1

$state = Import-KrSharedState -InputString $xml

### EXAMPLE 2

$state = Import-KrSharedState -InputBytes $bytes

### EXAMPLE 3

$state = Import-KrSharedState -Path '.\state.xml'

### EXAMPLE 4

$lock = Get-KrLock 'sharedstate:cache'
$state = Import-KrSharedState -InputString $xml -Lock $lock

## PARAMETERS

### -Encoding

The text encoding used when converting bytes to text or reading from a file.

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

### -InputBytes

The serialized XML content as a byte array.
If the byte array is null or empty, Import-KrSharedState returns null.

```yaml
Type: System.Byte[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FromBytes
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -InputString

The serialized XML content as a string.
If the string is null or empty, Import-KrSharedState returns null.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FromString
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

### -Path

The file path containing the serialized XML content.
If the path is null, empty, or whitespace, Import-KrSharedState returns null.
If the file does not exist, an error is thrown.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: FromFile
  Position: 0
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

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
