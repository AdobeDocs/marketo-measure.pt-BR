---
description: Gasto de marketing de relatório
title: Gasto de marketing de relatório
exl-id: 46b0f81c-acd1-47a5-bf75-6a943edb9009
feature: Reporting, Spend Management
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '346'
ht-degree: 2%

---


# Gasto de marketing de relatório {#report-marketing-spend}

## Tabela de gastos de marketing {#marketing-spend-table}

A tabela Gasto com marketing contém uma nova coluna para exibir a moeda para cada Canal, Subcanal e linha de Campanha. Essa nova coluna é exibida para todos os clientes, mesmo que eles não tenham Várias Moedas ativadas.

A tabela contém uma combinação de moedas diferentes. Consulte o painel Gastos com marketing para obter uma soma de todos os Canais, Subcanais ou Campanhas em uma única moeda.

## Fazer upload de custos {#upload-costs}

Quando um usuário baixa o arquivo de custo, o arquivo também conterá uma nova coluna com a moeda para cada linha. As únicas moedas aceitáveis são aquelas que foram definidas e armazenadas no CRM. Você precisa saber o código abreviado de 3 letras da sua moeda (USD, CAD, JPY, EUR) e, se um arquivo for carregado com uma moeda não reconhecida, o upload do arquivo falhará.

## Custos de integrações de anúncios {#costs-from-ad-integrations}

Quando [!DNL Marketo Measure] importa o custo de plataformas conectadas, como AdWords, Bing, Facebook ou Doubleclick, também usamos a moeda relatada. A moeda é exibida junto com o Canal, Subcanal e Campanha quando exibido na tabela Gasto com marketing.

Se a moeda do Provedor de Anúncios não corresponder a uma moeda obtida do CRM, você poderá ver um erro de &quot;Moedas Mistas&quot; em [!DNL Marketo Measure Discover]. Para corrigir isso, o administrador do CRM deve adicionar uma conversão para a moeda desconhecida.

## Migrar para Gastos de marketing convertidos {#migrate-to-converted-marketing-spend}

Como o gasto de marketing tem sido historicamente apenas em uma moeda única (USD), há uma pequena quantidade de trabalho necessário para alterar todos os gastos relatados para a nova moeda. Mesmo que sua conta não tenha Várias Moedas habilitadas, se você tiver uma única moeda corporativa diferente de USD, deverá fazer essa migração.

1. Baixar o arquivo Gastar atual em um CSV
1. A coluna de moeda exibe &quot;[!UICONTROL USD]&quot; como a moeda considerada. Você pode substituir manualmente todas as ocorrências de &quot;[!UICONTROL USD]&quot; ou usar Localizar+Substituir para alterar todas as instâncias de &quot;[!UICONTROL USD]&quot; para sua própria moeda corporativa, como &quot;[!UICONTROL EUR]&quot; ou &quot;[!UICONTROL GBP]&quot;.
1. Salve o arquivo e carregue-o de volta para [!DNL Marketo Measure].
1. Todos os custos relatados agora serão exibidos como a nova moeda.
