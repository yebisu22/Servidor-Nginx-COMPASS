#Codigo usado para definir arquivo de login

 LOG_FILE="/root/Tang/rodando.log"
 LOG_FILE2="/root/Tang/nao_rodando.log"

 #Verificar ativação do servidor separada

 if systemctl is-active --quiet nginx; then
  
     echo "$(date): TRECO TÁ RODANDO." >> "$LOG_FILE"

else 
     echo "$(date): TRECO NÃO TA RODANDO." >> "$LOG_FILE2"



 fi        