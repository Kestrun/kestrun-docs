---
external help file: Kestrun-help.xml
Module Name: Kestrun
online version: https://docs.microsoft.com/en-us/dotnet/api/system.identitymodel.tokens.jwt.jwtsecuritytoken?view=azure-dotnet
schema: 2.0.0
---

# Get-KrCertificatePurpose

## SYNOPSIS
Lists the Enhanced Key Usage values on a certificate.
This function is designed to be used in the context of Kestrun's certificate management.

## SYNTAX

```
Get-KrCertificatePurpose [-Certificate] <X509Certificate2> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## DESCRIPTION
Retrieves the Enhanced Key Usage (EKU) OIDs from a given X509Certificate2 object.
The EKU values indicate the intended purposes of the certificate.

## EXAMPLES

### EXAMPLE 1
```
Get-KrCertificatePurpose -Certificate $cert
This will return the Enhanced Key Usage values for the specified certificate.
```

## PARAMETERS

### -Certificate
The X509Certificate2 object to retrieve the EKU values from.

```yaml
Type: X509Certificate2
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
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

### System.Collections.Generic.IEnumerable`1[[System.String, System.Private.CoreLib, Version=9.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]
## NOTES
This function is part of the Kestrun module.

## RELATED LINKS
