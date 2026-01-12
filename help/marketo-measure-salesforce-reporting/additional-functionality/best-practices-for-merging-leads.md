---
description: Práticas recomendadas para mesclar clientes em potencial - [!DNL Marketo Measure]
title: Práticas recomendadas para mesclar leads
exl-id: d9293ed7-a794-4e52-a269-20a7fb36ce50
feature: Tracking
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '194'
ht-degree: 5%

---


# Práticas recomendadas para mesclar leads {#best-practices-for-merging-leads}

Ao mesclar clientes em potencial no [!DNL Salesforce], é sempre melhor ter cuidado para garantir que nenhum dado seja perdido.

Para sua referência, aqui está um detalhamento de [como mesclar clientes em potencial](https://help.salesforce.com/s/articleView?id=leads_merge.htm&language=en_US&type=5) do Suporte [!DNL Salesforce].

A localização na qual [!DNL Marketo Measure] entra é quando é hora de selecionar campos que são preenchidos no registro mesclado. Após selecionar o Registro Mestre, valide se os campos [!DNL Marketo Measure] estão selecionados para serem transferidos para o novo registro.

Se houver vários registros com dados [!DNL Marketo Measure], verifique se o Registro Mestre tem os campos selecionados para o cliente potencial que foi criado primeiro. Os dados adicionais de [!DNL Marketo Measure] estarão presentes na seção de Insights. Além disso, verifique se o endereço de email do cliente potencial rastreado é o endereço de email que é retido, pois isso nos permite continuar a atualizar esse cliente potencial com quaisquer novos dados de atribuição.

A partir daí, você pode mesclar os clientes em potencial, e os dados de [!DNL Marketo Measure] serão transferidos para o novo registro.

Em caso de dúvidas, entre em contato com a Equipe de contas da Adobe (seu Gerente de conta) ou com o [Suporte da Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.

![Caixa de diálogo Mesclar Clientes Potenciais do Salesforce com campos do Marketo Measure retidos](assets/1.jpg)
