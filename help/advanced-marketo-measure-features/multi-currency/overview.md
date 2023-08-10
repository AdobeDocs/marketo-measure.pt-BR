---
unique-page-id: 27656735
description: Visão geral - [!DNL Marketo Measure] - Documentação do produto
title: Visão geral
exl-id: 2076521c-b579-457c-ab1c-263b1da4dd89
feature: Multi-Currency
source-git-commit: a2a7657e8377fd5c556d38f6eb815e39d2b8d15e
workflow-type: tm+mt
source-wordcount: '335'
ht-degree: 1%

---

# Visão geral {#overview}

Hoje, a [!DNL Marketo Measure] O aplicativo suporta apenas uma única moeda (assumida como USD), enquanto sabemos e estamos cientes de que temos clientes em todo o mundo que precisam relatar suas próprias moedas corporativas e de usuário. Esse recurso permite que os usuários alternem entre as mesmas moedas usadas em seus CRMs ao visualizar despesas ou receitas de vendas relatadas em [!DNL Marketo Measure].

## Disponibilidade {#availability}

Nível 2 e superior.

## Requisitos {#requirements}

[!DNL Marketo Measure] O extrairá automaticamente a configuração de moeda do CRM do cliente. Configuração manual no [!DNL Marketo Measure] para corresponder ao CRM não é mais necessário. A configuração de moeda pode ser encontrada na página &quot;Geral&quot; em &quot;CRM&quot;.

Entrada [!DNL Salesforce], o cliente deve ter a opção &quot;Ativar várias moedas&quot; ativada. Como alternativa, o cliente também pode selecionar &quot;Sim, desejo ativar o Gerenciamento de Moeda Avançado&quot;.

No Dynamics, o cliente pode definir taxas de câmbio estáticas em suas Configurações para várias moedas. Não há conceito de &quot;gestão de moeda avançada&quot; no Dynamics.

## Termos {#terms}

| **Termo** | Descrição |
|---|---|
| **Moeda avançada** | O cliente tem o Advanced Currency Management e o Multiple Currencies ativado, o que significa que eles podem ter diferentes taxas de conversão para diferentes períodos. |
| **Moeda da empresa** | Essas são as várias moedas listadas e declaradas por uma organização no CRM, todas com taxas de conversão. [!DNL Marketo Measure] O importará esses valores e disponibilizará essas moedas aos usuários em nosso produto. |
| **Localidade da moeda** | A moeda única usada para uma organização, definida na página Informações da empresa. |
| **Moeda local (ou moeda do usuário)** | A moeda definida para um único usuário no Perfil do Usuário, para que ele possa visualizar qualquer valor em sua própria moeda local. A organização terá que declarar e configurar a moeda para que um usuário possa selecionar sua moeda local. |
| **Moeda única** | Usado para clientes que não usam Várias Moedas no CRM, mas sua organização é executada em uma moeda diferente, de modo que tenham uma &quot;Localidade da Moeda&quot;. Essa ainda é uma moeda única para a organização, mas sem qualquer conversão. |
| **Moeda Simples** | O cliente tem Várias Moedas ativadas, mas elas têm uma taxa de conversão estática por moeda. |
