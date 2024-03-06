---
unique-page-id: 18874562
description: Pontos de contato e envolvimento principal do PostLC - Marketo Measure - Documentação do produto
title: Touchpoints pós-LC e engajamento de lead
exl-id: 3ee5c571-195e-46c7-b150-fedcbc3614cb
feature: Touchpoints
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '384'
ht-degree: 3%

---

# Touchpoints pós-LC e engajamento de lead {#postlc-touchpoints-and-lead-engagement}

[!DNL Marketo Measure] Os pontos de contato de Criação pós-lead (PostLC) estão disponíveis para clientes que usam modelos de atribuição multitoque (W-Shape e superior). Quando um lead ou contato retorna ao seu site e continua a preencher formulários, esses envios de formulários são registrados como pontos de contato PostLC. Esses pontos de contato permitem que você veja qual conteúdo está impulsionando os clientes potenciais a continuarem a se envolver com o site muito tempo após a primeira conversão. Os pontos de contato PostLC compartilham crédito de atribuição com todos os pontos de contato intermediários em uma Oportunidade; 10% de crédito de atribuição é atribuído a pontos de contato intermediários e é distribuído igualmente entre todos os contatos.

![](assets/1.png)

Você pode ajustar o número de pontos de contato PostLC exibidos em [!DNL SFDC]. Normalmente, recomendamos enviar até cinco pontos de contato PostLC; cada ponto de contato ocupa até 1 KB [!DNL SFDC].

>[!NOTE]
>
>As instruções sobre como ajustar as configurações de ponto de contato PostLC podem ser encontradas no final deste artigo.

Os pontos de contato PostLC são dinâmicos. Como um lead ou contato continua a enviar formulários PostLC, [!DNL Marketo Measure] O atualiza os pontos de contato PostLC no CRM para mostrar os envios de formulário mais recentes. Especificamente, se você tiver definido um limite de 5 pontos de contato PostLC, [!DNL Marketo Measure] sempre pressionar os cinco _mais recente_ pontos de contato para seu CRM.  Neste exemplo, essa conta definiu o limite de PostLC para quatro pontos de contato. Esse lead já atingiu o número máximo de pontos de contato PostLC que ele pode ter em seu CRM. O último contato no PostLC foi em 6/2/2018. Se essa pessoa preenchesse outro formulário no dia seguinte, [!DNL Marketo Measure] removerá o primeiro ponto de contato PostLC de 11/9/2017 para adicionar o ponto de contato mais recente de 7/2/2018.

![](assets/2.png)

>[!NOTE]
>
>[!DNL Marketo Measure] atualiza somente pontos de contato PostLC no lead ou contato e não atualiza pontos de contato de atribuição PostLC em uma oportunidade. Todos os pontos de contato PostLC relevantes em um Contato são incluídos na Oportunidade.

## Como alterar as configurações de ponto de contato PostLC {#how-to-change-postlc-touchpoint-settings}

Para ajustar as configurações de ponto de contato PostLC para seus clientes em potencial ou contatos, siga as instruções abaixo.

**Clientes potenciais**

1. Faça logon no [!DNL Marketo Measure] conta em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e vá para [!UICONTROL Configurações].

1. Em CRM, selecione **[!UICONTROL Clientes potenciais]**.

1. Insira o número de pontos de contato postLC que você deseja enviar para seus clientes em potencial e clique em **[!UICONTROL Salvar]**.

   ![](assets/3.png)

**Contatos**

1. Faça logon no [!DNL Marketo Measure] conta em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e vá para [!UICONTROL Configurações].

1. Em CRM, selecione **[!UICONTROL Contatos]**.

1. Insira o número de pontos de contato postLC que você gostaria de encaminhar para seus Contatos e clique em **[!UICONTROL Salvar]**.

   ![](assets/4.png)
