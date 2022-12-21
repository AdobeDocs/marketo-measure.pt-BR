---
unique-page-id: 18874562
description: Pontos de contato pós-LC e envolvimento de clientes potenciais - Medida do Marketo - Documentação do produto
title: Pontos de contato pós-LC e envolvimento de cliente potencial
exl-id: 3ee5c571-195e-46c7-b150-fedcbc3614cb
source-git-commit: f13e55f009f33140ff36523212ed8b9ed5449a4d
workflow-type: tm+mt
source-wordcount: '393'
ht-degree: 0%

---

# Pontos de contato pós-LC e envolvimento de cliente potencial {#postlc-touchpoints-and-lead-engagement}

[!DNL Marketo Measure] Os pontos de contato pós-criação de clientes potenciais (PostLC) estão disponíveis para clientes que usam modelos de atribuição de vários toque (Forma W e superior). Quando um Cliente Potencial ou Contato retorna ao seu site e continua preenchendo formulários, esses envios de formulário são registrados como pontos de contato PostLC. Esses pontos de contato permitem que você veja o conteúdo que está acionando o Leads para continuar a se envolver com o site, muito depois da primeira conversão. Os pontos de contato da PostLC compartilham o crédito de atribuição com todos os pontos de contato intermediários em uma Oportunidade; O crédito de atribuição de 10% é atribuído a pontos de contato intermediários e é distribuído igualmente entre todos os toques.

![](assets/1.png)

Você pode ajustar o número de pontos de contato PostLC que serão exibidos em [!DNL SFDC]. Normalmente, recomendamos enviar até cinco pontos de contato PostLC; cada ponto de contato consome 1 KB em [!DNL SFDC].

>[!NOTE]
>
>As instruções sobre como ajustar as configurações de ponto de contato do PostLC podem ser encontradas no final deste artigo.

Os pontos de contato PostLC são dinâmicos. Como líder ou contato continua a enviar formulários PostLC, [!DNL Marketo Measure] O atualizará os pontos de contato do PostLC em seu CRM para mostrar seus envios de formulário mais recentes. Especificamente, se você definiu um limite de 5 pontos de contato de PostLC, [!DNL Marketo Measure] sempre empurre o 5 _mais recente_ pontos de contato para o seu CRM.  Neste exemplo, esta conta definiu seu limite de PostLC como quatro pontos de contato. Esse lead já atingiu o número máximo de pontos de contato PostLC que ele pode ter em seu CRM. O último toque de PostLC foi em 6/2/2018. Se essa pessoa preencher outro formulário no dia seguinte, [!DNL Marketo Measure] removerá o primeiro ponto de contato PostLC de 9/11/2017 para adicionar o último ponto de contato de 7/2/2018.

![](assets/2.png)

>[!NOTE]
>
>[!DNL Marketo Measure] O atualizará somente pontos de contato PostLC no Lead ou Contato e não atualizará pontos de contato de atribuição PostLC em uma Oportunidade. Todos os pontos de contato relevantes do PostLC em um Contato serão incluídos na Oportunidade.

## Como alterar as configurações do ponto de contato do PostLC {#how-to-change-postlc-touchpoint-settings}

Para ajustar as configurações do ponto de contato PostLC para seus Clientes Potenciais ou Contatos, siga as instruções abaixo.

**Leads**

1. Faça logon no [!DNL Marketo Measure] conta em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target=&quot;_blank&quot;} e vá para [!UICONTROL Configurações].

1. Em CRM, selecione **[!UICONTROL Clientes potenciais]**.

1. Insira o número de pontos de contato do postLC que você gostaria de enviar para seus Leads e clicar **[!UICONTROL Salvar]**.

   ![](assets/3.png)

**Contatos**

1. Faça logon no [!DNL Marketo Measure] conta em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target=&quot;_blank&quot;} e vá para [!UICONTROL Configurações].

1. Em CRM, selecione **[!UICONTROL Contatos]**.

1. Insira o número de pontos de contato do postLC que você gostaria de encaminhar para seus contatos e clicar em **[!UICONTROL Salvar]**.

   ![](assets/4.png)
