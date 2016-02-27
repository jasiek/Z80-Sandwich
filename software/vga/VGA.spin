CON
    _CLKMODE = XTAL1+PLL16X
    _CLKFREQ = 80_000_000
    rows = display#rows
    cols = display#cols
    chars = rows * cols
OBJ
    display : "VGA_HiRes_Text"

VAR
    WORD Colors[rows]
    BYTE Characters[chars]
    BYTE cx0, cy0, cm0, cx1, cy1, cm1
    LONG Sync
    BYTE CurrentRow, CurrentCol
 
PUB Main | Address, Data
    CurrentRow := 0
    CurrentCol := 0

    display.start (16, @Characters, @Colors, @cx0, @Sync)
    ' Set P0-P15 as inputs
    DIRA[0..15]~
    ' Set IORQ pin as input
    DIRA[24]~
    
    repeat
       ' Wait until P24 is pulled low.
       WAITPEQ(0, |< 24, 0)
       ' Read address and data pins
       Address := INA[0..7]
       Data := INA[8..15]
    
       CASE Address
         0: PutChar(Data)
         1: Control(Data)
         
PRI Control(Data)

PRI PutChar(Data)
   Characters[CurrentRow * cols + CurrentCol] := Data
   
   IF CurrentRow + 1 > rows
     BYTEMOVE(@Characters, @Characters + cols, cols * (rows - 1))
   ELSE
     CurrentRow++
     
   IF CurrentCol + 1 > cols
     CurrentRow++
     CurrentCol := 0
   ELSE
     CurrentCol++
