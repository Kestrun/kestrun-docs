---
layout: default
title: "UserIdentityClaim enumeration"
parent: "Kestrun.Claims"
grand_parent: "C# API"
---
# UserIdentityClaim enumeration

Represents the set of claims supported by Kestrun for authentication and authorization purposes.

```csharp
public enum UserIdentityClaim
```

## Values

| name | value | description |
| --- | --- | --- |
| Actor | `0` | Specifies the actor claim, representing the identity of the acting party. http://schemas.microsoft.com/ws/2008/06/identity/claims/actor |
| Anonymous | `1` | Specifies the anonymous claim, representing an unauthenticated user. http://schemas.microsoft.com/ws/2008/06/identity/claims/anonymous |
| Authentication | `2` | Specifies the authentication claim, representing the authentication method used. http://schemas.microsoft.com/ws/2008/06/identity/claims/authentication |
| AuthenticationInstant | `3` | Specifies the authentication instant claim, representing the time at which the user was authenticated. http://schemas.microsoft.com/ws/2008/06/identity/claims/authenticationinstant |
| AuthenticationMethod | `4` | Specifies the authentication method claim, representing the method used to authenticate the user. http://schemas.microsoft.com/ws/2008/06/identity/claims/authenticationmethod |
| AuthorizationDecision | `5` | Specifies the authorization decision claim, representing the decision made by the authorization system. http://schemas.microsoft.com/ws/2008/06/identity/claims/authorizationdecision |
| Country | `6` | Specifies the country claim, representing the country of the user. http://schemas.microsoft.com/ws/2008/06/identity/claims/country |
| DateOfBirth | `7` | Specifies the date of birth claim, representing the user's date of birth. http://schemas.microsoft.com/ws/2008/06/identity/claims/dateofbirth |
| Dns | `8` | Specifies the DNS claim, representing the DNS name of the user. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/dns |
| DenyOnlyPrimaryGroupSid | `9` | Specifies the deny only primary group SID claim, representing a security identifier for a group. http://schemas.microsoft.com/ws/2008/06/identity/claims/denyonlyprimarygroupsid |
| DenyOnlyPrimarySid | `10` | Specifies the deny only primary sid claim, representing a security identifier for a user. http://schemas.microsoft.com/ws/2008/06/identity/claims/denyonlyprimarysid |
| DenyOnlySid | `11` | Specifies the deny only sid claim, representing a security identifier. http://schemas.microsoft.com/ws/2008/06/identity/claims/denyonlysid |
| DenyOnlyWindowsDeviceGroup | `12` | Specifies the deny only Windows device group claim, representing a security identifier for a Windows device group. http://schemas.microsoft.com/ws/2008/06/identity/claims/denyonlywindowsdevicegroup |
| Email | `13` | Specifies the email claim, representing the user's email address. http://schemas.microsoft.com/ws/2008/06/identity/claims/email |
| EmailAddress | `14` | Specifies the email address claim, representing the user's email address. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress |
| Expiration | `15` | Specifies the expiration claim, representing the expiration time of the token. http://schemas.microsoft.com/ws/2008/06/identity/claims/expiration |
| GivenName | `16` | Specifies the given name claim, representing the user's first name. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/givenname |
| Gender | `17` | Specifies the gender claim, representing the user's gender. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/gender |
| GroupSid | `18` | Specifies the group SID claim, representing the security identifier for a group. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/groupsid |
| Hash | `19` | Specifies the hash claim, representing a hash of the user's data. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/hash |
| HomePhone | `20` | Specifies the home phone claim, representing the user's home phone number. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/homephone |
| IsPersistent | `21` | Specifies the is persistent claim, representing whether the user's session is persistent. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/ispersistent |
| Issuer | `22` | Specifies the issuer claim, representing the issuer of the token. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/issuer |
| Locality | `23` | Specifies the locality claim, representing the user's locality. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/locality |
| MobilePhone | `24` | Specifies the mobile phone claim, representing the user's mobile phone number. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/mobilephone |
| Name | `25` | Specifies the name claim, representing the user's full name. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name |
| NameIdentifier | `26` | Specifies the name identifier claim, representing the user's unique identifier. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier |
| OtherPhone | `27` | Specifies the other phone claim, representing the user's other phone number. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/otherphone |
| PostalCode | `28` | Specifies the postal code claim, representing the user's postal code. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/postalcode |
| PrimaryGroupSid | `29` | Specifies the primary group SID claim, representing the primary security identifier for a group. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/primarygroupsid |
| Ppid | `30` | Specifies the personal identifier claim, representing the user's personal identifier. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/ppid |
| PrivatePpid | `31` | Specifies the private personal identifier claim, representing the user's private personal identifier. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/privateppid |
| Role | `32` | Specifies the role claim, representing the user's role in the system. http://schemas.microsoft.com/ws/2008/06/identity/claims/role |
| Rsa | `33` | Specifies the RSA claim, representing the user's RSA public key. http://schemas.microsoft.com/ws/2008/06/identity/claims/rsa |
| SerialNumber | `34` | Specifies the serial number claim, representing the user's serial number. http://schemas.microsoft.com/ws/2008/06/identity/claims/serialnumber |
| Sid | `35` | Specifies the sid claim, representing the security identifier for a user. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/sid |
| StateOrProvince | `36` | Specifies the state or province claim, representing the user's state or province. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/stateorprovince |
| Spn | `37` | Specifies the service principal name (SPN) claim, representing the SPN for the user. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/spn |
| StreetAddress | `38` | Specifies the street address claim, representing the user's street address. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/streetaddress |
| Surname | `39` | Specifies the surname claim, representing the user's last name. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname |
| Thumbprint | `40` | Specifies the thumbprint claim, representing the user's certificate thumbprint. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/thumbprint |
| UserData | `41` | Specifies the user data claim, representing additional user data. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/userdata |
| Upn | `42` | Specifies the upn claim, representing the user's User Principal Name. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/upn |
| Uri | `43` | Specifies the URI claim, representing a URI associated with the user. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/uri |
| Version | `44` | Specifies the version claim, representing the version of the user's data. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/version |
| Webpage | `45` | Specifies the webpage claim, representing the user's webpage. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/webpage |
| System | `46` | Specifies the system claim, representing the user's system information. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/system |
| WindowsAccountName | `47` | Specifies the Windows account name claim, representing the user's Windows account name. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/windowsaccountname |
| WindowsDevice | `48` | Specifies the Windows device claim, representing the user's Windows device information. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/windowsdevice |
| WindowsDeviceGroup | `49` | Specifies the Windows device group claim, representing the user's Windows device group information. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/windowsdevicegroup |
| WindowsFqbnVersion | `50` | Specifies the Windows FQBN version claim, representing the version of the Windows device. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/windowsfqbnversion |
| WindowsGroupSid | `51` | Specifies the Windows group SID claim, representing the security identifier for a Windows group. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/windowsgroupsid |
| WindowsGroup | `52` | Specifies the Windows group claim, representing the user's Windows group information. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/windowsgroup |
| WindowsDeviceClaim | `53` | Specifies the Windows device claim, representing the user's Windows device information. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/windowsdeviceClaim |
| WindowsSubAuthority | `54` | Specifies the Windows sub-authority claim, representing a sub-authority in the Windows security identifier. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/windowssubauthority |
| WindowsSid | `55` | Specifies the Windows SID claim, representing the security identifier for a Windows user. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/windowsid |
| PrimarySid | `56` | Specifies the primary SID claim, representing the primary security identifier for a user. http://schemas.xmlsoap.org/ws/2005/05/identity/claims/primarysid |

## See Also

* namespace [Kestrun.Claims](../Kestrun)

<!-- DO NOT EDIT: generated by xmldo for Kestrun.dll -->
