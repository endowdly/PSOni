#------------------------------------------------------------------------------
#                           PSOni Module
#------------------------------------------------------------------------------

# --- Module Parameters -------------------------------------------------------
param (
    <# Empty #>
)

# --- Get Files ---------------------------------------------------------------
$public  = @(Get-ChildItem $PSScriptRoot\Public\*.ps1)
$private = @(Get-ChildItem $PSScriptRoot\Private\*.ps1)
$files = $public + $private

# --- Source Files ------------------------------------------------------------
foreach ($file in $files) { 
    try 
        { . $file.FullName } 
    catch 
        { $loadErr += , $file.Name }
}
    
if ($loadErr) {
    Write-Host 'Failed to load: ' -ForegroundColor Red 
    foreach ($err in $loadErr) { Write-Host $loadErr }
    throw 'PSOni -> fatal load error -- aborting'
}    

# --- Create Initial Config File and Variables --------------------------------
# Empty

# --- Read Config File and Variables ------------------------------------------
. $PSScriptRoot/config.ps1

# --- Set Private Module Variables --------------------------------------------
$MenuColor = $DefaultColor

# --- Export Public Functions and Variables -----------------------------------
$alias:menu = 'Invoke-Menu'
$functionsToExport = $public | Foreach-Object { $_.BaseName }
 
Export-ModuleMember -Function $functionsToExport -Alias menu

# --- Module Specific Actions -------------------------------------------------
if ($Host.Name -like '*ISE*') {
    $warningMessage = 'PSOni -> load into ISE detected -- this menu system ' +
                      'only functions in a Console.'
                      
    Write-Warning $warningMessage
}

# __END__