---
layout: default
parent: PowerShell Cmdlets
title: Add-KrDistributedSqlServerCache
nav_order: 13
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrDistributedSqlServerCache

## SYNOPSIS
Adds SQL Server distributed cache services to the Kestrun server.

## SYNTAX

### Items (Default)
```
Add-KrDistributedSqlServerCache [-Server <KestrunHost>] [-ConnectionString <String>] [-SchemaName <String>]
 [-TableName <String>] [-ExpiredItemsDeletionInterval <Int32>] [-DefaultSlidingExpiration <Int32>] [-PassThru]
 [<CommonParameters>]
```

### Options
```
Add-KrDistributedSqlServerCache [-Server <KestrunHost>] -Options <SqlServerCacheOptions> [-PassThru]
 [<CommonParameters>]
```

## DESCRIPTION
Configures the Kestrun server to use SQL Server as the distributed cache for session state.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrDistributedSqlServerCache -Server $myServer -Options $mySqlOptions
Adds SQL Server distributed cache services to the specified Kestrun server with the provided options.
```

### EXAMPLE 2
```powershell
Add-KrDistributedSqlServerCache -ConnectionString "Server=myServer;Database=myDB;User Id=myUser;Password=myPass;" -SchemaName "dbo" -TableName "MyCache"
Configures SQL Server distributed cache with the specified connection string, schema name, and table name.
```

### EXAMPLE 3
```powershell
Add-KrDistributedSqlServerCache -ExpiredItemsDeletionInterval 1800 -DefaultSlidingExpiration 1200
Configures SQL Server distributed cache with an expired items deletion interval of 1800 seconds and a default sliding expiration of 1200 seconds.
```

## PARAMETERS

### -Server
The Kestrun server instance to configure.
If not specified, the current server instance is used.

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

### -Options
The SQL Server cache options to configure.
If not specified, default options are used.

```yaml
Type: SqlServerCacheOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ConnectionString
The connection string to the SQL Server database.
If not specified, the default connection string is used.

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SchemaName
The schema name to use for the SQL Server cache.
If not specified, the default schema name is used.

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TableName
The table name to use for the SQL Server cache.
If not specified, the default table name is used.

```yaml
Type: String
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpiredItemsDeletionInterval
The interval in seconds at which expired items will be deleted from the cache.
If not specified, the default is 30 minutes.

```yaml
Type: Int32
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultSlidingExpiration
The default sliding expiration in seconds for cache items.
If not specified, the default is 20 minutes.

```yaml
Type: Int32
Parameter Sets: Items
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, the cmdlet returns the modified server instance after configuration.

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
This cmdlet is part of the Kestrun PowerShell module and is used to configure SQL Server distributed cache for Kestrun servers.

## RELATED LINKS
