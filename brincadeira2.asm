.text
main:   addi $9, $0, 1024
         add $10, $0, $9
         addi $20, $0, 0xff
         addi $17, $0, 0xff #blue
         sll $18, $17, 8 #green
         sll $19, $18, 8 #red
         lui $11, 0x1001
         lui $21, 0xffff
test:     beq $10, $0, fimtela

          sw $20, 0($11)
          
          addi $16, $0, 100
delay:    beq $16, $0, fimDelay
          nop
          addi $16, $16, -1
          j delay
fimDelay: nop         
          
          lw $22, 0($21)
          beq $22, $0, naoteclou
          lw $23, 04($21)                    
          beq $23, 114, red          
          beq $23, 103, green
          beq $23, 98, blue                              
setouCor: nop                                                                                                    
naoteclou:addi $11, $11, 4
          addi $10, $10, -1
          j test
 fimtela: add $10, $0, $9
          lui $11, 0x1001
          sll $20, $20, 8
          beq $20, $0, resetCor
          j test             
resetCor: addi $20, $0, 0xff
          j test            
red:      add $20, $0, $19
          j setouCor
green:    add $20, $0, $18
          j setouCor
blue:     add $20, $0, $17
          j setouCor

