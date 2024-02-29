---
unique-page-id: 18874781
description: Configuração Da Visualização Do Gerenciador De Campanhas Doubleclick Por Meio Da Atribuição - [!DNL Marketo Measure]
title: Configuração da atribuição de visualização do Doubleclick Campaign Manager
exl-id: 2cc6c2cd-afb7-4052-b18b-9ad0bf16a9fa
feature: Attribution
source-git-commit: 518a984b0d8d640290bd9b637221fcdc0948e5b9
workflow-type: tm+mt
source-wordcount: '317'
ht-degree: 4%

---

# Configuração da atribuição de visualização do Doubleclick Campaign Manager {#configuring-doubleclick-campaign-manager-view-through-attribution}

## Medir visualização por meio de atribuição {#measuring-view-through-attribution}

>[!NOTE]
>
>Se você estiver usando o [!DNL Marketo Measure] e [!DNL DoubleClick Campaign Manager] integração, exigimos uma [Conexão de API](/help/api-connections/utilizing-marketo-measures-api-connections/integrated-ad-platforms.md#how-to-connect-ad-platforms) para que possamos baixar os detalhes das campanhas e criações para resolver os anúncios.

Para começar a obter insights mais granulares da visualização por meio do rastreamento com [!DNL Doubleclick Campaign Manager], nosso pixel de rastreamento precisa ser configurado.

Para obter mais informações sobre o [!DNL Marketo Measure] Visualizar por meio da funcionalidade de atribuição, consulte [Perguntas frequentes sobre a visualização do Marketo Measure por meio da atribuição](/help/advanced-marketo-measure-features/view-through-attribution/marketo-measure-view-through-attribution-faq.md).

[!DNL Marketo Measure] é considerada uma tag piggyback porque é uma chamada de terceiros por meio da tag de publicidade do DCM. As tags Piggyback não funcionam com tags de imagem, somente tags iframe ou javascript. De acordo com o Suporte do DCM, isso não mudou recentemente e sempre foi o caso. As tags padrão foram descontinuadas em 2 de outubro de 2017, mas não afetam a capacidade de [!DNL Marketo Measure] para rastrear as impressões.

Caso use uma hierarquia Pai e Filho no DCM, precisaremos que nossa tag seja aplicada a todos os níveis para rastreamento de impressões.

## Como adicionar a tag de imagem {#how-to-add-the-image-tag}

Adicione a tag ao Doubleclick sob a configuração Anunciante e crie uma tag de evento de impressão.

1. Adicione o código a seguir como um pixel de imagem 1x1.

`https://cdn.bizibly.com/i?v=%eadv!&a=%eaid!&c=%ecid!&s=%esid!&p=%epid!&m=%m&n=%n`

1. Depois de adicionado, confirme se os delimitadores são mapeados da seguinte maneira. Isso deve ser automático depois que a tag for aplicada:

   v = %eadv! [!DNL Expand] Id Do Anunciante\
   a = %eaid! Expandir ID do anúncio\
   c = %ecid! Expandir ID de criação\
   s = %esid! Expandir ID do site\
   p = %epid! Expandir ID de posicionamento\
   m = %m Corresponder Macro de Código\
   n = %n Macro de número aleatório

   ![](assets/1.png)

## Perguntas frequentes {#faq}

**P: A tag de imagem é segura?**

R: Sim. Não é uma tag JavaScript, é uma tag de imagem.

**P: Quais permissões são necessárias para o usuário conectado?**

A: dfatrafficking, dfareporting, userinfo.email

**P: Quanto tempo pode levar para importar dados de gastos?**

A: até 6 horas

**P: Quanto tempo pode levar para importar dados de anúncios?**

A: até 6 horas
