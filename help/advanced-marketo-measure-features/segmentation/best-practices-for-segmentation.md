---
description: Práticas recomendadas para segmentação - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para segmentação
exl-id: 68281210-383b-4688-86e9-27fbdc1fabbb
feature: Segmentation
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '419'
ht-degree: 2%

---

# Práticas recomendadas para segmentação {#best-practices-for-segmentation}

## Visão geral {#overview}

[!DNL Marketo Measure] A segmentação permite definir regras, que são essencialmente filtros, com base nos campos do CRM para agrupá-los em segmentos individuais. Esses segmentos estarão disponíveis para uso nos painéis do Discover e no [!DNL Salesforce] relatórios.

A segmentação é essencial para a utilização do [!DNL Marketo Measure] conta, especialmente dentro de seus quadros do Discover. Como a variável [!DNL Marketo Measure] Os quadros do Discover são limitados a um conjunto predeterminado de filtros, a segmentação oferece a capacidade de dissecar seus dados no Discover de forma semelhante à que você faria em seu [!DNL Salesforce] relatórios.

Quando enviado para [!DNL Salesforce], Os valores de Segmento são gravados no campo &quot;Segmento&quot; e estão em qualquer tipo de relatório de Ponto de contato do Comprador. Isso permite relatórios uniformes em ambas as plataformas. O segmento também pode ser encontrado no &quot;Detalhe do ponto de contato&quot; de qualquer ponto de contato.

Quando enviados para o Discover, os segmentos aparecerão como um filtro disponível no menu suspenso do filtro localizado em todos os quadros.

## Prática recomendada {#best-practice}

Se você estiver definindo a segmentação pela primeira vez ou apenas revisando a segmentação estabelecida anteriormente, lembre-se das práticas recomendadas a seguir.

* Mantenha simples!
* Alinhe o nome do segmento à nomenclatura de sua organização, ou seja, a categoria = nome do filtro, segmento = valor do filtro
* Não use campos de fórmula em suas regras
* Sempre que possível, crie a segmentação no cliente potencial/contato e na oportunidade para usá-la em todo o funil
   * Nem todas as categorias de segmentos serão alinhadas em todo o funil
      * Por exemplo, uma categoria de segmento de &quot;Tipo de oportunidade&quot; não está relacionada a clientes em potencial, no entanto, um segmento relacionado a &quot;Região&quot; é provavelmente uma categoria que pode ser definida no funil
* Pense na maneira como você gosta de cortar seus dados atualmente, seja no CRM ou em uma ferramenta de BI, considere criar isso como um Segmento no [!DNL Marketo Measure] para que você possa ter os mesmos relatórios no Discover

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Analisar a segmentação pelo menos duas vezes por ano garantirá que ela esteja atualizada. Como prática recomendada, recomendamos a revisão de suas regras no &#39;[!UICONTROL Segmentos]Guia &#39; do seu [!DNL Marketo Measure] Configurações da conta, bem como emissão de relatórios no [!DNL Salesforce] para revisar os Segmentos em ação. Essas etapas ajudarão você e sua equipe a se sentirem confiantes na segmentação e, posteriormente, no [!DNL Marketo Measure] relatórios.

Outros motivos para isso podem acionar uma revisão da segmentação:

* Volume de negócios da sua equipe de marketing
* Alterações nos campos usados para definir seus segmentos
* Adições ou alterações nos Segmentos que já foram estabelecidas

>[!MORELIKETHIS]
>
>[Como configurar a segmentação personalizada](/help/advanced-marketo-measure-features/segmentation/custom-segmentation.md)
