---
unique-page-id: 18874680
description: "[!DNL Facebook] API - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Facebook] API"
exl-id: d6d18545-baae-4103-b0a6-c3de681ec833
feature: APIs, Integration, UTM Parameters
source-git-commit: a2a7657e8377fd5c556d38f6eb815e39d2b8d15e
workflow-type: tm+mt
source-wordcount: '507'
ht-degree: 4%

---

# [!DNL Facebook] API {#facebook-api}

## Introdução {#introduction}

Semelhante ao nosso AdWords e [!DNL Bing Ads] integrações, nossas [!DNL Facebook] A integração do faz duas ações fundamentais:

* Marcar tudo automaticamente [!DNL Facebook] Anúncios com um [!DNL Marketo Measure] parâmetro (_bf)
* Baixar informações sobre custos de anúncios em todos os anúncios ativos do Facebook

## Como configurar o [!DNL Facebook] Integração {#how-to-configure-the-facebook-integration}

Quanto à configuração, há sete etapas a serem concluídas no [!DNL Marketo Measure] aplicativo.

1. Navegue até [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e faça logon.
1. Em Minha conta, selecione **[!UICONTROL Configurações]**.
1. Em Integrações, selecione **[!UICONTROL Conexões]**.
1. Selecionar **[!UICONTROL Configurar nova conexão com anúncios]** e uma janela pop-up será exibida. Selecionar **[!UICONTROL Facebook]** e faça logon usando suas credenciais da Facebook.

   >[!NOTE]
   >
   >A pessoa que conecta o [!DNL Facebook Ads] a conta precisa ser um administrador dentro do [!DNL Facebook Ads] conta.

1. Uma vez [!DNL Marketo Measure] estiver conectado à sua conta do Facebook, clique no ícone de lápis ao lado da conta.
1. Nesta exibição, mover a opção &quot;Marcação automática?&quot; alternar para &#39;Sim&#39;. Em seguida, marque a caixa de seleção localizada na [!UICONTROL Saiba mais] para concordar com os termos e condições. Verifique se [!UICONTROL Marcação automática] a opção de alternar ainda está definida como &#39;[!UICONTROL Sim]&#39;.

## Conexão com a conta {#connecting-the-account}

![](assets/1.gif)

## Habilitando a marcação automática {#enabling-autotagging}

>[!NOTE]
>
>Se você ativar a marcação automática, redefiniremos o histórico de conversão e a prova social de todos os anúncios marcados. Recomendamos [exportar estes dados como um CSV](https://www.facebook.com/business/help/205067636197240) antes de ativar a marcação automática.

![](assets/2-2.png)

Depois de habilitar a integração, [!DNL Marketo Measure] começará a baixar o custo do nível de anúncio na [!DNL Marketo Measure Marketing ROI] Painel.

Para que a integração funcione corretamente, será necessário habilitar a marcação automática no [!DNL Facebook] conta. Isso permitirá que nosso sistema adicione um parâmetro _bf em todos os links de anúncios. Esse processo adicionará o novo parâmetro sobre qualquer outro parâmetro de rastreamento que você já tenha adicionado ao seu [!DNL Facebook] anúncios.

![](assets/3.gif)

## Mapeamento de campos {#field-mapping}

<table> 
 <colgroup> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <th><p><strong>Campo do ponto de contato</strong></p></th> 
   <th><p><strong>Valor</strong></p></th> 
  </tr> 
  <tr> 
   <td><p>ID da campanha publicitária</p></td> 
   <td><p>[[!DNL Facebook] ID da campanha]</p></td> 
  </tr> 
  <tr> 
   <td><p>Nome da campanha publicitária </p></td> 
   <td><p>[[!DNL Facebook] Nome da campanha] ou [utm_campaign], se fornecido</p></td> 
  </tr> 
  <tr> 
   <td><p>ID do grupo de anúncios</p></td> 
   <td><p>[[!DNL Facebook] ID do conjunto de anúncios]</p></td> 
  </tr> 
  <tr> 
   <td><p>Nome do grupo de anúncios</p></td> 
   <td><p>[[!DNL Facebook] Ad Set Name]</p></td> 
  </tr> 
  <tr> 
   <td><p>Origem do touchpoint</p></td> 
   <td><p>"[!DNL Facebook]", ou [utm_source] se fornecido</p></td> 
  </tr> 
  <tr> 
   <td><p>Meio</p></td> 
   <td><p>"Social" ou [utm_medium] se fornecido</p></td> 
  </tr> 
  <tr> 
   <td><p>ID do anúncio ou Creative_Unique_Id (Data Warehouse)</p></td> 
   <td><p>[ID personalizada gerada de utm_content]</p></td> 
  </tr> 
  <tr> 
   <td><p>Conteúdo do anúncio ou Creative_Name (Data Warehouse)</p></td> 
   <td><p>[utm_content] se fornecido</p></td> 
  </tr> 
  <tr> 
   <td><p>Texto de palavra-chave ou Nome_de_palavra-chave (Data Warehouse)</p></td> 
   <td><p>[utm_term] se fornecido</p></td> 
  </tr> 
  <tr> 
   <td><p>Ad_Unique_Id (Data Warehouse)</p></td> 
   <td><p>[[!DNL Facebook] ID do anúncio]</p></td> 
  </tr> 
  <tr> 
   <td><p>Ad_Name (Data Warehouse)</p></td> 
   <td><p>[[!DNL Facebook] Nome do anúncio]</p></td> 
  </tr> 
  <tr> 
   <td><p>Palavra-Chave_Unique_Id (Data Warehouse)</p></td> 
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

**P: O que [!DNL Facebook] Os anúncios são suportados pelo [!DNL Marketo Measure]?**

R: Carrossel, Imagem única. Não há vídeo, apresentação de slides ou coleção no momento.

**P: O que é prova social?**

R: Prova social é o envolvimento visível, como curtidas, cliques, comentários e compartilhamentos.

**P: O que acontece quando [!DNL Marketo Measure] marcar o Anúncio?**

R: [!DNL Facebook] não permite que os anúncios sejam editados dessa forma [!DNL Marketo Measure] precisa excluir o criativo, que contém o URL de destino e, em seguida, recriar o anúncio com os novos parâmetros.

**P: Por que [!DNL Marketo Measure] atualizar tudo [!DNL Facebook] Anúncios?**

A: A [!DNL Marketo Measure] processo é marcar todos os anúncios caso sejam reativados.

**P: Qual permissão é necessária para o usuário conectado?**

R: ads_management, email

**P: Quanto tempo pode levar para importar dados de gastos?**

A: 1 hora

**P: Quanto tempo pode levar para importar dados de anúncios?**

A: 4 horas
