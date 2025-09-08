---
layout: default
parent: PowerShell Cmdlets
title: Add-KrMapRoute
nav_order: 25
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Add-KrMapRoute

## SYNOPSIS
Adds a new map route to the Kestrun server.

## SYNTAX

### ScriptBlock (Default)
```
Add-KrMapRoute [-Server <KestrunHost>] [-Verbs <HttpVerb[]>] [-Pattern <String>] [-ScriptBlock] <ScriptBlock>
 [-AuthorizationSchema <String[]>] [-AuthorizationPolicy <String[]>] [-ExtraImports <String[]>]
 [-ExtraRefs <Assembly[]>] [-Arguments <Hashtable>] [-AllowDuplicate] [-DuplicateAction <String>] [-PassThru]
 [<CommonParameters>]
```

### Options
```
Add-KrMapRoute [-Server <KestrunHost>] -Options <MapRouteOptions> [-AllowDuplicate] [-DuplicateAction <String>]
 [-PassThru] [<CommonParameters>]
```

### CodeFilePath
```
Add-KrMapRoute [-Server <KestrunHost>] [-Verbs <HttpVerb[]>] [-Pattern <String>] -CodeFilePath <String>
 [-AuthorizationSchema <String[]>] [-AuthorizationPolicy <String[]>] [-ExtraImports <String[]>]
 [-ExtraRefs <Assembly[]>] [-Arguments <Hashtable>] [-AllowDuplicate] [-DuplicateAction <String>] [-PassThru]
 [<CommonParameters>]
```

### Code
```
Add-KrMapRoute [-Server <KestrunHost>] [-Verbs <HttpVerb[]>] [-Pattern <String>] -Code <String>
 -Language <ScriptLanguage> [-AuthorizationSchema <String[]>] [-AuthorizationPolicy <String[]>]
 [-ExtraImports <String[]>] [-ExtraRefs <Assembly[]>] [-Arguments <Hashtable>] [-AllowDuplicate]
 [-DuplicateAction <String>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
This function allows you to add a new map route to the Kestrun server by specifying the route path and the script block or code to be executed when the route is accessed.

## EXAMPLES

### EXAMPLE 1
```powershell
Add-KrMapRoute -Server $myServer -Path "/myroute" -ScriptBlock { Write-Host "Hello, World!" }
Adds a new map route to the specified Kestrun server with the given path and script block.
```

### EXAMPLE 2
```powershell
Add-KrMapRoute -Server $myServer -Path "/myroute" -Code "Write-Host 'Hello, World!'" -Language PowerShell
Adds a new map route to the specified Kestrun server with the given path and code.
```

### EXAMPLE 3
```powershell
Get-KrServer | Add-KrMapRoute -Path "/myroute" -ScriptBlock { Write-Host "Hello, World!" } -PassThru
Adds a new map route to the current Kestrun server and returns the route object.
```

## PARAMETERS

### -Server
The Kestrun server instance to which the route will be added.
If not specified, the function will attempt to resolve the current server context.

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
An instance of \`Kestrun.Hosting.Options.MapRouteOptions\` that contains the configuration for the route.
This parameter is used to specify various options for the route, such as HTTP verbs, path, authorization schemes, and more.

```yaml
Type: MapRouteOptions
Parameter Sets: Options
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Verbs
The HTTP verbs (GET, POST, etc.) that the route should respond to.

```yaml
Type: HttpVerb[]
Parameter Sets: ScriptBlock, CodeFilePath, Code
Aliases:
Accepted values: Get, Head, Post, Put, Patch, Delete, Options, Trace, PropFind, PropPatch, MkCol, Copy, Move, Lock, Unlock, Report, Acl, Search, Merge, Bind, Unbind, Rebind, Update, VersionControl, Checkin, Checkout, Uncheckout, MkWorkspace, Label, OrderPatch

Required: False
Position: Named
Default value: @([Kestrun.Utilities.HttpVerb]::Get)
Accept pipeline input: False
Accept wildcard characters: False
```

### -Pattern
The URL path for the new route.

```yaml
Type: String
Parameter Sets: ScriptBlock, CodeFilePath, Code
Aliases: Path

Required: False
Position: Named
Default value: /
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
The script block to be executed when the route is accessed.

```yaml
Type: ScriptBlock
Parameter Sets: ScriptBlock
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Code
The code to be executed when the route is accessed, used in conjunction with the Language parameter.

```yaml
Type: String
Parameter Sets: Code
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Language
The scripting language of the code to be executed.

```yaml
Type: ScriptLanguage
Parameter Sets: Code
Aliases:
Accepted values: Native, PowerShell, CSharp, FSharp, Python, JavaScript, VBNet

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CodeFilePath
The file path to the code to be executed when the route is accessed.

```yaml
Type: String
Parameter Sets: CodeFilePath
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AuthorizationSchema
An optional array of authorization schemes that the route requires.

```yaml
Type: String[]
Parameter Sets: ScriptBlock, CodeFilePath, Code
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AuthorizationPolicy
An optional array of authorization policies that the route requires.

```yaml
Type: String[]
Parameter Sets: ScriptBlock, CodeFilePath, Code
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraImports
An optional array of additional namespaces to import for the route.

```yaml
Type: String[]
Parameter Sets: ScriptBlock, CodeFilePath, Code
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExtraRefs
An optional array of additional assemblies to reference for the route.

```yaml
Type: Assembly[]
Parameter Sets: ScriptBlock, CodeFilePath, Code
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Arguments
An optional hashtable of arguments to pass to the script block or code.

```yaml
Type: Hashtable
Parameter Sets: ScriptBlock, CodeFilePath, Code
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowDuplicate
If specified, allows the addition of duplicate routes with the same path and HTTP verb.

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

### -DuplicateAction
Specifies the action to take if a duplicate route is detected.
Options are 'Throw', 'Skip', 'Allow', or 'Warn'.
Default is 'Throw', which will raise an error if a duplicate route is found.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: Throw
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
If specified, the function will return the created route object.

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

### Returns the Kestrun server instance with the new route added.
## NOTES
This function is part of the Kestrun PowerShell module and is used to manage routes

## RELATED LINKS
