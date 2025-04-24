# 🧠 NetCheck - Diagnóstico de Rede com Bash

**NetCheck** é um script simples em Bash para realizar diagnósticos rápidos de rede em sistemas Linux. Ele testa conectividade, resolução DNS, traçado de rota e até verificação de portas com `nmap`, salvando tudo em um arquivo de log para análise posterior.

---

## 📋 Funcionalidades

- ✅ Teste de conexão com a internet via `ping`
- 🌐 Verificação de resolução DNS com `dig`
- 🛰️ Traçado de rota até um destino com `traceroute`
- 🔍 Escaneamento de portas com `nmap` (se instalado)
- 🕒 Tempo ligado (uptime)
- 📝 Geração automática de log com timestamp

---

## 📦 Requisitos

- Linux com terminal Bash
- Ferramentas:
  - `ping`, `dig`, `traceroute`
  - `nmap` (opcional, para escanear portas)

---

## 🚀 Como usar

1. Clone o repositório:
   ```bash
   git clone https://github.com/seuusuario/netcheck.git
   ```

   ```bash
   cd netcheck
   ```
2. Dê permissão de execução ao script:
   ```bash
   chmod +x netcheck.sh
   ```
3. Execute:
   ```bash
   ./netcheck.sh
   ```

4. O resultado será salvo no arquivo
   ```bash
   netcheck_YYYY-MM-DD_HH-MM-SS.log.
   ```

## 🛠️ Autor

Feito por Guilherme Alencar com 💻 e ☕
Curta projetos de automação, Linux e robótica? Siga também @Luvercontrol!


   
   
