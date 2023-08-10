---
unique-page-id: 18874614
description: Relatório de clientes potenciais com pontos de contato do comprador - [!DNL Marketo Measure] - Documentação do produto
title: Leads com relatório de Buyer Touchpoints
exl-id: 0376abb0-5eed-41bb-ab4f-3c204ab437df
feature: Touchpoints, Reporting
source-git-commit: a2a7657e8377fd5c556d38f6eb815e39d2b8d15e
workflow-type: tm+mt
source-wordcount: '198'
ht-degree: 5%

---

# Leads com relatório de Buyer Touchpoints {#leads-with-buyer-touchpoints-report}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot;em nossa documentação, mas ainda consulte&quot;[!DNL Bizible]&quot; no seu CRM. Estamos trabalhando para atualizar isso e a reformulação da marca será refletida em seu CRM em breve.

Pronto para uso, você tem muitos recursos de relatórios na ponta dos dedos quando se trata de [!DNL Marketo Measure], mas há alguns tipos de relatórios adicionais que recomendamos criar. Saiba mais sobre como criar um tipo de relatório de clientes potenciais inclusivo com pontos de contato do comprador abaixo.

1. Navegue até a opção Configuração em [!DNL Salesforce]. Expanda o agrupamento &quot;Criar&quot; e selecione **[!UICONTROL Tipos de relatório]**.

   ![](assets/1.jpg)

1. Selecionar **[!UICONTROL Novo tipo de relatório personalizado]**.

   ![](assets/2.jpg)

1. Defina o objeto principal como &quot;Clientes potenciais&quot; e, na entrada &quot;Rótulo de tipo de relatório&quot;, &quot;Clientes potenciais com pontos de contato do comprador - Inclusivo&quot;. Armazenar o relatório na categoria &quot;Clientes potenciais&quot; e alterar o status de implantação para **[!UICONTROL Implantado]**. Em seguida, selecione **[!UICONTROL Próxima]**.

   ![](assets/3.jpg)

1. Para os relacionamentos entre objetos, selecione o **[!DNL Marketo Measure]Pessoas** objeto como o objeto secundário. Selecione o relacionamento A para B como, &quot;Cada registro &#39;A&#39; deve ter pelo menos um registro &#39;B&#39; relacionado.&quot; A partir daí, você relacionará o objeto &quot;Ponto de contato do comprador&quot; e selecionará o mesmo relacionamento entre os objetos B e C.

   ![](assets/4.jpg)

1. Salve e comece a criar alguns relatórios!
