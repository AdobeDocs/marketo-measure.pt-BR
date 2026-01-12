---
description: Oportunidades Perdidas Fechadas por Canal de Marketing - [!DNL Marketo Measure]
title: Oportunidades perdidas encerradas pelo canal de marketing
exl-id: 010169fc-f7e7-4ab2-92fe-87e4250dd536
feature: Channels, Reporting
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '330'
ht-degree: 3%

---


# Oportunidades perdidas encerradas pelo canal de marketing {#closed-lost-opportunities-by-marketing-channel}

Embora este relatório possa depender dos estágios de oportunidade, ele revelará quais canais de marketing contribuíram para oportunidades que não foram fechadas.

1. Clique na guia **[!UICONTROL Relatórios]** no Salesforce e selecione **[!UICONTROL Novo Relatório]**.

   ![Guia Relatórios do Salesforce com o botão Novo Relatório realçado](assets/1-3.jpg)

1. Na localização rápida, digite &quot;Atribuição de Bizible&quot;, selecione o **[!UICONTROL Ponto de Contato de Atribuição de Bizible com o tipo de relatório Oportunidade]** e selecione **[!UICONTROL Criar]**.

   ![Seleção de tipo de relatório mostrando o Ponto de Contato de Atribuição da Bizible com a opção Oportunidade](assets/2-3.jpg)

1. A partir da parte superior do relatório, mostre &quot;[!UICONTROL Todos os pontos de contato de atribuição da Bizible]&quot; e ajuste o campo de data de acordo com o período no qual você deseja criar o relatório. No nosso exemplo, estamos olhando para Todos os Tempos. Além disso, altere o formato do relatório de Tabular para Resumo.

   ![Filtro de relatório que mostra Todos os Pontos de Contato de Atribuição da Bizible com seletor de intervalo de datas](assets/3-3.jpg)

   ![Opções de formato de relatório com o formato de Resumo selecionado](assets/4-2.jpg)

1. Agora, adicionaremos campos ao relatório. Na localização rápida à esquerda, digite &quot;Canal de marketing&quot; e adicione-o ao agrupamento de resumo no relatório.

   ![Report Builder mostrando o campo Canal de marketing sendo adicionado ao agrupamento de resumo](assets/5.jpg)

1. Em seguida, adicionaremos um filtro para observar apenas as Ops perdidas fechadas. Na localização rápida à esquerda, procure o campo &quot;Preparo&quot; e arraste-o para a área de filtro.

   ![Relatar área de filtro com o campo Estágio sendo arrastado para a seção de filtro](assets/6.jpg)

1. A partir daí, você selecionará a lupa para escolher os estágios que utilizar para as oportunidades &quot;Perdidas Fechadas&quot;. No nosso caso, usaremos o nome padrão &quot;Perda fechada&quot;.

   ![Seletor de filtro de preparo mostrando a opção de seleção de estágio Perdido Fechado](assets/7.jpg)

1. Agora, vá em frente e execute o relatório!

   Este é um relatório de Oportunidades resumido pelo Canal de marketing que avalia as Oportunidades fechadas perdidas em seus canais. Esse relatório permite compreender quais Canais podem estar com baixo desempenho. Você pode adicionar filtros ou campos sobre os quais deseja criar relatórios.

>[!MORELIKETHIS]
>[[!DNL Marketo Measure] Tutoriais: Relatórios Adicionais do SFDC](https://experienceleague.adobe.com/en/docs/marketo-measure-learn/tutorials/onboarding/marketo-measure-102/addtional-salesforce-reports)
