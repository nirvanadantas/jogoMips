.text
main:	addi $9, $0, 8193  		#tam tela
	add $10, $0, $9			#marca quantos ja foram pintados
	addi $12, $0, 128		#tam linha
	add $13, $0, 0			#cont posição linha
	addi $14, $0, 40		#onde eu quero o branco
	addi $20, $0, 0xffffff		#cor 
	lui $11, 0x1001  		#endereço do pixel a ser pintado
	
test: 	beq $10, $0, fimtela
	beq $13, $12, fim
	sw $20, 0($11)
	
	addi $11, $11, 4		#proximo local a ser pintado 
	add $10, $10, -1
	addi $13, $13, 1
#	beq $13, $12, resetLinha	#se a linha acabou
	
	j test
	
	
	
fimtela: 	nop
resetLinha:	add $13, $0, $14
		j test
fim:	nop