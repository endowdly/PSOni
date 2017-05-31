# TODO: Port this to TOML or YAML

# [ PSOni ]
# [ configuration ]

# [ keybindings ]
$MoveDownKey        = 38,   # <down> 
                      75    # j
$MoveUpKey          = 40,   # <up> 
                      74    # k
$SelectItemKey      = 32    # <space>
$ReturnSelectionKey = 13    # <return>
$ExitOniKey         = 27,   # <esc>
                      81    # q
                      
# [ color ] 
$DefaultColor = 'Green'

# === NOTE ====================================================================
                                                                             <#
----- Keybindings -------------------------------------------------------------

Use virtual key codes; they can be hex, decimal, octal, or binary. Entering an 
 array allows multiple bindings. 

Use basic ASCII table found below to find vKeyCodes

----- Color -------------------------------------------------------------------

PSOni supports changing the Foreground Color only. For all supported colors, 
  run:
         
 System.Enum.GetValues(System.ConsoleColor)
 
            <or>
                                    
 [Enum]::GetValues([ConsoleColor]) 

# === ASCII Table =============================================================

| Decimal Value | Hex | Binary   | Char  | Description             |
|---------------|-----|----------|-------|-------------------------|
| 0             | 00  | 00000000 | NUL   | null                    |
| 1             | 01  | 00000001 | SOH   | start of header         |
| 2             | 02  | 00000010 | STX   | start of text           |
| 3             | 03  | 00000011 | ETX   | end of text             |
| 4             | 04  | 00000100 | EOT   | end of transmission     |
| 5             | 05  | 00000101 | ENQ   | enquiry                 |
| 6             | 06  | 00000110 | ACK   | acknowledge             |
| 7             | 07  | 00000111 | BEL   | bell                    |
| 8             | 08  | 00001000 | BS    | backspace               |
| 9             | 09  | 00001001 | HT    | horizontal tab          |
| 10            | 0A  | 00001010 | LF    | line feed               |
| 11            | 0B  | 00001011 | VT    | vertical tab            |
| 12            | 0C  | 00001100 | FF    | form feed               |
| 13            | 0D  | 00001101 | CR    | enter / carriage return |
| 14            | 0E  | 00001110 | SO    | shift out               |
| 15            | 0F  | 00001111 | SI    | shift in                |
| 16            | 10  | 00010000 | DLE   | data link escape        |
| 17            | 11  | 00010001 | DC1   | device control 1        |
| 18            | 12  | 00010010 | DC2   | device control 2        |
| 19            | 13  | 00010011 | DC3   | device control 3        |
| 20            | 14  | 00010100 | DC4   | device control 4        |
| 21            | 15  | 00010101 | NAK   | negative acknowledge    |
| 22            | 16  | 00010110 | SYN   | synchronize             |
| 23            | 17  | 00010111 | ETB   | end of trans. block     |
| 24            | 18  | 00011000 | CAN   | cancel                  |
| 25            | 19  | 00011001 | EM    | end of medium           |
| 26            | 1A  | 00011010 | SUB   | substitute              |
| 27            | 1B  | 00011011 |  ESC  | escape                  |
| 28            | 1C  | 00011100 |  FS   | file separator          |
| 29            | 1D  | 00011101 | GS    | group separator         |
| 30            | 1E  | 00011110 | RS    | record separator        |
| 31            | 1F  | 00011111 | US    | unit separator          |
| 32            | 20  | 00100000 | Space | space                   |
| 33            | 21  | 00100001 | !     | exclamation mark        |
| 34            | 22  | 00100010 | "     | double quote            |
| 35            | 23  | 00100011 | #     | number                  |
| 36            | 24  | 00100100 | $     | dollar                  |
| 37            | 25  | 00100101 | %     | percent                 |
| 38            | 26  | 00100110 | &     | ampersand               |
| 39            | 27  | 00100111 | '     | single quote            |
| 40            | 28  | 00101000 | (     | left parenthesis        |
| 41            | 29  | 00101001 | )     | right parenthesis       |
| 42            | 2A  | 00101010 | *     | asterisk                |
| 43            | 2B  | 00101011 | +     | plus                    |
| 44            | 2C  | 00101100 | ,     | comma                   |
| 45            | 2D  | 00101101 | -     | minus                   |
| 46            | 2E  | 00101110 | .     | period                  |
| 47            | 2F  | 00101111 | /     | slash                   |
| 48            | 30  | 00110000 | 0     | zero                    |
| 49            | 31  | 00110001 | 1     | one                     |
| 50            | 32  | 00110010 | 2     | two                     |
| 51            | 33  | 00110011 | 3     | three                   |
| 52            | 34  | 00110100 | 4     | four                    |
| 53            | 35  | 00110101 | 5     | five                    |
| 54            | 36  | 00110110 | 6     | six                     |
| 55            | 37  | 00110111 | 7     | seven                   |
| 56            | 38  | 00111000 | 8     | eight                   |
| 57            | 39  | 00111001 | 9     | nine                    |
| 58            | 3A  | 00111010 | :     | colon                   |
| 59            | 3B  | 00111011 | ;     | semicolon               |
| 60            | 3C  | 00111100 | <     | less than               |
| 61            | 3D  | 00111101 | =     | equality sign           |
| 62            | 3E  | 00111110 | >     | greater than            |
| 63            | 3F  | 00111111 | ?     | question mark           |
| 64            | 40  | 01000000 | @     | at sign                 |
| 65            | 41  | 01000001 | A     |                         |
| 66            | 42  | 01000010 | B     |                         |
| 67            | 43  | 01000011 | C     |                         |
| 68            | 44  | 01000100 | D     |                         |
| 69            | 45  | 01000101 | E     |                         |
| 70            | 46  | 01000110 | F     |                         |
| 71            | 47  | 01000111 | G     |                         |
| 72            | 48  | 01001000 | H     |                         |
| 73            | 49  | 01001001 | I     |                         |
| 74            | 4A  | 01001010 | J     |                         |
| 75            | 4B  | 01001011 | K     |                         |
| 76            | 4C  | 01001100 | L     |                         |
| 77            | 4D  | 01001101 | M     |                         |
| 78            | 4E  | 01001110 | N     |                         |
| 79            | 4F  | 01001111 | O     |                         |
| 80            | 50  | 01010000 | P     |                         |
| 81            | 51  | 01010001 | Q     |                         |
| 82            | 52  | 01010010 | R     |                         |
| 83            | 53  | 01010011 | S     |                         |
| 84            | 54  | 01010100 | T     |                         |
| 85            | 55  | 01010101 | U     |                         |
| 86            | 56  | 01010110 | V     |                         |
| 87            | 57  | 01010111 | W     |                         |
| 88            | 58  | 01011000 | X     |                         |
| 89            | 59  | 01011001 | Y     |                         |
| 90            | 5A  | 01011010 | Z     |                         |
| 91            | 5B  | 01011011 | [     | left square bracket     |
| 92            | 5C  | 01011100 | \     | backslash               |
| 93            | 5D  | 01011101 | ]     | right square bracket    |
| 94            | 5E  | 01011110 | ^     | caret / circumflex      |
| 95            | 5F  | 01011111 | _     | underscore              |
| 96            | 60  | 01100000 | `     | grave / accent          |         #>

# __END__ 