#------------------------------------------------------------------------------
# PSOni/New-Menu                                       
#------------------------------------------------------------------------------
# 
# ! Draws/Redraws a console menu
# < void
# > void
#
# -----------------------------------------------------------------------------
# 
# Pre  -> MenuItems, Selection, bool MultiSelect, int Position
# Post -> draws menu based on items in parent scope
#
# -----------------------------------------------------------------------------
function New-Menu {
    $n = $MenuItems.Count - 1
    
    foreach ($index in 0..$n) {
     
        if ($MenuItems[$index] -ne $null) {
            $item = $MenuItems[$index]
            
            if ($SelectMultiple) { 
            
                if ($Selection -contains $index) {
                    $item = '[x] ' + $item
                } 
                else {
                    $item = '[ ] ' + $item
                }
            }
            
            if ($index -eq $Position) {
                Write-Host "> $item" -ForegroundColor $Color
            }
            else {
                Write-Host "  $item"
            }
        }#fi
    }#end
}

# __END__
