# Leitura e manipulação dos dados
dados =read.csv("dados_turismo.csv",header = T,sep = ";")
str(dados)
summary(dados)
# attach(dados)

# Atribuindo legendas dos rótulos das variáveis sexo e estabelecimento
dados$sexo = factor(dados$sexo, levels = c(1,2), labels = c("masculino","feminino"))
dados$estabelecimento = factor(dados$estabelecimento, levels = c("P","H"),labels = c("pousada","hotel"))
