#------------------------------------------------------------------------------
# PSOni/Set-Menu                                      
#------------------------------------------------------------------------------
# 
# ! Changes selected items in menu
# < void
# > object array
#
# -----------------------------------------------------------------------------
# 
# Pre  -> Selection, Position in parent scope
# Post -> returns modified Selection based on Position
#
# -----------------------------------------------------------------------------
function Set-Menu {
    $selectionArray = -split $Selection
    
    if ($selectionArray -contains $Position) {
        $result = $selectionArray | Where-Object { $_ -ne $Position } 
    }
    else {
        $selectionArray += , $Position
        $result = $selectionArray
    }

    Set-Variable Selection $result -Scope 1
}

# __END__