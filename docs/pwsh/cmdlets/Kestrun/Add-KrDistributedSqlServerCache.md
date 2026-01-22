---
layout: default
parent: PowerShell Cmdlets
nav_order: 16
render_with_liquid: false
ocument type: cmdlet
external help file: Kestrun-Help.xml
HelpUri: https://docs.kestrun.dev/docs/powershell/kestrun/middleware
Locale: en-US
Module Name: Kestrun
ms.date: 01/22/2026
PlatyPS schema version: 2024-05-01
title: Add-KrDistributedSqlServerCache
---

# Add-KrDistributedSqlServerCache

## SYNOPSIS

Adds SQL Server distributed cache services to the Kestrun server.

## SYNTAX

### Items (Default)

```powershell
Add-KrDistributedSqlServerCache [-Server <KestrunHost>] [-ConnectionString <string>]
 [-SchemaName <string>] [-TableName <string>] [-ExpiredItemsDeletionInterval <int>]
 [-DefaultSlidingExpiration <int>] [-PassThru] [<CommonParameters>]
```

### Options

```powershell
Add-KrDistributedSqlServerCache -Options <SqlServerCacheOptions> [-Server <KestrunHost>] [-PassThru]
 [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Configures the Kestrun server to use SQL Server as the distributed cache for session state.

## EXAMPLES

### EXAMPLE 1

Add-KrDistributedSqlServerCache -Server $myServer -Options $mySqlOptions
Adds SQL Server distributed cache services to the specified Kestrun server with the provided options.

### EXAMPLE 2

Add-KrDistributedSqlServerCache -ConnectionString "Server=myServer;Database=myDB;User Id=myUser;Password=myPass;" -SchemaName "dbo" -TableName "MyCache"
Configures SQL Server distributed cache with the specified connection string, schema name, and table name.

### EXAMPLE 3

Add-KrDistributedSqlServerCache -ExpiredItemsDeletionInterval 1800 -DefaultSlidingExpiration 1200
Configures SQL Server distributed cache with an expired items deletion interval of 1800 seconds and a default sliding expiration of 1200 seconds.

## PARAMETERS

### -ConnectionString

The connection string to the SQL Server database.
If not specified, the default connection string is used.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DefaultSlidingExpiration

The default sliding expiration in seconds for cache items.
If not specified, the default is 20 minutes.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExpiredItemsDeletionInterval

The interval in seconds at which expired items will be deleted from the cache.
If not specified, the default is 30 minutes.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Options

The SQL Server cache options to configure.
If not specified, default options are used.

```yaml
Type: Microsoft.Extensions.Caching.SqlServer.SqlServerCacheOptions
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Options
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

If specified, the cmdlet returns the modified server instance after configuration.

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

### -SchemaName

The schema name to use for the SQL Server cache.
If not specified, the default schema name is used.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Server

The Kestrun server instance to configure.
If not specified, the current server instance is used.

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

### -TableName

The table name to use for the SQL Server cache.
If not specified, the default table name is used.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Items
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

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## OUTPUTS

### Kestrun.Hosting.KestrunHost

{{ Fill in the Description }}

## NOTES

This cmdlet is part of the Kestrun PowerShell module and is used to configure SQL Server distributed cache for Kestrun servers.


## RELATED LINKS

- [](https://docs.kestrun.dev/docs/powershell/kestrun/middleware)