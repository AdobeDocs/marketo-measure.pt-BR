---
unique-page-id: 27656735
description: Visão geral - [!DNL Marketo Measure] - Documentação do produto
title: Visão geral
exl-id: 2076521c-b579-457c-ab1c-263b1da4dd89
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '303'
ht-degree: 1%

---

# Visão geral {#overview}

Hoje, o [!DNL Marketo Measure] O aplicativo só oferece suporte a uma moeda única (presumivelmente USD), enquanto sabemos e estamos cientes de que temos clientes em todo o mundo que precisam fazer relatórios sobre suas próprias moedas corporativas e de usuários. Esse recurso tem a capacidade de os usuários alternarem entre moedas diferentes quando estiverem olhando para o gasto relatado ou receita de vendas.

## Disponibilidade {#availability}

Nível 2 e superior.

## Requisitos {#requirements}

Em [!DNL Salesforce], o cliente deve ter a opção &quot;Ativar várias moedas&quot; ativada. Opcionalmente, o cliente também pode selecionar &quot;Sim, eu desejo ativar o Gerenciamento de Moeda Avançado&quot;.

No Dynamics, o cliente pode definir taxas de câmbio estáticas em suas Configurações para várias moedas. Não há conceito de &quot;gerenciamento avançado de moeda&quot; no Dynamics.

## Termos {#terms}

| **Termo** | Descrição |
|---|---|
| **Moeda avançada** | O cliente tem o Gerenciamento avançado de moeda e várias moedas ativadas, o que significa que podem ter diferentes taxas de conversão para diferentes períodos de tempo. |
| **Moeda da empresa** | Essas são as várias moedas listadas e declaradas por uma organização no CRM, todas com taxas de conversão. [!DNL Marketo Measure] O importará esses valores e disponibilizará essas moedas aos usuários em nosso produto. |
| **Localidade da Moeda** | A moeda única usada para uma organização, definida na página Informações da empresa . |
| **Moeda local (ou Moeda do usuário)** | A moeda definida para um único usuário no Perfil do usuário, para que ele possa visualizar qualquer valor em sua própria moeda local. A organização terá que declarar e configurar a moeda antes que o usuário possa selecionar sua moeda local. |
| **Moeda Única** | Usado para clientes que não usam Várias Moedas no CRM, mas sua organização é executada em uma moeda diferente, portanto eles têm uma &quot;Localidade da Moeda&quot;. Essa ainda é uma moeda única para a organização, mas sem nenhuma conversão. |
| **Moeda simples** | O cliente tem várias moedas ativadas, mas elas têm uma taxa de conversão estática por moeda. |
