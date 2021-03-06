
### ---------------------------------------------------------------------------
### T�tulo: Fun��o para normaliza��o de planilhas em R
### Autor: Ricardo Avancini
### e-mail: avancini.rf@gmail.com
### Reposit�rio: https://github.com/avancinirf/rnorm
### ---------------------------------------------------------------------------

# Selecionando o diretorio raiz para o script
#setwd("C:/Users/Ricardo/Documents/SITE_POSTS/Funcao_Normalizacao_no_R/rnorm")

# Endere�o da planilha a ser normalizada, ou apenas o nome do arquivo se estiver no mesmo diret�rio
#endereco<-"data/DiabetesDiagnosis.csv"

# Construindo a fun��o
rnorm<-function(nome_arquivo, minimo=0, maximo=1, cabecalho=TRUE) {
  if(file.exists(nome_arquivo)){
    planilha <- read.table(nome_arquivo, header=cabecalho, sep=",", stringsAsFactors=FALSE)
  }else{stop("Planilha inexistente")} # Comandos para parar a fun��o: stop("") ou return(-1)
  for(i in 1:ncol(planilha)){
    if(is.numeric(planilha[,i])){
      v_min<-min(planilha[,i])
      v_max<-max(planilha[,i])
      for(j in 1:nrow(planilha)){
        planilha[j,i]<-((planilha[j,i]-v_min)/(v_max-v_min))*((maximo-minimo)+minimo)
      }
    }
  }
  return(planilha) # Retornando a planilha normalizada
}

# Execuando a fun��o e salvando o resultado em "resultado"
#resultado<-rnorm(endereco)



