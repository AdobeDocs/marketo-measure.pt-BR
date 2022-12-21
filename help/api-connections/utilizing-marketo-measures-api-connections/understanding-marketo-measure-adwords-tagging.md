---
unique-page-id: 18874678
description: Noções básicas [!DNL Marketo Measure] Marcação do AdWords - [!DNL Marketo Measure] - Documentação do produto
title: Noções básicas [!DNL Marketo Measure] Marcação do AdWords
exl-id: c6658766-d3a8-46ed-b2d2-826eb61ce269
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '570'
ht-degree: 0%

---

# Noções básicas [!DNL Marketo Measure] Marcação do AdWords {#understanding-marketo-measure-adwords-tagging}

Para rastrear suas publicidades em um nível muito granular, as URLs de Destino de Publicidade devem ser exclusivas. Para conseguir isso, [!DNL Marketo Measure] A marcação automática adiciona automaticamente parâmetros de rastreamento aos URLs de Destino do anúncio [!DNL AdWords] anúncios. Vejamos um exemplo abaixo.

O URL a seguir não fornecerá dados granulares:

* `http://example.com/landing-page?myParam=foo`

No entanto, o mesmo URL fornecerá dados granulares por causa da variável [!DNL Marketo Measure] parâmetros:

* `http://example.com/landing-page?myParam=foo&_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`

## How [!DNL Marketo Measure] A marcação automática funciona {#how-marketo-measure-auto-tagging-works}

**If [!DNL Marketo Measure] encontra um modelo de rastreamento:**

* [!DNL Marketo Measure] adicionará seus parâmetros ao Modelo de rastreamento.
* Se um redirecionamento de terceiros for encontrado em um Modelo de rastreamento, como Kenshoo ou Marin, [!DNL Marketo Measure] não executará nenhuma ação. Em vez disso, você deve [adicionar [!DNL Marketo Measure] parâmetros para a ferramenta de terceiros na sua conta](/help/api-connections/utilizing-marketo-measures-api-connections/how-bid-management-tools-affect-marketo-measure.md){target=&quot;_blank&quot;}.

No entanto, se nenhum Modelo de rastreamento for encontrado, [!DNL Marketo Measure] irá:

* Analise todos os URLs de destino de anúncios para [!DNL Marketo Measure] Parâmetros.
* Se for encontrada, você pode ir.
* Se não for encontrado, [!DNL Marketo Measure] A anexará seus parâmetros ao final dos URLs de destino do anúncio. Para novos anúncios, [!DNL Marketo Measure] O anexará seus parâmetros ao URL de destino do anúncio dentro de duas horas após a criação.
* É importante ter um modelo de rastreamento em vigor antes de ativar a marcação automática para que [!DNL Marketo Measure] Você pode se anexar a ele e impedir que um histórico de anúncios seja redefinido.

[!DNL Marketo Measure] A recomenda usar um modelo de Rastreamento no nível da conta, da campanha ou do grupo de anúncios, pois permite a adição e a subtração de parâmetros para todos os anúncios sem o risco de interrupções ou exclusão do Histórico de anúncios.

## Modelos de rastreamento {#tracking-templates}

Conforme explicado por [!DNL Google AdWords], um modelo de rastreamento é o URL usado para acessar uma página de aterrissagem. As informações de rastreamento coletadas são usadas para entender o tráfego de anúncios. [Clique aqui](https://support.google.com/adwords/answer/7197008?hl=en){target=&quot;_blank&quot;} para obter mais informações do Google.

[!DNL Marketo Measure] A recomenda o uso de um modelo de Rastreamento no nível da conta, nível da campanha ou grupo de anúncios , pois permite a adição e subtração de parâmetros para todos os anúncios sem o risco de interrupções ou exclusão do histórico de anúncios.

Há dois templates de rastreamento [!DNL Marketo Measure] A recomenda usar . Use o seguinte para determinar qual versão é apropriada para você:

* Se todos os URLs de publicidade tiverem um &quot;?&quot; neles, use este URL:

`{lpurl}&_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`

* Se nenhum dos URLs de sua publicidade tiver um &quot;?&quot; neles, use este URL:

`{lpurl}?_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`

## Configurar um modelo de rastreamento no nível da conta {#setting-up-a-tracking-template-at-the-account-level}

1. Faça logon no [!DNL Google AdWords] Conta.

1. Clique em **[!UICONTROL Todas as campanhas]** e depois **[!UICONTROL Configurações]** na janela expandida.

   ![](assets/1.png)

1. Clique em **[!UICONTROL Configurações da conta]** na parte superior e, em seguida, **[!UICONTROL Modelo de rastreamento]**. Insira o [!DNL Marketo Measure] Modelo de rastreamento.

   ![](assets/2-1.png)

1. Clique em **[!UICONTROL Salvar]**.

## Configurar um modelo de rastreamento no nível da campanha {#setting-up-a-tracking-template-at-the-campaign-level}

1. Clique em **[!UICONTROL Todas as campanhas]** e depois **[!UICONTROL Campanhas]** na janela expandida.

   ![](assets/3.png)

1. Selecione todas as campanhas ou **[!UICONTROL Selecionar tudo]**, clique em **[!UICONTROL Editar]** e, em seguida, clique em **[!UICONTROL Alterar modelos de rastreamento]**.

   ![](assets/4-1.png)

1. Insira o [!DNL Marketo Measure] Modelo de rastreamento e clique em **[!UICONTROL Aplicar]**.

## Configurando um modelo de rastreamento no nível do grupo de anúncios: {#setting-up-a-tracking-template-at-the-ad-group-level}

1. Clique em **[!UICONTROL Todas as campanhas]** e depois **[!UICONTROL Grupos de anúncios]** na janela expandida.

   ![](assets/5-1.png)

1. Selecione todos os grupos de anúncios aplicáveis ou selecione todos, clique em **[!UICONTROL Editar]** e, em seguida, clique em **[!UICONTROL Alterar modelos de rastreamento]**.

1. Insira o [!DNL Marketo Measure] Modelo de rastreamento e clique em **[!UICONTROL Aplicar]**.

   ![](assets/6-1.png)

## Perguntas frequentes {#faq}

**P: Quais permissões o usuário conectado precisa?**

A: userinfo.email

**P: Quanto tempo pode levar para importar dados de gastos?**

A: 6 horas

**P: Quanto tempo pode levar para importar dados de anúncio?**

A: 4 horas

>[!NOTE]
>
>Depois que as alterações forem feitas, você estará pronto. Sinta-se à vontade para entrar em contato com o [Suporte Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target=&quot;_blank&quot;} se houver dúvidas durante a configuração.

[Clique aqui](https://support.google.com/adwords/answer/6076199?hl=en#tracking){target=&quot;_blank&quot;} para obter instruções da Google sobre como criar Modelos de rastreamento no nível da conta.
