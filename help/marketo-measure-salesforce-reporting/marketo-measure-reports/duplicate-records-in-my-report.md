---
description: Duplicar registros na orientação Meu relatório para usuários do Marketo Measure
title: Duplicar registros em meu relatório
exl-id: 4ee42371-5b67-4c69-9b49-3249f33614d0
feature: Reporting
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '273'
ht-degree: 9%

---

# Duplicar registros em meu relatório {#duplicate-records-in-my-report}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; na documentação, mas ainda pode ver &quot;[!DNL Bizible]&quot; no seu CRM. Estamos trabalhando na atualização e a reformulação da marca será refletida em seu CRM em breve.

À medida que você mergulha nos [!DNL Marketo Measure] Relatórios em [!DNL Salesforce], pode começar a encontrar registros &#39;duplicados&#39; em seus relatórios. É provável que você experimente essa sensação ao revisar [!DNL Marketo Measure] relatórios prontos para uso.

Ao relatar com o objeto Pontos de contato do comprador ou com o objeto Buyer Attribution Touchpoint, é importante entender que você não está mais relatando a contagem de clientes potenciais, contatos ou oportunidades, mas sim relatando o número de Pontos de contato do comprador ou Pontos de contato de atribuição do comprador associados a esses objetos padrão (clientes potenciais, contatos, oportunidades).

Vamos ver o seguinte relatório como exemplo:

Este é um relatório de **Contatos com Pontos de Contato do Comprador**. Novamente, isso significa que estamos observando a contagem de pontos de contato associados a um contato individual.

![](assets/marketo-reports-1.gif)

Como você pode ver, parece que há três contatos de James Williams no relatório, e portanto você pode estar pensando, &quot;duplicatas!&quot;

No entanto, este relatório mostra o número de pontos de contato relacionados a James. No relatório, você pode ver que James tem um FT individual (Primeiro contato), um LC individual, um Formulário (Toque de criação de leads) e um ponto de contato PostLC (um envio de formulário que ocorre após o ponto de contato LC).

Se quiser entender a &quot;contagem de contatos&quot;, use os campos &quot;Contagem - Primeiro contato&quot;, &quot;Toque de criação de líder de contagem&quot; ou &quot;Contagem em forma de U&quot; para entender quantos contatos tiveram interações de marketing.

>[!MORELIKETHIS]
>
>[[!DNL Marketo Measure] Tutoriais: Relatórios do Stock SFDC](https://experienceleague.adobe.com/en/docs/marketo-measure-learn/tutorials/onboarding/marketo-measure-102/stock-salesforce-reports){target="_blank"}
