---
unique-page-id: 37356030
description: Parâmetro de rastreamento de email - [!DNL Marketo Measure] - Documentação do produto
title: Parâmetro de rastreamento por e-mail
exl-id: e2cfd59e-ce4a-4cbb-b64a-828d1db7410f
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '457'
ht-degree: 3%

---

# Parâmetro de rastreamento por e-mail {#email-tracking-parameter}

O [!DNL Marketo Measure] O parâmetro de rastreamento de email permite que profissionais de marketing tratem cliques em emails como envios de formulário para que pontos de contato sejam gerados para essas ações. Sem usar um parâmetro de rastreamento de email, os click-throughs de um email são tratados somente como &quot;visitas da Web&quot; até que o usuário realmente se envolva com o site por meio de um envio de formulário ou de um bate-papo na Web.

## Casos de uso  {#use-cases}

**Registro de webinar**: A equipe de marketing envia um convite por email com um único botão para se registrar em um webinário. Como o email já tem as informações da pessoa, o único clique as registrará automaticamente. A landing page contém o parâmetro de rastreamento de email. Assim, ao clicar, eles chegam na página de confirmação. [!DNL Marketo Measure] O pode capturar o endereço de email e tratar o click-through como um preenchimento de formulário, o que gerará um ponto de contato.

**Download de conteúdo**: A equipe de marketing de conteúdo deseja promover um eBook recente, publicado com um link de download direto de um email. Quando o modelo de email for criado, a página de confirmação de download conterá o parâmetro de rastreamento de email para que, ao clicar, [!DNL Marketo Measure] O pode capturar o endereço de email. Sem precisar preencher um formulário no site, [!DNL Marketo Measure] O pode gerar um ponto de contato para o download de conteúdo que ocorreu por meio do email, pois ele os entregou na página de confirmação com o parâmetro de rastreamento de email.

## Como funciona {#how-it-works}

Quando um visitante chega ao seu site, [!DNL Marketo Measure] O espera encontrar uma landing page com um endereço de email ou [!DNL Salesforce] Id para que possamos associar essa visita a um &quot;envio de formulário&quot; e gerar um ponto de contato para essa atividade.

Como cliente, você criará um modelo de email normalmente. Quando chegar o momento de adicionar a página de aterrissagem da ação que deseja rastrear, será necessário determinar o token, a tag da variável ou a macro que sua plataforma de Automação de marketing aceita para exibir dinamicamente o valor de cada indivíduo.

A Marketo Measure aceita os seguintes valores: Endereço de email, ID do cliente potencial do Salesforce ou ID de contato do Salesforce.

## Exemplos de tag {#tag-examples}

<table> 
 <colgroup> 
  <col> 
  <col> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <th><p>Automatização de marketing</p></th> 
   <th><p>Token / Tag / Macro </p></th> 
   <th><p>Exemplo</p></th> 
   <th><p>Material de suporte</p></th> 
  </tr> 
  <tr> 
   <td><p>Marketo</p></td> 
   <td><p>{{lead.Email Address}} </p></td> 
   <td><p>https://engage.marketo.com/rs/460-TDH-945/images/BZ-B2B-Marketing-Attribution-101-ebook.pdf?mailId={{lead.EmailAddress}}</p></td> 
   <td><p>https://docs.marketo.com/display/public/DOCS/Tokens+Overview#TokensOverview-PersonTokens</p></td> 
  </tr> 
  <tr> 
   <td><p>Pardot</p></td> 
   <td><p>%%e-mail%% </p><p>ou</p><p>%%user_crm_id%%</p></td> 
   <td><p>https://engage.marketo.com/rs/460-TDH-945/images/BZ-B2B-Marketing-Attribution-101-ebook.pdf?mailId=%%email%%</p></td> 
   <td><p>https://help.salesforce.com/articleView?id=pardot_variable_tags_reference.htm&amp;type=5</p></td> 
  </tr> 
  <tr> 
   <td><p>Manchete</p></td> 
   <td><p>(inserido via Editor)</p></td> 
   <td><p>n/d</p></td> 
   <td><p>https://knowledge.hubspot.com/cos-general/how-to-use-personalization-with-your-content</p></td> 
  </tr> 
  <tr> 
   <td><p>Act-On</p></td> 
   <td><p>(inserido por Message Composer)</p></td> 
   <td><p>n/d</p></td> 
   <td><p>https://connect.act-on.com/hc/en-us/articles/360033436074-How-to-Personalize-Email-Content-with-CRM-Data</p></td> 
  </tr> 
 </tbody> 
</table>

E finalmente, dentro [!DNL Marketo Measure], será necessário especificar o parâmetro de rastreamento para que [!DNL Marketo Measure] O pode localizar o valor de email ou ID. O padrão é &quot;mailId&quot;, como mostrado nos exemplos acima e na captura de tela abaixo. Insira o valor nas Configurações em [!DNL Marketo Measure], depois clique em **[!UICONTROL Salvar]**.

![](assets/one.png)
