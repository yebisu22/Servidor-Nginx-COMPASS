 ● **INSTALAÇÂO NGINX**

Primeiro passo para instalão do nginx é digitar os seguintes comandnos:

```apt install nginx```

Irá aperecer uma tela de confirmação parecida ou igual a essa:

<p float="left">

 <img src="https://raw.githubusercontent.com/yebisu22/Servidor-Nginx-COMPASS/refs/heads/main/IMG/instalando-nginx.png?token=GHSAT0AAAAAACZJZ4A4BNZ3IONNPJJ46FKOZY2TPRA" width="450" />
</p>

Apos a instalação, é necessario ativar o nginx e o servidor

pra isso usamos o comando
``` systemctl enable nginx```
e ```systemctl start nginx```

Agora para verificar se esta realmente funcionando, é usado o comando 
```systemctl status nginx```

e uma tela igual a essa aparecerá 

<p float="left">

 <img src="" width="450" />
</p>

