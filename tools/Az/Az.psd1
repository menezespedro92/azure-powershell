#
# Module manifest for module 'Az'
#
# Generated by: Microsoft Corporation
#
# Generated on: 11/19/2019
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '0.10.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'd48d710e-85cb-46a1-990f-22dae76f6b5f'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Cmdlets to manage resources in Azure. This module is compatible with WindowsPowerShell and PowerShell Core.

For more information about the Az module, please visit the following: https://docs.microsoft.com/en-us/powershell/azure/'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Az.Accounts'; ModuleVersion = '1.6.4'; }, 
               @{ModuleName = 'Az.Billing'; RequiredVersion = '0.10.0'; }, 
               @{ModuleName = 'Az.Compute'; RequiredVersion = '0.10.0'; }, 
               @{ModuleName = 'Az.DataBoxEdge'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.Dns'; RequiredVersion = '0.10.0'; }, 
               @{ModuleName = 'Az.EventHub'; RequiredVersion = '1.4.3'; }, 
               @{ModuleName = 'Az.IotHub'; RequiredVersion = '2.0.1'; }, 
               @{ModuleName = 'Az.KeyVault'; RequiredVersion = '0.10.0'; }, 
               @{ModuleName = 'Az.Monitor'; RequiredVersion = '1.5.0'; }, 
               @{ModuleName = 'Az.Network'; RequiredVersion = '0.10.0'; }, 
               @{ModuleName = 'Az.Resources'; RequiredVersion = '0.10.0'; }, 
               @{ModuleName = 'Az.Storage'; RequiredVersion = '0.10.0'; }, 
               @{ModuleName = 'Az.Websites'; RequiredVersion = '0.10.0'; })

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ARM','ResourceManager','Linux','AzureAutomationNotSupported'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '3.1.0 - November 2019
Az.Compute
* VM Reapply feature
    - Add Reapply parameter to Set-AzVM cmdlet
* VM Scale Set AutomaticRepairs feature:
    - Add EnableAutomaticRepair, AutomaticRepairGracePeriod, and AutomaticRepairMaxInstanceRepairsPercent parameters to the following cmdlets:
        New-AzVmssConfig
        Update-AzVmss
* Cross tenant gallery image support for New-AzVM
* Add ''Spot'' to the argument completer of Priority parameter in New-AzVM, New-AzVMConfig and New-AzVmss cmdlets
* Add DiskIOPSReadWrite and DiskMBpsReadWrite parameters to Add-AzVmssDataDisk cmdlet
* Change SourceImageId parameter of New-AzGalleryImageVersion cmdlet to optional
* Add OSDiskImage and DataDiskImage parameters to New-AzGalleryImageVersion cmdlet
* Add HyperVGeneration parameter to New-AzGalleryImageDefinition cmdlet
* Add SkipExtensionsOnOverprovisionedVMs parameters to New-AzVmss, New-AzVmssConfig and Update-AzVmss cmdlets

Az.DataBoxEdge
* Added cmdlet `Get-AzDataBoxEdgeOrder`
    - Get the Order
* Added cmdlet `New-AzDataBoxEdgeOrder`
    - Create new Order
* Added cmdlet `Remove-AzDataBoxEdgeOrder`
    - Remove the Order
* Change in cmdlet `New-AzDataBoxEdgeShare`
    - Now creates Local Share
* Added cmdlet `Set-AzDataBoxEdgeRole`
    - Now IotRole can be mapped to Share
* Added cmdlet `Invoke-AzDataBoxEdgeDevice`
    - Invoke scan update, download update, install updates on the device
* Added cmdlet `Get-AzDataBoxEdgeTrigger`
    - Gets the information about Triggers
* Added cmdlet `New-AzDataBoxEdgeTrigger`
    - Create new Triggers
* Added cmdlet `Remove-AzDataBoxEdgeTrigger`
    - Remove the Triggers

Az.EventHub
* Fix for issue 10301 : Fix the SAS Token date format

Az.Network
* Change ''Start-AzVirtualNetworkGatewayConnectionPacketCapture.md'' and ''Start-AzVirtualnetworkGatewayPacketCapture.md'' FilterData option examples.

Az.Resources
- Updated policy cmdlets to use new api version 2019-06-01 that has new EnforcementMode property in policy assignment.
- Updated create policy definition help example
- Fix bug Remove-AZADServicePrincipal -ServicePrincipalName, throw null reference when service principal name not found.
- Fix bug New-AZADServicePrincipal, throw null reference when tenant doesn''t have any subscription.
- Change New-AzAdServicePrincipal to add credentials only to associated application.
'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

