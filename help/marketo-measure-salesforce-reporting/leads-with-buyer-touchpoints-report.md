---
description: Orientação do relatório de clientes potenciais com pontos de contato do comprador para usuários do Marketo Measure
title: Cliente Potencial com Relatório de Pontos de Contato do Comprador
exl-id: 0376abb0-5eed-41bb-ab4f-3c204ab437df
feature: Touchpoints, Reporting
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '241'
ht-degree: 8%

---

# Cliente Potencial com Relatório de Pontos de Contato do Comprador {#leads-with-buyer-touchpoints-report}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; na documentação, mas ainda pode ver &quot;[!DNL Bizible]&quot; no seu CRM. Estamos trabalhando na atualização e a reformulação da marca será refletida em seu CRM em breve.

Pronto para uso, você tem muitos recursos de relatórios na ponta dos dedos quando se trata de [!DNL Marketo Measure], mas há alguns tipos de relatórios adicionais que recomendamos criar. Saiba mais sobre como criar um tipo de relatório de clientes potenciais inclusivo com pontos de contato do comprador abaixo.

1. Navegue até sua opção de Instalação em [!DNL Salesforce]. Expanda o agrupamento &quot;Criar&quot; e selecione **[!UICONTROL Tipos de Relatório]**.

   ![1. Navegue até a opção Configuração no Salesforce. A partir daí, expanda](assets/bizible-guide-1.png)

1. Selecione **[!UICONTROL Novo Tipo de Relatório Personalizado]**.

   ![1. Selecione Novo Tipo de Relatório Personalizado.](assets/marketo-reports-17.jpg)

1. Defina o objeto principal como &quot;Clientes potenciais&quot; e, na entrada &quot;Rótulo de tipo de relatório&quot;, &quot;Clientes potenciais com pontos de contato do comprador - Inclusivo&quot;. Armazene o relatório na categoria &quot;Clientes potenciais&quot; e altere o status da implantação para **[!UICONTROL Implantado]**. Em seguida, selecione **[!UICONTROL Próximo]**.

   ![1. Defina o objeto principal como &quot;Clientes Potenciais&quot; e dentro do &quot;Tipo de Relatório](assets/marketo-reports-18.jpg)

1. Para as relações de objeto, selecione o objeto **[!DNL Marketo Measure]Pessoas** como o objeto secundário. Selecione o relacionamento A para B como, &quot;Cada registro &#39;A&#39; deve ter pelo menos um registro &#39;B&#39; relacionado.&quot; Lá, você relacionará o objeto &quot;Buyer Touchpoint&quot; e selecionará o mesmo relacionamento entre os objetos B e C.

   ![1. Para as relações de objeto, selecione o objeto Pessoas da Marketo Measure ](assets/bizible-guide-2.png)

1. Salve e comece a criar alguns relatórios!
