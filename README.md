# Monitoramento de Asteroides em Tempo Real (NASA)

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

## Pré-requisitos

Antes de executar o projeto, você precisa ter:

- Ruby instalado (versão 2.7+ recomendada)
- Bundler (opcional)

Instale a dependência necessária:

```bash
gem install httparty
gem install json
gem install date
