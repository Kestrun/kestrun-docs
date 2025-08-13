---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Get-KrJsonFormatter

## SYNOPSIS
Returns new instance of Serilog.Formatting.Json.JsonFormatter.

## SYNTAX

```
Get-KrJsonFormatter [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Returns new instance of Serilog.Formatting.Json.JsonFormatter that can be used with File or Console sink.

## EXAMPLES

### EXAMPLE 1
```
New-KrLogger | Add-KrSinkFile -Path 'C:\Data\Log\test.log' -Formatter (Get-KrJsonFormatter) | Register-KrLogger
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

### None
## OUTPUTS

### Instance of Serilog.Formatting.Json.JsonFormatter
## NOTES

## RELATED LINKS
