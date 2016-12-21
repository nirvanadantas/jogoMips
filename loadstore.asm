.data #0x10010000
  .word 4
  .word 7
  .word 125

.text
main: lui $8, 0x1001 #load upper immediate, $8=0x10010000
      addi $9, $0, 0
      addi $10, $0, 5
for1: beq $9, $10, imp
      addi $2, $0, 5
      syscall
      sw $2, 0($8)
      addi $8, $8, 4
      addi $9, $9, 1
      j for1
imp:  addi $8, $8, -4
for2: beq $9, $0, fim
      lw $4, 0($8)
      addi $2, $0, 1
      syscall
      addi $8, $8, -4
      addi $9, $9, -1
      j for2
fim: nop