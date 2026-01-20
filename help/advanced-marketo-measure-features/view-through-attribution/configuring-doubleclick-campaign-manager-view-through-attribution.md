---
unique-page-id: 18874781
description: Configurando A Visualização Do Gerenciador De Campanhas Doubleclick Por Meio Da Atribuição - [!DNL Marketo Measure]
title: Configuração da atribuição de visualização do Doubleclick Campaign Manager
exl-id: 2cc6c2cd-afb7-4052-b18b-9ad0bf16a9fa
feature: Attribution
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '417'
ht-degree: 27%

---

# Configuração da atribuição de visualização do Doubleclick Campaign Manager {#configuring-doubleclick-campaign-manager-view-through-attribution}

## Medir visualização por meio de atribuição {#measuring-view-through-attribution}

>[!IMPORTANT]
>
>Devido a preocupações com a privacidade, cookies de terceiros serão desativados. A desativação de cookies de terceiros no terceiro trimestre de 2024 anunciada pelo Google Chrome marca efetivamente o fim dessa forma de rastreamento. Como resultado, a Adobe descontinuará as funções do Marketo Measure que dependem de cookies de terceiros, mais especificamente, o rastreamento entre domínios e a atribuição de visualização, que usam o cookie de impressão Google/DoubleClick. Nenhuma outra função do Marketo Measure será afetada. O uso de cookies próprios também não será afetado. À luz do cronograma do Google, a data esperada de descontinuação das duas funções acima é de 01/06/2024. Os dados relacionados coletados antes dessa data permanecerão disponíveis aos clientes da Adobe.

>[!NOTE]
>
>Se você estiver usando a integração do [!DNL Marketo Measure] e do [!DNL DoubleClick Campaign Manager], precisamos de uma [conexão de API](/help/api-connections/utilizing-marketo-measures-api-connections/integrated-ad-platforms.md#how-to-connect-ad-platforms) para que possamos baixar os detalhes das campanhas e criações para resolver os anúncios.

Para começar a obter insight mais granular da visualização até o rastreamento com [!DNL Doubleclick Campaign Manager], nosso pixel de rastreamento precisa ser configurado.

Para obter mais informações sobre a funcionalidade de atribuição do Modo de Exibição Através do [!DNL Marketo Measure], consulte as [Perguntas frequentes sobre o Modo de Exibição Através do Attribution do Marketo Measure](/help/advanced-marketo-measure-features/view-through-attribution/marketo-measure-view-through-attribution-faq.md).

[!DNL Marketo Measure] é considerado uma marca de retrocesso porque é uma chamada de terceiros por meio da marca de anúncio DCM. As tags Piggyback não funcionam com tags de imagem, somente tags iframe ou javascript. De acordo com o Suporte do DCM, isso não mudou recentemente e sempre foi o caso. As tags padrão foram descontinuadas em 2 de outubro de 2017, mas não afetam a capacidade de [!DNL Marketo Measure] de rastrear as impressões.

Caso use uma hierarquia Pai e Filho no DCM, precisaremos que nossa tag seja aplicada a todos os níveis para rastreamento de impressões.

## Como adicionar a tag de imagem {#how-to-add-the-image-tag}

Adicione a tag ao Doubleclick sob a configuração Anunciante e crie uma tag de evento de impressão.

1. Adicione o código a seguir como um pixel de imagem 1x1.

`https://cdn.bizibly.com/i?v=%eadv!&a=%eaid!&c=%ecid!&s=%esid!&p=%epid!&m=%m&n=%n`

1. Depois de adicionado, confirme se os delimitadores são mapeados da seguinte maneira. Isso deve ser automático depois que a tag for aplicada:

   v = %eadv! [!DNL Expand] ID do anunciante\
   a = %eaid! Expandir ID do anúncio\
   c = %ecid! Expandir Creative Id\
   s = %esid! Expandir ID do site\
   p = %epid! Expandir ID de posicionamento\
   m = %m Corresponder Macro de Código\
   n = %n Macro de número aleatório

   ![](assets/1.png)

## Perguntas frequentes {#faq}

**P: A marca de imagem é segura?**

R: Sim. Não é uma tag do JavaScript, é uma tag de imagem.

**P: Quais permissões o usuário conectado precisa?**

A: dfatrafficking, dfareporting, userinfo.email

**P: Quanto tempo pode levar para importar dados de gastos?**

A: até 6 horas

**P: Quanto tempo pode levar para importar dados de anúncios?**

A: até 6 horas
