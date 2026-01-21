# Monitoramento de Asteroides em Tempo Real (NASA)

![Ruby](https://img.shields.io/badge/Ruby-3.x-red?style=for-the-badge&logo=ruby)
![NASA API](https://img.shields.io/badge/NASA-NeoWs-blue?style=for-the-badge&logo=nasa)
![HTTParty](https://img.shields.io/badge/HTTParty-HTTP-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow?style=for-the-badge)
![License](https://img.shields.io/badge/License-Educacional-lightgrey?style=for-the-badge)


Projeto desenvolvido em **Ruby** que consome a **API oficial da NASA (NeoWs)** para monitorar **asteroides próximos à Terra em tempo real**, exibindo informações como velocidade, distância e risco potencial.

---

## Objetivo do Projeto

Este projeto tem como objetivo:

- Praticar consumo de **APIs REST**
- Trabalhar com **JSON**
- Utilizar **datas dinâmicas**
- Exibir dados reais da **NASA**
- Aplicar conceitos básicos de automação e análise de dados

É um projeto educacional, simples e fácil de expandir 🚀

---

## O que o sistema faz?

✔️ Busca automaticamente os asteroides próximos da Terra  
✔️ Usa a data atual e o dia seguinte de forma dinâmica  
✔️ Identifica se o asteroide é **potencialmente perigoso**  
✔️ Mostra:
- Nome do asteroide
- Velocidade (km/h)
- Distância da Terra (km)
- Status de risco ⚠️ ou ✅

---

## Tecnologias Utilizadas

- **Ruby**
- **Date** (requisições DATE)
- **HTTParty** (requisições HTTP)
- **JSON**
- **API NASA NeoWs**

---

## Funcionamento do Código

- O sistema utiliza a API pública da NASA:

https://api.nasa.gov/neo/rest/v1/feed


---

## Instalação

# Clone o repositório ou salve o arquivo:

```bash
git clone https://github.com/Joaoigor789/rubyv1.git
cd rubyv1 (se necessário)
ruby api_monitor.rb
```
---

## Saida do terminal de Exemplo

```bash 🌍 MONITORAMENTO EM TEMPO REAL - NASA
==================================================
Período: 2026-01-21 a 2026-01-22
==================================================

📅 Data: 2026-01-21
🪐 Asteroides próximos: 5

- Asteroid 2026 AB
  Perigoso? NÃO ✅
  Velocidade: 45231.55 km/h
  Distância: 745000.32 km
```

---

## Pré-requisitos

Antes de executar o projeto, você precisa ter:

- Ruby instalado (versão 2.7+ recomendada)
- Bundler (opcional)

Instale a dependência necessária:



```bash
gem install httparty
gem install json
gem install date

```

## Autor

- João Igor Rodrigues Pereira da Silva
- Estudante de Desenvolvimento Full Stack e Sistemas da Informação
- Apaixonado por tecnologia, APIs e automação

## Licença

- Este projeto é livre para fins educacionais.