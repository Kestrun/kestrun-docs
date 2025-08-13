---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Get-KestrunRoot

## SYNOPSIS
Retrieves the Kestrun root directory.

## SYNTAX

```
Get-KestrunRoot [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
This function returns the path to the Kestrun root directory, which is used as a base for resolving relative paths in Kestrun applications.

## EXAMPLES

### EXAMPLE 1
```
$kestrunRoot = Get-KestrunRoot
Retrieves the Kestrun root directory and stores it in the variable $kestrunRoot.
```

## PARAMETERS

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

### System.String
## NOTES
This function is designed to be used in the context of a Kestrun server to ensure consistent path resolution.

## RELATED LINKS
