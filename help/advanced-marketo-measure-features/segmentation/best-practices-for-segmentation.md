---
description: Práticas recomendadas para segmentação - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para segmentação
exl-id: 68281210-383b-4688-86e9-27fbdc1fabbb
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '419'
ht-degree: 0%

---

# Práticas recomendadas para segmentação {#best-practices-for-segmentation}

## Visão geral {#overview}

[!DNL Marketo Measure] A segmentação permite definir regras, que são essencialmente filtros, com base nos campos do CRM para agrupá-los em segmentos individuais. Esses segmentos estarão disponíveis para uso em seus painéis do Discover e em seus [!DNL Salesforce] relatórios.

A segmentação é fundamental para a utilização de seu [!DNL Marketo Measure] , especialmente em seus quadros do Discover. Porque a variável [!DNL Marketo Measure] As placas do Discover estão limitadas a um conjunto predeterminado de filtros, a segmentação lhe dá a capacidade de dissecar seus dados no Discover da mesma forma que você faria em seus [!DNL Salesforce] relatórios.

Quando empurrado para [!DNL Salesforce], Os valores de Segmento são gravados no campo &quot;Segmento&quot; e estão em qualquer tipo de relatório de Ponto de contato do comprador. Isso permite relatórios uniformes em ambas as plataformas. O Segmento também pode ser encontrado no &quot;Detalhe do ponto de contato&quot; de qualquer ponto de contato.

Quando enviado para o Discover, os Segmentos aparecerão como um filtro disponível no menu suspenso de filtro localizado em todas as placas.

## Prática recomendada {#best-practice}

Esteja você definindo a segmentação pela primeira vez ou apenas revisando a segmentação já estabelecida, lembre-se das práticas recomendadas a seguir.

* Mantenha simples!
* Alinhe o nome do segmento à nomenclatura da organização, ou seja, a categoria = nome do filtro, segmento = valor do filtro
* Não usar campos de fórmula em suas regras
* Sempre que possível, crie a segmentação no Lead/contato e na Oportunidade para usá-la em todo o funil
   * Nem todas as categorias de segmentos serão alinhadas em todo o funil
      * Uma categoria de Segmento de &quot;Tipo de Oportunidade&quot; não se relacionará a Leads, por exemplo, no entanto, um Segmento relacionado a &quot;Região&quot; provavelmente é uma categoria que pode ser definida em todo o funil
* Pense sobre as maneiras como você gosta de cortar seus dados, seja no CRM ou em uma ferramenta de BI, considere construir isso como um Segmento em [!DNL Marketo Measure] para que você possa ter os mesmos relatórios no Discover

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Revisar sua segmentação pelo menos duas vezes por ano garantirá que sua segmentação esteja atualizada. Como prática recomendada, recomendamos revisar suas regras no[!UICONTROL Segmentos]da sua [!DNL Marketo Measure] Configurações da conta, bem como obter relatórios em [!DNL Salesforce] para analisar os segmentos em ação. Essas etapas ajudarão você e sua equipe a se sentirem confiantes na segmentação e, subsequentemente, na [!DNL Marketo Measure] relatórios.

Outros motivos para isso podem acionar uma análise da sua Segmentação incluem...

* Volume de negócios em sua equipe de marketing
* Alterações nos campos usados para definir seus segmentos
* Adições ou alterações aos segmentos que já foram estabelecidas

>[!MORELIKETHIS]
>
>[Como configurar a segmentação personalizada](/help/advanced-marketo-measure-features/segmentation/custom-segmentation.md)
