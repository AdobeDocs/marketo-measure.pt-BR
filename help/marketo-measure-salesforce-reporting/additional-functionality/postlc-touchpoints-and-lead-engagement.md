---
description: Saiba como os pontos de contato PostLC são criados, atualizados e limitados para clientes potenciais e contatos
title: Touchpoints pós-LC e engajamento de lead
exl-id: 3ee5c571-195e-46c7-b150-fedcbc3614cb
feature: Touchpoints
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '388'
ht-degree: 3%

---

# Touchpoints pós-LC e engajamento de lead {#postlc-touchpoints-and-lead-engagement}

[!DNL Marketo Measure] Pontos de contato de Criação Pós-líder (PostLC) estão disponíveis para clientes que usam modelos de atribuição multitoque (Forma-W e superior). Quando um lead ou contato retorna ao seu site e continua a preencher formulários, esses envios de formulários são registrados como pontos de contato PostLC. Esses pontos de contato permitem que você veja qual conteúdo está impulsionando os clientes potenciais a continuarem a se envolver com o site muito tempo após a primeira conversão. Os pontos de contato PostLC compartilham crédito de atribuição com todos os pontos de contato intermediários em uma Oportunidade; 10% de crédito de atribuição é atribuído a pontos de contato intermediários e é distribuído igualmente entre todos os contatos.

![](assets/additional-functionality-1.png)

Você pode ajustar o número de pontos de contato PostLC exibidos em [!DNL SFDC]. Normalmente, recomendamos enviar até cinco pontos de contato PostLC; cada ponto de contato consome até 1 KB em [!DNL SFDC].

>[!NOTE]
>
>As instruções sobre como ajustar as configurações de ponto de contato PostLC podem ser encontradas no final deste artigo.

Os pontos de contato PostLC são dinâmicos. Como um cliente potencial ou contato continua a enviar formulários PostLC, o [!DNL Marketo Measure] atualiza os pontos de contato PostLC no seu CRM para mostrar a você os envios de formulários mais recentes. Especificamente, se você definiu um limite de 5 pontos de contato PostLC, [!DNL Marketo Measure] sempre envie os cinco _pontos de contato mais recentes_ para seu CRM.  Neste exemplo, essa conta definiu o limite de PostLC para quatro pontos de contato. Esse lead já atingiu o número máximo de pontos de contato PostLC que ele pode ter em seu CRM. O último contato no PostLC foi em 6/2/2018. Se essa pessoa precisar preencher outro formulário no dia seguinte, [!DNL Marketo Measure] removerá o primeiro ponto de contato PostLC de 9/11/2017 para adicionar o ponto de contato mais recente de 7/2/2018.

![](assets/additional-functionality-2.png)

>[!NOTE]
>
>[!DNL Marketo Measure] atualiza somente pontos de contato PostLC no cliente potencial ou contato e não atualiza pontos de contato de atribuição PostLC em uma Oportunidade. Todos os pontos de contato PostLC relevantes em um Contato são incluídos na Oportunidade.

## Como alterar as configurações de ponto de contato PostLC {#how-to-change-postlc-touchpoint-settings}

Para ajustar as configurações de ponto de contato PostLC para seus clientes em potencial ou contatos, siga as instruções abaixo.

**Clientes Potenciais**

1. Faça logon em sua conta do [!DNL Marketo Measure] em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e vá para [!UICONTROL Configurações].

1. Em CRM, Selecione **[!UICONTROL Clientes Potenciais]**.

1. Insira o número de pontos de contato postLC que você gostaria de encaminhar para seus clientes em potencial e clique em **[!UICONTROL Salvar]**.

   ![](assets/additional-functionality-3.png)

**Contatos**

1. Faça logon em sua conta do [!DNL Marketo Measure] em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e vá para [!UICONTROL Configurações].

1. Em CRM, Selecione **[!UICONTROL Contatos]**.

1. Insira o número de pontos de contato postLC que você gostaria de encaminhar para seus Contatos e clique em **[!UICONTROL Salvar]**.

   ![](assets/additional-functionality-4.png)
