---
description: Práticas recomendadas de orientação de segmentação para usuários do Marketo Measure
title: Práticas recomendadas para segmentação
exl-id: 68281210-383b-4688-86e9-27fbdc1fabbb
feature: Segmentation
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '455'
ht-degree: 98%

---

# Práticas recomendadas para segmentação {#best-practices-for-segmentation}

## Visão geral {#overview}

A segmentação do [!DNL Marketo Measure] permite definir regras, que são essencialmente filtros, com base nos seus campos do CRM para agrupá-los em segmentos individuais. Esses segmentos estarão disponíveis para uso em seus painéis do Discover, bem como em seus relatórios do [!DNL Salesforce].

A segmentação é essencial para a utilização da sua conta do [!DNL Marketo Measure], especialmente dentro dos quadros do Discover. Como os painéis do Discover do [!DNL Marketo Measure] são limitados a um conjunto predeterminado de filtros, a segmentação oferece a capacidade de dissecar seus dados no Discover de forma semelhante à que você faria em seus relatórios do [!DNL Salesforce].

Quando enviado para [!DNL Salesforce], os valores de segmento são gravados no campo “Segmento” e estão em qualquer tipo de relatório do Buyer touchpoint. Isso permite relatórios uniformes em ambas as plataformas. O segmento também pode ser encontrado nos “Detalhes do touchpoint” de qualquer touchpoint.

Quando enviados para o [!UICONTROL Discover], os segmentos aparecerão como um filtro no menu suspenso de filtros localizado em todos os quadros.

## Prática recomendada {#best-practice}

Se você estiver definindo a segmentação pela primeira vez ou apenas revisando a segmentação estabelecida anteriormente, lembre-se das práticas recomendadas a seguir.

* Mantenha simples.
* Alinhe o nome do segmento à nomenclatura de sua organização, ou seja, a categoria = nome do filtro, segmento = valor do filtro
* Não use campos de fórmula em suas regras
* Sempre que possível, crie a segmentação no cliente potencial/contato e na oportunidade para usá-la em todo o funil
   * Se você for cliente do Marketo Measure Ultimate e tiver definido seu Objeto de painel padrão como Contato, não use os dois campos abaixo que são específicos para leads ([saiba mais aqui](/help/data-integrity-requirement.md){target="_blank"}).
      * b2b.personStatus
      * b2b.isConverted
   * Nem todas as categorias de segmentos se alinharão em todo o funil
      * Por exemplo, uma categoria de segmento de “Tipo de oportunidade” não será relacionada a clientes potenciais, no entanto, um segmento relacionado à “Região” é provavelmente uma categoria que pode ser definida em todo o funil
* Pense nas formas como você prefere dividir seus dados atualmente, seja no CRM ou em uma ferramenta de BI, considere criar isso como um segmento no [!DNL Marketo Measure] para ter os mesmos relatórios no Discover

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Revisar a segmentação pelo menos duas vezes por ano garantirá que ela esteja atualizada. Como prática recomendada, recomendamos a revisão de suas regras na guia “[!UICONTROL Segmentos]” das suas Configurações da conta do [!DNL Marketo Measure], bem como fazer a emissão de relatórios dentro do [!DNL Salesforce] para revisar os segmentos em ação. Essas etapas ajudarão você e sua equipe a se sentirem confiantes em sua segmentação e, posteriormente, nos relatórios do [!DNL Marketo Measure].

Outros motivos que podem acionar uma revisão da sua segmentação incluem...

* Rotatividade de sua equipe de marketing
* Alterações nos campos usados para definir seus segmentos
* Adições ou alterações nos segmentos que já foram estabelecidas

>[!MORELIKETHIS]
>
>[Como configurar a segmentação personalizada](/help/channel-tracking-and-setup/custom-segmentation.md)
