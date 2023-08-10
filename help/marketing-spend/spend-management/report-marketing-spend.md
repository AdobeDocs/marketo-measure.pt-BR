---
unique-page-id: 27656737
description: Gasto com marketing de relatório - [!DNL Marketo Measure] - Documentação do produto
title: Gasto de marketing de relatório
exl-id: 46b0f81c-acd1-47a5-bf75-6a943edb9009
feature: Reporting, Spend Management
source-git-commit: a2a7657e8377fd5c556d38f6eb815e39d2b8d15e
workflow-type: tm+mt
source-wordcount: '378'
ht-degree: 1%

---

# Gasto de marketing de relatório {#report-marketing-spend}

## Tabela de gastos de marketing {#marketing-spend-table}

A tabela de Gastos com marketing agora contém uma nova coluna para exibir a moeda para cada linha de Canal, Subcanal e Campanha. Esta nova coluna será exibida para todos os clientes, mesmo que eles não tenham Várias Moedas ativadas.

A tabela agora conterá uma combinação de moedas diferentes. Consulte o painel Gastos com marketing se precisar obter uma soma de todos os canais, subcanais ou campanhas em uma única moeda.

## Fazer upload de custos {#upload-costs}

Quando um usuário baixa o arquivo de custo, o arquivo também conterá uma nova coluna com a moeda para cada linha. As únicas moedas aceitáveis são aquelas que foram definidas e armazenadas no CRM. Você precisará saber o código abreviado de 3 letras da moeda (ou seja, USD, CAD, JPY, EUR) e, se um arquivo for carregado com uma moeda não reconhecida, o upload do arquivo falhará.

## Custos de integrações de anúncios {#costs-from-ad-integrations}

Quando [!DNL Marketo Measure] importa o custo de plataformas conectadas, como AdWords, Bing, Facebook ou Doubleclick, também usamos a moeda relatada. A moeda será exibida junto com o Canal, Subcanal e Campanha quando exibido na tabela Gastos com marketing.

Se a moeda do Provedor de anúncios não corresponder a uma moeda retirada do CRM, você poderá ver um erro &quot;Moedas mistas&quot; no [!DNL Marketo Measure Discover] porque não conseguimos fazer uma conversão nessa moeda. Para corrigir isso, o Administrador do CRM precisa adicionar uma conversão para a moeda desconhecida.

## Migrar para Gastos de marketing convertidos {#migrate-to-converted-marketing-spend}

Como nosso gasto de marketing tem sido historicamente apenas em uma moeda única (USD), há uma pequena quantidade de trabalho necessário para alterar todos os gastos relatados para a nova moeda. Mesmo que sua conta não tenha Várias Moedas habilitadas, se você tiver uma única moeda corporativa diferente de USD, desejará fazer essa migração.

1. Baixar o arquivo Gastar atual em um CSV
1. A coluna de moeda exibirá &quot;[!UICONTROL USD]&quot; como a moeda presumida. Você pode substituir manualmente todas as ocorrências de &quot;[!UICONTROL USD]&quot; ou use Localizar+Substituir para alterar todos os &quot;[!UICONTROL USD]&quot;para sua própria moeda corporativa, como&quot;[!UICONTROL EUR]&quot; ou &quot;[!UICONTROL GBP]&quot; por exemplo.
1. Salve o arquivo e faça upload novamente para o [!DNL Marketo Measure].
1. Todos os custos relatados agora serão exibidos como a nova moeda.
