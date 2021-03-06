<#
  .SYNOPSIS
    Draws a console menu
  .DESCRIPTION
    Draws a console menu; not compatible with PowerShell ISE
  .PARAMETER MenuItem
    Item options in menu
  .PARAMETER Index
    Instead of returning selected values, return selected indices
  .PARAMETER SelectMultiple
    Select multiple items to return
  .PARAMETER Color
    Select the color highlighting. Defaults to config color. 
  .INPUTS
    System.Array        
  .OUTPUTS
    System.Array or Object
  .EXAMPLE
    Invoke-Menu -MenuItems $MenuOpts -SelectMultiple -Color Blue
  .EXAMPLE
    1..10 | menu
  .NOTES
    Config file located in PSOni/lib/config.ps1
#>
function Invoke-Menu {
    [Cmdletbinding()]
    param (
        [Parameter(Mandatory=1,
                   Position=0,
                   ValueFromPipeline=1)]
        [Array]         $MenuItems,
        [Switch]        $Index,
        [Switch]        $SelectMultiple,
        [Parameter(Position=1)]
        [ConsoleColor]  $Color=$MenuColor
    )	
    
    $Position = 0
    $Selection = @()
    $vKeyCode = 0
    $origin = [System.Console]::CursorTop      # get current cursor position
    [System.Console]::CursorVisible = $false   # stop cursor blink
    
    if ($MenuItems.Count -gt 0) {
        New-Menu
        
        while ($vKeyCode -ne $ReturnSelectionKey) {
            $press = $Host.UI.RawUI.ReadKey('NoEcho, IncludeKeyDown')
            $vKeyCode = $press.VirtualKeyCode
#             $vKeyCode = Read-Host
            if ($ExitOniKey -contains $vKeyCode) { $Position = $null; break } 
            
            switch ($vKeyCode) {
                { $MoveUpKey -contains $_ }       { $Position++ }
                { $MoveDownKey -contains $_ }     { $Position-- }
                { $SelectItemKey -contains $_ }   { Set-Menu }
            }
            
            if ($Position -lt 0) { $Position = $MenuItems.Count - 1 }  # roll up on underflow
            if ($Position -gt $MenuItems.Count - 1) { $Position = 0 }  # roll down on overflow 
            
            [System.Console]::SetCursorPosition(0, $origin)            # move cursor to top
            New-Menu                                                   # redraw menu
        }#done
    }
    else {
        return $MenuItems
    }#fi
    
    [System.Console]::CursorVisible = $true
       
    if ($Position -ne $null -and -not $Index) {
        if ($SelectMultiple) {
            if (!$Selection) { return }
             
            $MenuItems[$Selection];
        } 
        else { 
            $MenuItems[$Position];
        }
    }
    else {
        if ($SelectMultiple) {
            $Selection;
        }
        else {
            $Position;
        }
    }# fi
}

# __END__
