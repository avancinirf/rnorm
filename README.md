# rnorm
Função de normalização de valores numéricos em tabelas em linguagem R

## Sintaxe da função rnorm:
```
rnorm(nome_arquivo, minimo, maximo, cabecalho)
```

## Parâmetros da função rnorm:
Parâmetro      | Default           | Explicação
-------------- | ----------------- | ------
nome_arquivo   | valor obrigatório | Nome do arquivo (planilha .CSV) que será normalizada
minimo         | 0                 | Valor mínimo do intervalo usado na fórmula de normalização
maximo         | 1                 | Valor máximo do intervalo usado na fórmula de normalização
cabecalho      | TRUE              | Informa se a planilha possui ou não cabeçalho

## Fórmula de normalização utilizada:
xn1 = (x – Min(X)) / (Max(X) – Min(X)) * 2 – 1

## Dados de exemplo: DiabetesDiagnosis.csv
Planilha contendo diversos dados coletados em pacientes, incluindo o diagnóstico para diabetes. A planilha está na base de dados <http://www.technologyforge.net/Datasets>

Referência da planilha de exemplo:
>Smith, J. W., Everhart, J. E., Dickson, W. C., Knowler, W. C., Johannes, R. S. (1988), Using the ADAP learning algorithm to forecast the onset of diabetes mellitus. Proceedings of the Symposium on Computer Applications and Medical Care (pp. 261—265), IEEE Computer Society Press.
