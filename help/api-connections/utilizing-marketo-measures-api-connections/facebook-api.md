---
unique-page-id: 18874680
description: "[!DNL Facebook] API - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Facebook] API"
exl-id: d6d18545-baae-4103-b0a6-c3de681ec833
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '509'
ht-degree: 3%

---

# [!DNL Facebook] API {#facebook-api}

## Introdução {#introduction}

Semelhante ao nosso AdWords &amp; [!DNL Bing Ads] integrações, nossa [!DNL Facebook] a integração executa duas ações fundamentais:

* Marcar automaticamente tudo [!DNL Facebook] Anúncios com uma [!DNL Marketo Measure] parâmetro (_bf)
* Baixar informações de custo de publicidade em todos os anúncios ativos do Facebook

## Como configurar o [!DNL Facebook] Integração {#how-to-configure-the-facebook-integration}

Quanto à configuração, há sete etapas a serem concluídas no [!DNL Marketo Measure] aplicativo.

1. Navegar para [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target=&quot;_blank&quot;} e fazer logon.
1. Em Minha conta selecione **[!UICONTROL Configurações]**.
1. Em Integrações , selecione **[!UICONTROL Conexões]**.
1. Selecionar **[!UICONTROL Configurar nova conexão de anúncios]** e um pop-up será exibido. Selecionar **[!UICONTROL Facebook]** e fazer logon usando suas credenciais do Facebook.

   >[!NOTE]
   >
   >A pessoa que conecta o [!DNL Facebook Ads] precisa ser um administrador no [!DNL Facebook Ads] conta.

1. Uma vez [!DNL Marketo Measure] estiver conectado à sua conta do Facebook, clique no ícone de lápis ao lado da conta.
1. Nesta exibição, mova a &quot;Marcação automática?&quot; alterne para &#39;Sim&#39;. Em seguida, marque a caixa de seleção localizada na [!UICONTROL Saiba mais] para concordar com os termos e condições. Certifique-se de que o [!UICONTROL Marcação automática] alternar ainda está definido como &#39;[!UICONTROL Sim]&quot;.

## Conexão da conta {#connecting-the-account}

![](assets/1.gif)

## Ativação da marcação automática {#enabling-autotagging}

>[!NOTE]
>
>Se você ativar a marcação automática, redefiniremos o histórico de conversão e a prova social de todos os anúncios que marcamos. Recomendamos [exportar esses dados como CSV](https://www.facebook.com/business/help/205067636197240) antes de ativar a marcação automática.

![](assets/2-2.png)

Após habilitar a integração, [!DNL Marketo Measure] O iniciará o download do custo de nível de anúncio no [!DNL Marketo Measure Marketing ROI] Painel.

Para que a integração funcione corretamente, será necessário ativar a marcação automática no [!DNL Facebook] conta. Isso permitirá que nosso sistema adicione um parâmetro _bf em todos os links de anúncios. Esse processo adicionará o novo parâmetro além de qualquer outro parâmetro de rastreamento que você já tenha adicionado ao seu [!DNL Facebook] anúncios.

![](assets/3.gif)

## Mapeamento de campos {#field-mapping}

<table> 
 <colgroup> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <th><p><strong>Campo de ponto de contato</strong></p></th> 
   <th><p><strong>Valor</strong></p></th> 
  </tr> 
  <tr> 
   <td><p>Id Da Campanha Publicitária</p></td> 
   <td><p>[[!DNL Facebook] ID da campanha]</p></td> 
  </tr> 
  <tr> 
   <td><p>Nome da campanha publicitária </p></td> 
   <td><p>[[!DNL Facebook] Nome da campanha], ou [utm_campaign], se fornecido</p></td> 
  </tr> 
  <tr> 
   <td><p>Id Do Grupo De Publicidade</p></td> 
   <td><p>[[!DNL Facebook] ID do conjunto de anúncios]</p></td> 
  </tr> 
  <tr> 
   <td><p>Nome do grupo de anúncios</p></td> 
   <td><p>[[!DNL Facebook] Nome do conjunto de anúncios]</p></td> 
  </tr> 
  <tr> 
   <td><p>Origem do Touchpoint</p></td> 
   <td><p>"[!DNL Facebook]", ou [utm_source], se fornecido</p></td> 
  </tr> 
  <tr> 
   <td><p>Médio</p></td> 
   <td><p>"Social", ou [utm_medium], se fornecido</p></td> 
  </tr> 
  <tr> 
   <td><p>ID do anúncio ou Creative_Unique_Id (Data Warehouse)</p></td> 
   <td><p>[ID personalizada gerada a partir de utm_content]</p></td> 
  </tr> 
  <tr> 
   <td><p>Conteúdo do anúncio ou Creative_Name (Data Warehouse)</p></td> 
   <td><p>[utm_content] se fornecido</p></td> 
  </tr> 
  <tr> 
   <td><p>Texto de palavra-chave ou Nome_da_palavra-chave (Data Warehouse)</p></td> 
   <td><p>[utm_term] se fornecido</p></td> 
  </tr> 
  <tr> 
   <td><p>Ad_Unique_Id (Data Warehouse)</p></td> 
   <td><p>[[!DNL Facebook] ID da Publicidade]</p></td> 
  </tr> 
  <tr> 
   <td><p>Ad_Name (Data Warehouse)</p></td> 
   <td><p>[[!DNL Facebook] Nome do anúncio]</p></td> 
  </tr> 
  <tr> 
   <td><p>Palavra-Chave_Id_Exclusivo (Data Warehouse)</p></td> 
   <td><p>[ID personalizada gerada a partir de utm_term]</p></td> 
  </tr> 
  <tr> 
   <td><p>Ad_Provider (Data Warehouse)</p></td> 
   <td><p>"[!DNL Facebook]"</p></td> 
  </tr> 
  <tr> 
   <td><p>Account_Unique_ID (Data Warehouse)</p></td> 
   <td><p>[[!DNL Facebook] Conta #]</p></td> 
  </tr> 
  <tr> 
   <td><p>Account_Name (Data Warehouse)</p></td> 
   <td><p>[[!DNL Facebook] Nome da conta]</p></td> 
  </tr> 
 </tbody> 
</table>

## Perguntas frequentes {#faq}

**P: What [!DNL Facebook] Os anúncios são compatíveis com [!DNL Marketo Measure]?**

A: Carrossel, Imagem Única. Não é Vídeo, Apresentação de Slides ou Coleção neste momento.

**P: O que é prova social?**

A: A prova social é um envolvimento visível, como curtidas, cliques, comentários e compartilhamentos.

**P: O que acontece quando [!DNL Marketo Measure] marca o anúncio?**

A: [!DNL Facebook] não permite que anúncios sejam editados assim [!DNL Marketo Measure] O precisa excluir o creative, que contém o URL de destino e recriar o anúncio com os novos parâmetros.

**P: Por que [!DNL Marketo Measure] atualizar tudo [!DNL Facebook] Anúncios?**

A: O [!DNL Marketo Measure] O processo é marcar todos os anúncios caso eles sejam reativados.

**P: Qual permissão é necessária para o usuário conectado?**

A: ad_management, email

**P: Quanto tempo pode levar para importar dados de gastos?**

A: 1 hora

**P: Quanto tempo pode levar para importar dados de anúncio?**

A: 4 horas
