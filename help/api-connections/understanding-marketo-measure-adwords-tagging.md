---
description: Compreendendo as  [!DNL Marketo Measure] diretrizes de Marcação do AdWords para usuários do Marketo Measure
title: Noções básicas de [!DNL Marketo Measure] Marcação do AdWords
exl-id: c6658766-d3a8-46ed-b2d2-826eb61ce269
feature: APIs, Integration, UTM Parameters
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '657'
ht-degree: 6%

---

# Compreendendo a Marcação do AdWords [!DNL Marketo Measure] {#understanding-marketo-measure-adwords-tagging}

Para rastrear seus anúncios em um nível muito granular, os URLs de destino do anúncio devem ser exclusivos. Para fazer isso, a marcação automática do [!DNL Marketo Measure] adiciona automaticamente parâmetros de rastreamento às URLs de Destino de Anúncios dos seus anúncios do [!DNL AdWords]. Vamos observar um exemplo abaixo.

O URL a seguir não fornecerá dados granulares:

* `http://example.com/landing-page?myParam=foo`

No entanto, a mesma URL fornecerá dados granulares devido aos [!DNL Marketo Measure] parâmetros:

* `http://example.com/landing-page?myParam=foo&_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`

## Como funciona a marcação automática do [!DNL Marketo Measure] {#how-marketo-measure-auto-tagging-works}

**Se [!DNL Marketo Measure] encontrar um Modelo de Acompanhamento:**

* [!DNL Marketo Measure] adicionará seus parâmetros ao Modelo de Rastreamento.
* Se um redirecionamento de terceiros for encontrado em um Modelo de Rastreamento como Kenshoo ou Marin, [!DNL Marketo Measure] não executará nenhuma ação. Em vez disso, você deve [adicionar [!DNL Marketo Measure] parâmetros à ferramenta de terceiros na sua conta](/help/api-connections/how-bid-management-tools-affect-marketo-measure.md){target="_blank"}.

No entanto, se nenhum Modelo de Acompanhamento for encontrado, [!DNL Marketo Measure] irá:

* Verifique todas as URLs de Destino de Anúncios para nossos [!DNL Marketo Measure] Parâmetros.
* Se for encontrado, você pode ir.
* Se não for encontrado, [!DNL Marketo Measure] anexará seus parâmetros ao final das URLs de Destino de Anúncio. Para novos anúncios, o [!DNL Marketo Measure] anexará seus parâmetros à URL de Destino do Anúncio em até duas horas após a criação.
* É importante ter um modelo de rastreamento em vigor antes de habilitar a marcação automática para que [!DNL Marketo Measure] possa se anexar a ele e impedir a redefinição de um histórico de anúncios.

O [!DNL Marketo Measure] recomenda o uso de um modelo de rastreamento de nível de conta, de campanha ou de grupo de anúncios, pois isso permite adicionar ou remover parâmetros de todos os anúncios sem o risco de interromper ou excluir o histórico de anúncios.

## Modelos de rastreamento {#tracking-templates}

Como explicado por [!DNL Google AdWords], um modelo de rastreamento é a URL usada para acessar uma página de aterrissagem. As informações de rastreamento coletadas são usadas para entender o tráfego do anúncio. [Clique aqui](https://support.google.com/adwords/answer/7197008?hl=en){target="_blank"} para obter mais informações do Google.

A [!DNL Marketo Measure] recomenda o uso de um modelo de Rastreamento em Nível de Conta, Nível de Campanha ou Nível de Grupo de Anúncios, pois ele permite a adição e subtração de parâmetros para todos os anúncios, sem o risco de interrupções ou exclusão do Histórico de Anúncios.

Há dois modelos de rastreamento que [!DNL Marketo Measure] recomenda usar. Use o seguinte para determinar qual versão é apropriada para você:

* Se todos os URLs de anúncios tiverem um &quot;?&quot; nelas, use este URL:

`{lpurl}&_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`

* Se nenhum dos URLs do seu anúncio tiver um &quot;?&quot; nelas, use este URL:

`{lpurl}?_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`

## Configuração de um modelo de rastreamento no nível da conta {#setting-up-a-tracking-template-at-the-account-level}

1. Faça logon na sua Conta [!DNL Google AdWords].

1. Clique em **[!UICONTROL Todas as campanhas]** e depois em **[!UICONTROL Configurações]** na janela de expansão.

   ![1. Clique em Todas as campanhas e em Configurações na extensão &#x200B;](assets/utilizing-connections-13.png)

1. Clique em **[!UICONTROL Configurações da conta]** na parte superior e depois em **[!UICONTROL Modelo de rastreamento]**. Insira o Modelo de Rastreamento [!DNL Marketo Measure].

   ![1. Clique em Configurações da conta na parte superior e em Rastreamento](assets/bizible-guide-1.png)

1. Clique em **[!UICONTROL Salvar]**.

## Configuração de um modelo de rastreamento no nível da campanha {#setting-up-a-tracking-template-at-the-campaign-level}

1. Clique em **[!UICONTROL Todas as campanhas]** e depois em **[!UICONTROL Campanhas]** na janela de expansão.

   ![1. Clique em Todas as campanhas e, em seguida, em Campanhas na extensão](assets/utilizing-connections-12.png)

1. Selecione todas as campanhas aplicáveis ou **[!UICONTROL Selecionar tudo]**, clique em **[!UICONTROL Editar]** e em **[!UICONTROL Alterar modelos de rastreamento]**.

   ![1. Selecione todas as campanhas aplicáveis ou Selecionar Tudo, clique em Editar,](../assets/marketo-engage-activities-05.png)

1. Insira o Modelo de rastreamento [!DNL Marketo Measure] e clique em **[!UICONTROL Aplicar]**.

## Configuração de um modelo de rastreamento no nível do grupo de anúncios: {#setting-up-a-tracking-template-at-the-ad-group-level}

1. Clique em **[!UICONTROL Todas as campanhas]** e depois em **[!UICONTROL Grupos de anúncios]** na janela de expansão.

   ![1. Clique em Todas as campanhas e, em seguida, em Grupos de anúncios no &#x200B;](assets/api-connections-01.png)

1. Selecione todos os grupos de anúncios aplicáveis ou Selecionar tudo, clique em **[!UICONTROL Editar]** e em **[!UICONTROL Alterar modelos de rastreamento]**.

1. Insira o Modelo de rastreamento [!DNL Marketo Measure] e clique em **[!UICONTROL Aplicar]**.

   ![1. Insira o Modelo de Acompanhamento do Marketo Measure e clique em Aplicar.](../assets/marketo-engage-activities-01.png)

## Perguntas frequentes {#faq}

**P: Quais permissões o usuário conectado precisa?**

A: userinfo.email

**P: Quanto tempo pode levar para importar dados de gastos?**

A: 6 horas

**P: Quanto tempo pode levar para importar dados de anúncios?**

A: 4 horas

**P: Para Anúncios de Pesquisa Dinâmica, é possível rastrear a combinação de título, descrição etc. no criativo distribuído?**

R: Não é possível recuperar detalhes criativos individuais para anúncios de pesquisa dinâmica, mas se a marcação automática estiver habilitada, ainda poderemos obter a ID criativa e a receita do atributo.

>[!NOTE]
>
>Depois que as alterações forem feitas, você estará pronto. Entre em contato com o [Suporte da Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} se tiver alguma pergunta durante a instalação.

[Clique aqui](https://support.google.com/adwords/answer/6076199?hl=en#tracking){target="_blank"} para obter instruções da Google sobre como criar modelos de rastreamento no nível da conta.
