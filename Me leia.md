 ● **INSTALAÇÃO NGINX**

Primeiro passo para instalão do nginx é digitar os seguintes comandnos:

```apt install nginx```

Irá aperecer uma tela de confirmação parecida ou igual a essa:

<p float="left">

 <img src="https://github.com/yebisu22/Servidor-Nginx-COMPASS/blob/b90a6450ce989622302f94ac50e3b0a6059f623d/IMG/instalando-nginx.png" width="450" />
</p>

Apos a instalação, é necessario ativar o nginx e o servidor

pra isso usamos o comando
```systemctl enable nginx```
e ```systemctl start nginx```

Agora para verificar se esta realmente funcionando, é usado o comando 
```systemctl status nginx```

e uma tela igual a essa aparecerá 

<p float="left">

 <img src="https://github.com/yebisu22/Servidor-Nginx-COMPASS/blob/0675073c43c5143413a7b5fbae9f5f8a6613bb75/IMG/nginx%20status.png" width="500" />
</p>

Agora, para ver o servidor no navegador digite "localhost/" ou seu ip de rede local

(para descobrir seu ip de rede basta escrever ```ifconfig``` e copiar o ip local)

e essa tela aparecerá 

<p float="left">

 <img src="https://github.com/yebisu22/Servidor-Nginx-COMPASS/blob/ae4c332f1dbd36cf7e2841566ba945bd7f2fa478/IMG/exemplo%202.png" width="400" />
</p>

E está feito sua instalação e ativação do nginx 🙂



●**CONFIGURANDO UM SCRIPT QUE FAÇA A VALIDAÇÃO DO SERVIÇO ONLINE E OFFLINE**

Para fazermos isso precisamos criar um diretório com um nome de sua preferencia (no exemplo usarei "Tang")

```mkdir Tang``` 

após criar um diretório entre nele ```/tang```
e crie um arquivo para armazenar dados ```touch checador_nginx.sh``` 


também crie um arquivo para guardar os arquvios log ```nginx_status.log``` (temporário) 


Agora iremos fazer o script dentro do arquivo "checador_nginx.sh" usando ```vi checador_nginx.sh```

(aperte a tecla "i" para poder inserir caracteres) 

●**SCRIPT USADO** 
```sh

#Codigo usado para definir arquivo de login

 LOG_FILE="/root/Tang/nginx_status.log."

 #Verificar ativação do servidor

 if systemctl is-active --quiet nginx; then
  
     echo "$(date): TRECO TÁ RODANDO." >> "$LOG_FILE"

else 
     echo "$(date): TRECO NÃO TA RODANDO." >> "$LOG_FILE"



 fi 

```
**Breve explicação do que cada coisa faz no codigo**

-LOG_FILE é a variavel do script que será armazenada  em "/root/Tang/nginx status log."

-"if systemctl is-active --quiet nginx; then" faz a verificação se o servidor esta ativo e retorna um codigo de saida

-echo é o comando que exibe a mensagem

-date adiciona data e hora 

-treco é um termo mais especifica para destacar a mensagem personalizada do servidor ativo ou não 

-else retorna algo diferente se ele estiver offline

Etapa concluida 😄

●**SEPARANDO OS ARQUIVOS DE SAIDA PARA LUGARES DIFERENTES**

Para separar os arquivos de saida, precisamos criar mais dois arquivos dentro do diretorio (usarei o termo rodando para se referir a online)

```cat> rodando.log```
e ```cat> nao_rodando.log```

após criar, vamos voltar la no arquivo base do nosso codigo ```vi checador_nginx.sh``` 

fazendo algumas mudanças o codigo ficará assim:


