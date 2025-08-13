---
layout: default
parent: PowerShell Cmdlets
title: New-KrClaimPolicy
nav_order: 66
render_with_liquid: false
---
---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/kestrun.authentication.claimpolicybuilder
schema: 2.0.0
---

# New-KrClaimPolicy

## SYNOPSIS
Creates a new claim policy builder instance.

## SYNTAX

```
New-KrClaimPolicy [-ProgressAction <ActionPreference>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
This function initializes a new instance of the Kestrun.Claims.ClaimPolicyBuilder class, which is used to build claim policies.

## EXAMPLES

### EXAMPLE 1
```
$builder = New-KrClaimPolicy
This example creates a new claim policy builder instance.
```

## PARAMETERS

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

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
Prompts you for confirmation before running the cmdlet.

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

### [Kestrun.Claims.ClaimPolicyBuilder]
### A new instance of the claim policy builder.
## NOTES
This function is part of the Kestrun.Claims module and is used to manage claim policies.
Maps to ClaimPolicyBuilder constructor.

## RELATED LINKS

[https://docs.microsoft.com/en-us/dotnet/api/kestrun.authentication.claimpolicybuilder](https://docs.microsoft.com/en-us/dotnet/api/kestrun.authentication.claimpolicybuilder)

