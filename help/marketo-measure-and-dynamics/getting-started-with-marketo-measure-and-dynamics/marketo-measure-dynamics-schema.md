---
unique-page-id: 18874523
description: '[!DNL Marketo Measure] Esquema do Dynamics - [!DNL Marketo Measure]'
title: '[!DNL Marketo Measure] Esquema do Dynamics'
exl-id: f8da47b1-d844-4bd2-8125-8689cbb5cc30
feature: Microsoft Dynamics
source-git-commit: 706f60a3b35e524da816b1d70abd363f0f02a1ba
workflow-type: tm+mt
source-wordcount: '1084'
ht-degree: 66%

---

# [!DNL Marketo Measure] Esquema do Dynamics {#marketo-measure-dynamics-schema}

>[!NOTE]
>
>Você pode ver instruções específicas para o “[!DNL Marketo Measure]” na documentação, mas ainda notar o termo “Bizible” em seu CRM. Estamos trabalhando na atualização e a reformulação da marca será refletida em seu CRM em breve.

Abaixo está o esquema do Dynamics necessário para começar a usar o [!DNL Marketo Measure]. Todas as entidades e campos são listados, juntamente com o acesso de leitura e/ou gravação necessário.

## Buyer Touchpoints {#buyer-touchpoints}

O Buyer Touchpoint é uma entidade personalizada [!DNL Marketo Measure] para encapsular as interações de marketing para Contatos e Clientes Potenciais.

## Relacionamentos com a Buyer Touchpoint {#buyer-touchpoint-relationships}

Este diagrama é uma visualização de alto nível dos relacionamentos entre as entidades do Dynamics Stock e a Buyer Touchpoint.

## Buyer Touchpoint {#buyer-touchpoint}

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Content</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Destination_URL</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Group_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Group_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_TouchpointId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Browser</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_CampaignId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_ContactId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_First_Touch</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_Lead_Conversion_Touch</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_U_Shaped</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Form_URL</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Form_URL_Raw</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_City</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_Country</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_Region</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Keyword_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Keyword_MatchType</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Keyword_Text</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_Raw</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_LeadId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_Path</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Medium</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Placement_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Placement_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Platform</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Referrer_Page</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Referrer_Page_Raw</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Search_Phrase</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Segment</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Site_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Site_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Date</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Position</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Source</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Type</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_UniqueId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Account</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

## Buyer Attribution Touchpoint {#buyer-attribution-touchpoint}

O Buyer Attribution Touchpoint é uma entidade personalizada [!DNL Marketo Measure] para encapsular a influência do marketing em Oportunidades.

## Relacionamentos com a Buyer Attribution Touchpoint {#buyer-attribution-touchpoint-relationships}

Este diagrama é uma visualização de alto nível dos relacionamentos entre as entidades do Dynamics Stock e a Buyer Attribution Touchpoint.

## Buyer Attribution Touchpoints {#buyer-attribution-touchpoints}

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>bizible2_AccountId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Campaign_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Content</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Destination_URL</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Group_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Group_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Ad_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_Custom_Model</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_Custom_Model_2</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_First_Touch</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_Lead_Conversion_Touch</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_U_Shaped</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Attribution_W_Shaped</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_Attribution_TouchpointId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Browser</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_CampaignId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_ContactId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_Custom_Model</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_Custom_Model_2</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_First_Touch</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_Lead_Creation_Touch</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_U_Shaped</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Count_W_Shaped</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Form_URL</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Form_URL_Raw</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_City</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_Country</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Geo_Region</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Keyword_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Keyword_MatchType</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Keyword_Text</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Landing_Page_Raw</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Channel_Path</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Medium</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_OpportunityId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Placement_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Placement_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Platform</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Referrer_Page</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Referrer_Page_Raw</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_Custom_Model</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_Custom_Model_2</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_revenue_custom_model_2_Base</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_revenue_custom_model_Base</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_First_Touch</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_revenue_first_touch_Base</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_Lead_Conversion_Touch</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_revenue_lead_conversion_Base</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_U_Shaped</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_revenue_u_shape_Base</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Revenue_W_Shaped</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_revenue_w_shape_Base</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Search_Phrase</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Segment</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Site_Id</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Site_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Date</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Position</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Source</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Type</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_UniqueId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

