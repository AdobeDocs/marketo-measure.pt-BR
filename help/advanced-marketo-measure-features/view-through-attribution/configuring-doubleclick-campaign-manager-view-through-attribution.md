---
unique-page-id: 18874781
description: Configuração Da Visualização Do Doubleclick Campaign Manager Por Meio Da Atribuição - [!DNL Marketo Measure] - Documentação do produto
title: Configuração Da Exibição Do Doubleclick Campaign Manager Por Meio Da Atribuição
exl-id: 2cc6c2cd-afb7-4052-b18b-9ad0bf16a9fa
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '322'
ht-degree: 0%

---

# Configuração Da Exibição Do Doubleclick Campaign Manager Por Meio Da Atribuição {#configuring-doubleclick-campaign-manager-view-through-attribution}

## Avaliação da visualização por meio da atribuição {#measuring-view-through-attribution}

>[!NOTE]
>
>Se estiver usando o [!DNL Marketo Measure] e integração do DoubleClick Campaign Manager, precisamos de um [Conexão da API](/help/api-connections/utilizing-marketo-measures-api-connections/integrated-ad-platforms.md#how-to-connect-ad-platforms) assim, podemos baixar detalhes das campanhas e criações para resolver os anúncios.

Para começar a obter informações mais granulares da exibição por meio do rastreamento com o Doubleclick Campaign Manager, nosso pixel de rastreamento precisa ser configurado.

Por favor [clique aqui](/help/advanced-marketo-measure-features/view-through-attribution/marketo-measure-view-through-attribution-faq.md) para obter mais informações sobre o [!DNL Marketo Measure] Funcionalidade de atribuição de view through .

[!DNL Marketo Measure] O é considerado uma tag piggyback porque é uma chamada de terceiros por meio da tag de anúncio do DCM. As tags de reprodução não funcionam com tags de imagem, somente tags de iframe ou javascript. De acordo com o Suporte DCM, isso não mudou recentemente e sempre aconteceu. As tags padrão foram descontinuadas em 2 de outubro de 2017, mas não afetam a capacidade de [!DNL Marketo Measure] para rastrear as impressões.

Caso você use uma hierarquia Pai e Filho no DCM, precisaremos de nossa tag aplicada a todos os níveis para o rastreamento de impressões.

## Como adicionar a tag de imagem {#how-to-add-the-image-tag}

Você adicionará a tag em Doubleclick na configuração Anunciante e desejará criar uma tag de evento de impressão.

1. Adicione o seguinte código como um pixel de imagem 1x1.

`https://cdn.bizibly.com/i?v=%eadv!&a=%eaid!&c=%ecid!&s=%esid!&p=%epid!&m=%m&n=%n`

1. Depois de adicionado, confirme se os delimitadores são mapeados da seguinte maneira. Isso deve ser automático quando a tag for aplicada:

   v = %ekey! Expandir A Id Do Anunciante\
   a = %eaid! Expandir Id Do Anúncio\
   c = %ecid! Expandir Id Criativa\
   s = %esid! Expandir ID do site\
   p = %epid! Expandir A Id De Disposição\
   m = %m Corresponder Macro de Código\
   n = %n Macro de Número Aleatório

   ![](assets/1.png)

## Perguntas frequentes {#faq}

**P: A tag da imagem é segura?**

A: Sim. Não é uma tag JavaScript, é uma tag de imagem.

**P: Quais permissões o usuário conectado precisa?**

A: tráfico, desexportação, userinfo.email

**P: Quanto tempo pode levar para importar dados de gastos?**

A: Até 6 horas

**P: Quanto tempo pode levar para importar dados de anúncio?**

A: Até 6 horas
