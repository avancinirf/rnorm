# rnorm
Função de normalização de valores numéricos em tabelas em linguagem R

## Sintaxe da função rnorm:
>rnorm(nome_arquivo, minimo, maximo, cabecalho)

## Parâmetros da função rnorm:
nome_arquivo: Nome do arquivo (planilha .CSV) que será normalizada 

minimo: Valor mínimo da normalização
>Default: 0

maximo: Valor máximo do intervalo usado na fórmula de normalização
>Default: 1

cabecalho: Informar se a planilha possui ou não cabeçalho
>Default: TRUE

## Fórmula de normalização utilizada:
(x-min)/(max-min)

## Dados de exemplo: DiabetesDiagnosis.csv
Planilha contendo diversos dados coletados em pacientes, incluindo o diagnóstico para diabetes. A planilha está na base de dados
>http://www.technologyforge.net/Datasets

Referência da planilha de exemplo:
>Smith, J. W., Everhart, J. E., Dickson, W. C., Knowler, W. C., Johannes, R. S. (1988), Using the ADAP learning algorithm to forecast the onset of diabetes mellitus. Proceedings of the Symposium on Computer Applications and Medical Care (pp. 261—265), IEEE Computer Society Press.
