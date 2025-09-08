( J. Ruszczyc, ASEMBLER 6502 )
( Chapter 1.3 -- First Steps )
( using Atari XL / APX Forth )
( "75 LOAD" for Mullarky Asm )
( "21 LOAD" for Memory DUMPs )

FORTH DEFINITIONS ASSEMBLER HEX

( 1st Example )

0 VARIABLE RESULT

CODE (1ST)
  XSAVE STX,      ( save X   )
  27 # LDA,       ( LDA #27  )
  60C STA,        ( STA 60C  )    
  60D STA,        ( STA 60D  ) 
  60D INC,        ( INC 60D  )
  60D C@ RESULT ! ( save it  )
  XSAVE LDX,      ( load X   )
  NEXT JMP,       ( to Forth )
  END-CODE

(1ST)
RESULT C@ 28 ?PAIRS ( ok )
60C    C@ 27 ?PAIRS ( ok )

( 2nd Example )

0 VARIABLE L1.
0 VARIABLE L2.

CODE (2ND)
  XSAVE STX, ( save X   )
  27 # LDA,  ( LDA #27  )
  L1. STA,   ( STA ...  )    
  L2. STA,   ( STA ...  ) 
  L2. INC,   ( INC ...  )
  XSAVE LDX, ( load X   )
  NEXT JMP,  ( to Forth )
  END-CODE

(2ND)
L1. C@ 27 ?PAIRS
L2. C@ 28 ?PAIRS

( show the machine code )
  ' (2ND) NFA ( start of code )
  DUP HERE SWAP - ( ..to here )
DUMP

DECIMAL

 
