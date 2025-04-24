#!/bin/bash 

# tudo bem ?

LOGFILE="netcheck_$(date +%F_%H-%M-%S).log"
DESTINO="8.8.8.8"
SITE="google.com"
PORTAS="80,443"
  
echo "Iniciando diagnóstico de rede..." | tee -a "$LOGFILE"

echo -e "\n>> Verificando conectividade com a internet..." | tee -a "$LOGFILE"
ping -c 4 "$DESTINO" &>> "$LOGFILE" && echo "Conectividade OK" | tee -a "$LOGFILE" || echo "Sem conexão!" | tee -a "$LOGFILE"

echo -e "\n>> Testando resolução de DNS ($SITE)..." | tee -a "$LOGFILE"
dig "$SITE" +short &>> "$LOGFILE" && echo "DNS OK" | tee -a "$LOGFILE" || echo "Falha na resolução DNS!" | tee -a "$LOGFILE"

echo -e "\n>> Traçando rota até $SITE..." | tee -a "$LOGFILE"
traceroute "$SITE" &>> "$LOGFILE"

if command -v nmap &> /dev/null; then
    echo -e "\n>> Verificando portas abertas no destino ($SITE)..." | tee -a "$LOGFILE"
    nmap -p "$PORTAS" "$SITE" &>> "$LOGFILE"
else
    echo -e "\n>> nmap não encontrado, pulando verificação de portas." | tee -a "$LOGFILE"
fi

echo -e "\n>> Tempo ligado:" | tee -a "$LOGFILE"
uptime -p | tee -a "$LOGFILE"

echo -e "\n>> Fim do diagnóstico. Arquivo salvo em: $LOGFILE"

