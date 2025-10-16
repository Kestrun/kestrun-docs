---
layout: default
parent: PowerShell Cmdlets
title: Invoke-KrCookieSignOut
nav_order: 103
render_with_liquid: false
external help file: Kestrun-help.xml
Module Name: Kestrun
online version:
schema: 2.0.0
---

# Invoke-KrCookieSignOut

## SYNOPSIS
Signs out the current user by removing their authentication cookie for the given scheme.

## SYNTAX

```
Invoke-KrCookieSignOut [[-Scheme] <String>] [-Redirect] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Wraps SignOutAsync on the current HTTP context to remove a cookie-based session.
Designed for use inside Kestrun route script blocks where $Context is available.

## EXAMPLES

### EXAMPLE 1
```powershell
Invoke-KrCookieSignOut  # Signs out the current user from the default 'Cookies' scheme.
```

### EXAMPLE 2
```powershell
Invoke-KrCookieSignOut -Scheme 'MyCookieScheme'  # Signs out the current user from the specified scheme.
```

## PARAMETERS

### -Scheme
Authentication scheme to use (default 'Cookies').

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: Cookies
Accept pipeline input: False
Accept wildcard characters: False
```

### -Redirect
If specified, redirects the user to the login path after signing out.
If the login path is not configured, redirects to '/'.

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

### -WhatIf
Shows what would happen if the command runs.
The command is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the command.
The command is not run unless you respond
affirmatively.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

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

### None
## NOTES

## RELATED LINKS
