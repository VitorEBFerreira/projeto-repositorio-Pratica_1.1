# Leitura e manipulação dos dados
dados =read.csv("dados_turismo.csv",header = T,sep = ";")
str(dados)
summary(dados)
# attach(dados)

# Atribuindo legendas dos rótulos das variáveis sexo e estabelecimento
dados$sexo = factor(dados$sexo, levels = c(1,2), labels = c("masculino","feminino"))
dados$estabelecimento = factor(dados$estabelecimento, levels = c("P","H"),labels = c("pousada","hotel"))

# Análise de dados
# Tabelas de distribuição de frequências das variáveis sexo e estabelecimento
round(prop.table(table(dados$sexo)) * 100, 2)
round(prop.table(table(dados$estabelecimento)) * 100, 2)
round(prop.table(table(dados$sexo, dados$estabelecimento), margin = 2) * 100, 2)
