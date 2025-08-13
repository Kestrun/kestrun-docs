---
title: Test-KrRoute
nav_order: 92
render_with_liquid: false
---
---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Test-KrRoute

## SYNOPSIS
Tests if a route exists in the Kestrun host.

## SYNTAX

```
Test-KrRoute [-Path] <String> [[-Verbs] <HttpVerb[]>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
{{ Fill in the Description }}

## EXAMPLES

### EXAMPLE 1
```
Test-KrRoute -Path "/api/test" -Verbs "GET"
# Tests if a GET route exists for "/api/test".
```

## PARAMETERS

### -Path
The path of the route to test.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Verbs
The HTTP verb(s) to test for the route.

```yaml
Type: HttpVerb[]
Parameter Sets: (All)
Aliases:
Accepted values: Get, Head, Post, Put, Patch, Delete, Options, Trace, PropFind, PropPatch, MkCol, Copy, Move, Lock, Unlock, Report, Acl, Search, Merge, Bind, Unbind, Rebind, Update, VersionControl, Checkin, Checkout, Uncheckout, MkWorkspace, Label, OrderPatch

Required: False
Position: 2
Default value: @([Kestrun.Utilities.HttpVerb]::Get)
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction
{{ Fill ProgressAction Description }}

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Boolean
## NOTES
This function is part of the Kestrun PowerShell module and is used to manage routes.

## RELATED LINKS