## [!DNL Marketo Measure] Testes AB {#marketo-measure-ab-tests}

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_ABTestId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_BizibleId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_ContactId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_DateReported</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Experiment</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_ExperimentId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_LeadId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_OpportunityId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_UserId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Variation</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_VariationId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

## Eventos do [!DNL Marketo Measure] {#marketo-measure-events}

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_EventId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_BizibleId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_ContactId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_DateReported</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_EventName</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_EventValue</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_LeadId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_OpportunityId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

## Histórico de [!DNL Marketo Measure] {#marketo-measure-history}

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_HistoryId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Entity_Type</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_EntityId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_EntityLogicalName</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Name</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

## Entidades do Dynamics Standard {#dynamics-standard-entities}

Esta lista fornece as Entidades do Dynamics Standard com as quais [!DNL Marketo Measure] interage e os campos personalizados que adicionamos a essas entidades.

**Lead**

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>leadid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>endereço_de_email1</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>statecode</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>statuscode</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>createdon</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>modificado em</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>contactid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>qualifyingoportunityid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>url do site</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>company name</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Account</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_BizibleId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

**Contato**

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>contactid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>endereço_de_email1</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>accountid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>createdon</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>modificado em</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2_BizibleId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

**Conta**

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>accountid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>url do site</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>createdon</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>modificado em</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Engagement_Score</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

**Oportunidade**

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>oportunityid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>accountid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>createdon</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>modificado em</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>statecode</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>statecodename</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>salesstage</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>salesstagecode</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>estimatedclosedate</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>valor real</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_Opportunity_Amount</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_bizible_opportunity_amount_Base</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

**Campanha**

As permissões de &quot;Criação&quot; do Campaign também são necessárias, além das permissões de leitura/gravação abaixo.

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>campaignnid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>typecode</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>typecodename</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>createdon</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>modificado em</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_Attribution_SyncType</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Marketing_Lists_Sync</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_UniqueId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_End_Date</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Start_Date</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

**Resposta de campanha**

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>activityid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>activitytypecode</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>activitytypecodename</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>createdon</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>modificado em</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>responsecode</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>responsecodename</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>cliente</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>regardingobjectid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_Touchpoint_Date</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Status_Date</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Status_Contact</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Status_Leade</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Touchpoint_Status_Opportunity</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

**Lista**

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>listid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>createdfromcode</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>membertype</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>createdon</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>modificado em</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_Touchpoint_Date</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

**ListMember**

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>listid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>entityid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>listmemberid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>createdon</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>modificado em</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
 </tbody> 
</table>

**Telefonema**

<table> 
 <tbody> 
  <tr> 
   <th><p>Nome do esquema</p></th> 
   <th><p>Padrão/Personalizado</p></th> 
   <th><p>Ler</p></th> 
   <th><p>Gravar</p></th> 
  </tr> 
  <tr> 
   <td><p>activityid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>activitytypecode</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>activitytypecodename</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>createdon</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>modificado em</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>cliente</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>regardingobjectid</p></td> 
   <td><p>Padrão</p></td> 
   <td><p>x</p></td> 
   <td> </td> 
  </tr> 
  <tr> 
   <td><p>bizible2_Bizible_Touchpoint_Date</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
  <tr> 
   <td><p>bizible2_BizibleId</p></td> 
   <td><p>Personalizado</p></td> 
   <td><p>x</p></td> 
   <td><p>x</p></td> 
  </tr> 
 </tbody> 
</table>

[] = Somente clientes herdados V1
