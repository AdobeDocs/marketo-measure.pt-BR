---
unique-page-id: 27656737
description: Gasto de marketing de relatórios - [!DNL Marketo Measure] - Documentação do produto
title: Gasto de marketing de relatório
exl-id: 46b0f81c-acd1-47a5-bf75-6a943edb9009
source-git-commit: 54337a0a65b79d80ebeae6531f5e92f4f48721a7
workflow-type: tm+mt
source-wordcount: '378'
ht-degree: 0%

---

# Gasto de marketing de relatório {#report-marketing-spend}

## Tabela de gastos de marketing {#marketing-spend-table}

A tabela de Gastos de marketing agora contém uma nova coluna para exibir a moeda de cada Canal, Subcanal e Linha de campanha. Essa nova coluna será exibida para todos os clientes, mesmo que eles não tenham Várias Moedas ativadas.

O quadro agora conterá uma combinação de diferentes moedas. Consulte o painel de gastos de marketing se precisar obter uma soma de quaisquer Canais, Subcanais ou Campanhas em uma única moeda.

## Fazer upload de custos {#upload-costs}

Quando um usuário baixa o arquivo de custo, ele também contém uma nova coluna com a moeda de cada linha. As únicas moedas aceitáveis são aquelas que foram definidas e armazenadas no CRM. Você precisará saber o código abreviado de 3 letras para sua moeda (ou seja, USD, CAD, JPY, EUR) e se um arquivo for carregado com uma moeda não reconhecida, o upload do arquivo falhará.

## Custos das integrações de anúncios {#costs-from-ad-integrations}

When [!DNL Marketo Measure] importa o custo de plataformas conectadas, como AdWords, Bing, Facebook ou Doubleclick, e também usamos a moeda reportada. A moeda será exibida ao lado de Canal, Subcanal e Campanha quando for exibida na tabela de Gastos de marketing .

Se a moeda do Provedor de anúncios não corresponder a uma moeda extraída do CRM, você poderá ver um erro de &quot;Moedas mistas&quot; em [!DNL Marketo Measure Discover] porque não conseguimos fazer uma conversão nessa moeda. Para corrigir isso, seu Administrador do CRM precisa adicionar uma conversão para a moeda desconhecida.

## Migrar para gasto de marketing convertido {#migrate-to-converted-marketing-spend}

Como nosso gasto de marketing tem estado historicamente apenas em uma moeda única (USD), há uma pequena quantidade de trabalho necessário para alterar todos os gastos relatados para a nova moeda. Mesmo que sua conta não tenha Várias Moedas ativadas, se você tiver uma única moeda corporativa diferente de USD, você desejará fazer essa migração.

1. Baixar o arquivo de Gastos atual para um CSV
1. A coluna da moeda exibirá &quot;[!UICONTROL USD]&quot; como a moeda assumida. Você pode substituir manualmente todas as ocorrências de &quot;[!UICONTROL USD]&quot; ou use Localizar+Substituir para alterar todo o &quot;[!UICONTROL USD]&quot; para sua moeda corporativa, como &quot;[!UICONTROL EUR]&quot; ou &quot;[!UICONTROL GBP]&quot; por exemplo.
1. Salve o arquivo e faça upload dele novamente em [!DNL Marketo Measure].
1. Todos os custos relatados serão exibidos como a nova moeda.
