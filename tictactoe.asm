.text
main:	addi $9, $0, 8193  		#tamanho da tela
	add $10, $0, $9			#marca quantos ja foram pintados
	addi $20, $0, 0xffffff		#cor 
	lui $11, 0x1001  		#endereço do pixel a ser pintado
	
test: 	beq $10, $0, fimtela
	sw $20, 0($11)
	

fimDelay:nop
	
	addi $11, $11, 4		#proximo local a ser pintado 
	addi $10, $10, -1
	j test
	
fimtela: nop
	