.text
main:   addi $9, $0, 1024  		#tamanho da tela
         add $10, $0, $9		#marca quantos ja foram pintados
         addi $20, $0, 0xff		#cor azul
         lui $11, 0x1001  		#endereço do pixel a ser pintado
test:     beq $10, $0, fimtela 		#se for 0 chegou no fim da tela

          sw $20, 0($11)   		# pinta esta cor neste pixel
          
          addi $16, $0, 100
#delay:    beq $16, $0, fimDelay
 #         nop
  #        addi $16, $16, -1
   #       j delay
#fimDelay: nop         
                    
                                        
          addi $11, $11, 4		#soma com 4 pq o pq ta em 4px
          addi $10, $10, -1
          j test
 fimtela: add $10, $0, $9
          lui $11, 0x1001
          sll $20, $20, 8		#deslocou o ff para o meio da palavra mudando a cor
          beq $20, $0, resetCor
          j test             
resetCor: addi $20, $0, 0xff
          j test            


