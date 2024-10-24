 ● **INSTALAÇÂO NGINX**

Primeiro passo para instalão do nginx é digitar os seguintes comandnos:

```apt install nginx```

Irá aperecer uma tela de confirmação parecida ou igual a essa:

<p float="left">

 <img src="https://github.com/yebisu22/Servidor-Nginx-COMPASS/blob/b90a6450ce989622302f94ac50e3b0a6059f623d/IMG/instalando-nginx.png" width="450" />
</p>

Apos a instalação, é necessario ativar o nginx e o servidor

pra isso usamos o comando
``` systemctl enable nginx```
e ```systemctl start nginx```

Agora para verificar se esta realmente funcionando, é usado o comando 
```systemctl status nginx```

e uma tela igual a essa aparecerá 

<p float="left">

 <img src="https://github.com/yebisu22/Servidor-Nginx-COMPASS/blob/0675073c43c5143413a7b5fbae9f5f8a6613bb75/IMG/nginx%20status.png" width="600" />
</p>

