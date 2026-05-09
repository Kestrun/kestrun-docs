---
layout: default
parent: PowerShell Cmdlets
nav_order: 153
render_with_liquid: false
title: New-KrDockerDeployment

# New-KrDockerDeployment

## SYNOPSIS

Creates a Docker Compose deployment bundle from a Kestrun service package.

## SYNTAX

### __AllParameterSets

```powershell
New-KrDockerDeployment [-PackagePath] <string> [[-OutputPath] <string>] [[-ImageName] <string>]
 [[-ServiceName] <string>] [[-PublishedPort] <int>] [[-ContainerPort] <int>]
 [[-KestrunModulePath] <string>] [-Force] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Expands a `.krpack` service package, validates its `Service.psd1` descriptor,
and generates a self-contained Docker deployment bundle that includes:

- `docker-compose.yml`
- `Dockerfile`
- `entrypoint.sh`
- the input `.krpack` copied as `app.krpack`
- a local copy of the current `Kestrun` PowerShell module
- `.dockerignore`

The generated container uses the Microsoft ASP.NET Core .NET 10 base image
and installs PowerShell from the Microsoft Linux package repository.

## EXAMPLES

### EXAMPLE 1

New-KrDockerDeployment -PackagePath .\my-service.krpack

### EXAMPLE 2

New-KrDockerDeployment -PackagePath .\my-service.krpack -PublishedPort 5000 -OutputPath .\deploy\docker

### EXAMPLE 3

New-KrDockerDeployment -PackagePath .\my-service.krpack -ImageName 'my-registry/my-service:1.2.0' -Force

## PARAMETERS

### -Confirm

Prompts for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- cf
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

### -ContainerPort

Container port exposed by the generated image and used by `ASPNETCORE_URLS`.
Defaults to `8080`.

```yaml
Type: System.Int32
DefaultValue: 8080
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Force

Overwrite an existing generated deployment bundle.

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

### -ImageName

Docker image name written to `docker-compose.yml`.
Defaults to `kestrun-<service-name-normalized>:<version>`.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -KestrunModulePath

Optional path to the `Kestrun` module root folder to stage into the deployment bundle.
Defaults to the currently loaded module source folder.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OutputPath

Output directory for the generated deployment bundle.
Defaults to `<service-name>-docker` in the current directory.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PackagePath

Path to the `.krpack` service package.

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

### -PublishedPort

Host port mapped by Docker Compose.
Defaults to `8080`.

```yaml
Type: System.Int32
DefaultValue: 8080
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ServiceName

Docker Compose service name and container name.
Defaults to the service descriptor name normalized to lowercase kebab-case.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

Shows what would happen if the cmdlet runs.
The cmdlet is not executed.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: ''
SupportsWildcards: false
Aliases:
- wi
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

### System.Management.Automation.PSObject

{{ Fill in the Description }}

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}
