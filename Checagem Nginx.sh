#Codigo usado para definir arquivo de login

 LOG_FILE="/root/Tang/nginx_status.log."

 #Verificar ativação do servidor

 if systemctl is-active --quiet nginx; then
  
     echo "$(date): TRECO TÁ RODANDO." >> "$LOG_FILE"

else 
     echo "$(date): TRECO NÃO TA RODANDO." >> "$LOG_FILE"



 fi        