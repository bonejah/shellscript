#!/bin/bash
#
# seq.sh - Emulação do comando seq em Bash por Bruno Lima 
#
# O comando seq recebe dois números e mostra na sa[ida padráo todos os números
# existentes entre eles, inclusive. Essa sequências está pronta para ser usada
# pelo comando FO. Caso omitido o número inicial, é utilizado 1.
#
#
#	Exemplo 1	Exemplo 2
#		
#	$ seq 5 10	$ seq 10 5 
#	5		10
#	6		9	
#	7		8
#	8		7
#	9		6
#	10		5
#
# Uso em scripts: for i in $(seq 5 10); do comandos: done
#
### Inicialização daas variáveis
o=+		# Operação a ser feita. Pode ser + ou -
a=1 		# Valor padrão de ínicio da contagem
z=${1:-1} 	# Valor do final da contagem recebido em $1 (padrão é 1)`

# A variável anterior serve para quando o usuário passar apenas um valor na
# linha de comando, que seria o valor *final* da contagem. Por isso
# a=1 e z=$1
#
# Caso o programa seja chamado sem parâmetros, 'z' também é definido
# como 1. Como a=1 e z=1, o programa retirnar apenas o número 1.

[ "$2" ] && {
	
	# Foram passados 2 parâmetros, 0 $1 é o início e o $2 é o fim.
	a=$1
	z=$2
}

###
# Se o número inicial ($a) for maior que o número final ($z), 
# faremos uma contagem regressiva, por isso a operação é definida
# como subtração.
# 

[ $a -gt $z ] && o=-

###
# Loop da contagem (progressiva ou regressiva)
#
# A cada volta, adiciona ou subtrai 1 do valor inicial, 
# até que ele se iguale ao final.
#
# O eval executa o resultado da expansão de variáveis.
# Supondo o='+' e a=3, o eval executará o comando a=$((3+1))
#

while [ $a -ne $z ]; do
	echo $a 		# mostra a contagem atual
	eval "a=\$((a $o 1))" 	# efetua a operação (+1 ou -1)
done 

echo $a				# mostra o último número









