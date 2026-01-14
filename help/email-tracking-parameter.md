---
description: Orientação do parâmetro de rastreamento de email para usuários do Marketo Measure
title: Parâmetro de rastreamento por email
exl-id: e2cfd59e-ce4a-4cbb-b64a-828d1db7410f
feature: Tracking
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '428'
ht-degree: 3%

---

# Parâmetro de rastreamento por email {#email-tracking-parameter}

O Parâmetro de Acompanhamento de Email [!DNL Marketo Measure] permite que os profissionais de marketing tratem cliques de email como envios de formulário, de modo que os pontos de contato sejam gerados para essas ações. Sem usar um parâmetro de rastreamento de email, os click-throughs de um email são tratados apenas como &quot;visitas da Web&quot; até que o usuário realmente se envolva com o site por meio de um envio de formulário ou um chat da Web.

## Casos de uso  {#use-cases}

**Registro no webinário**: a equipe de marketing envia um convite por email com um único botão para se registrar em um webinário. Como o email já tem as informações da pessoa, o clique único as registra automaticamente. A página de aterrissagem contém o parâmetro de rastreamento de email para que, quando clicarem e chegarem à página de confirmação, [!DNL Marketo Measure] possa capturar o endereço de email e tratar o click-through como um preenchimento de formulário, que gera um ponto de contato.

**Download de Conteúdo**: a equipe de Marketing de Conteúdo deseja promover um eBook recente que publicou com um link de download direto de um email. Quando o modelo de email for criado, a página de confirmação do download conterá o parâmetro de rastreamento de email para que, ao clicar, [!DNL Marketo Measure] possa capturar o endereço de email. Sem precisar preencher um formulário no site, [!DNL Marketo Measure] pode gerar um ponto de contato para o download de conteúdo. Isso ocorre porque o email os colocou na página de confirmação com o parâmetro de rastreamento de email.

## Como funciona {#how-it-works}

Quando um visitante chega ao seu site, o [!DNL Marketo Measure] espera encontrar uma página de aterrissagem com um endereço de email ou uma ID do [!DNL Salesforce] para que possamos associar essa visita a um &quot;envio de formulário&quot; e gerar um ponto de contato para essa atividade.

Como cliente, você cria um modelo de email normalmente. Depois de adicionar o à página de aterrissagem da ação que deseja rastrear, determine o token, a tag variável ou a macro que a plataforma de Automação de marketing aceita para exibir dinamicamente o valor de cada indivíduo.

A Marketo Measure aceita os seguintes valores: Endereço de email, ID de cliente potencial da Salesforce ou ID de contato da Salesforce.

## Exemplos de tag {#tag-examples}

| Automatização de marketing | Token/Tag/Macro | Exemplo | Material de suporte |
| --- | --- | --- | --- |
| Marketo | {{lead.Email Address}} | <https://engage.marketo.com/rs/460-TDH-945/images/BZ-B2B-Marketing-Attribution-101-ebook.pdf?mailId={{lead.EmailAddress}}> | [Visão geral dos tokens](https://experienceleague.adobe.com/docs/marketo/using/product-docs/demand-generation/landing-pages/personalizing-landing-pages/tokens-overview.html) |
| Pardot | %%email%% ou %%user_crm_id%% | <https://engage.marketo.com/rs/460-TDH-945/images/BZ-B2B-Marketing-Attribution-101-ebook.pdf?mailId=%%email%%> | [Referência das marcas da variável Pardot](https://help.salesforce.com/s/articleView?language=en_US&id=pardot_variable_tags_reference.htm&type=5) |
| Hubspot | (inserido pelo Editor) | n/d | [Personalizar conteúdo do HubSpot](https://knowledge.hubspot.com/website-pages/personalize-your-content) |
| Act-On | (inserido pelo Message Composer) | n/d | [Personalizar conteúdo de email através de ação](https://connect.act-on.com/hc/en-us/articles/360033436074-How-to-Personalize-Email-Content-with-CRM-Data) |

Por fim, em [!DNL Marketo Measure], você deve especificar o parâmetro de rastreamento para que [!DNL Marketo Measure] possa localizar o valor do email ou da ID. O padrão é &quot;mailId&quot;, como mostrado nos exemplos acima e na captura de tela abaixo. Insira o valor em suas Configurações em [!DNL Marketo Measure] e clique em **[!UICONTROL Salvar]**.

![E finalmente, no Marketo Measure, você deve especificar o parâmetro de rastreamento](assets/marketo-engage-activities-01.png)
