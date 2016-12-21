.text
main: addi $2, $0, 5
      syscall
      addi $4, $2, 0
      addi $2, $0, 5
      syscall
      addi $5, $2, 0
      jal somar
      addi $4, $2, 0
      addi $2, $0, 1
      syscall
      addi $2, $0, 5
      syscall
      addi $4, $2, 0
      addi $2, $0, 5
      syscall
      addi $5, $2, 0
      jal somar
      addi $4, $2, 0
      addi $2, $0, 1
      syscall
      addi $2, $0, 10
      syscall
      
somar: addi $9, $31, 0
       add $2, $4, $5
       addi $4, $2, 0
       jal desl
       addi $31, $9, 0
       jr $31       
       
       
desl: sll $2, $4, 1
      jr $31      