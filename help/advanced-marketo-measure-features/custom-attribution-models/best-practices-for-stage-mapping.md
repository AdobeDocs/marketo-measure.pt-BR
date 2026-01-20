---
description: Práticas recomendadas para o mapeamento de preparo - [!DNL Marketo Measure]
title: Práticas recomendadas para o mapeamento de estágio
exl-id: 1ed380a1-4a3a-4761-b70f-cdf2e290329d
feature: Tracking, Custom Models
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '479'
ht-degree: 4%

---

# Práticas recomendadas para o mapeamento de estágio {#best-practices-for-stage-mapping}

## Visão geral {#overview}

A seção Mapeamento de Estágio da conta do [!DNL Marketo Measure] descreve os estágios que o [!DNL Marketo Measure] extrai automaticamente do seu CRM e quaisquer estágios personalizados que você tenha definido ao usar o Modelo de Atribuição Personalizado. A validade dos dados do [!DNL Marketo Measure] depende da ordem correta desses estágios para que o [!DNL Marketo Measure] possa entender com precisão o funnel e a progressão dos registros no funnel.

Na seção Mapeamento de Estágio da instância do [!DNL Marketo Measure], você verá estágios ativos e inativos do seu CRM. Ordene todos os estágios da melhor maneira possível de acordo com sua capacidade de alinhamento com a atualidade do funnel.

Um recurso adicional que é gerenciado nesta seção é o Funnel Stages, que oferece a capacidade de adicionar estágios ao funnel sem aplicar atribuição. Os estágios do funnel serão rastreados como pontos de contato e preenchidos no campo Posições do ponto de contato no CRM. Esses Estágios do Funnel também serão representados em vários painéis do jornada no [!DNL Marketo Measure] Discover.

## Práticas recomendadas {#best-practices}

Se você estiver avaliando seu Mapeamento de preparo pela primeira vez ou apenas revisando seu pedido do funnel, é importante ter em mente as seguintes práticas recomendadas.

* A ordem é tudo!
   * Considerando que [!DNL Marketo Measure] obtém estágios ativos e inativos do seu CRM, confirme se qualquer estágio que possa ser usado em um cliente potencial/contato ou oportunidade está agrupado e ordenado adequadamente
* Ao definir um estágio personalizado, verifique se o rastreamento do histórico de campo está habilitado para todos os campos usados para definir o estágio
* Não usar um campo de fórmula para definir um estágio personalizado
   * Um campo booleano é a recomendação de prática recomendada
* Observe que a seção de estágio de Cliente Potencial ou Contato é dividida em Perdido, Aberto e Convertido; valide se os estágios estão na seção de estágio apropriada
   * Ter um estágio na seção de estágio incorreta pode resultar em dados [!DNL Marketo Measure] altamente incorretos
   * Se você for cliente do Marketo Measure Ultimate e tiver definido seu Objeto de Painel Padrão como Contato, não use os dois campos abaixo específicos para Cliente Potencial ([saiba mais](/help/marketo-measure-ultimate/data-integrity-requirement.md){target="_blank"}).
      * b2b.personStatus
      * b2b.isConverted
* Observe que a seção Estágio da oportunidade é dividida em Perdido, Aberto e Ganho; valide se os estágios estão na seção apropriada do estágio
   * Ter um estágio na seção de estágio incorreta pode resultar em dados de receita ou pipeline [!DNL Marketo Measure] altamente incorretos
* Evite usar nomes de estágio duplicados (nosso sistema os detectará e removerá automaticamente um).
* Para definir uma regra que verifique valores NULL, deixe a caixa de texto valor em branco.

## Práticas recomendadas de manutenção {#best-practices-for-maintenance}

Analisar o Mapeamento de Estágio uma vez por ano garantirá que os dados de Oportunidade no [!DNL Marketo Measure] sejam precisos e atualizados.

Outros motivos que podem acionar uma revisão do mapeamento de preparo incluem...

* Rotatividade de sua equipe de marketing
* Quaisquer alterações nos estágios do CRM
* Atualizações no funnel de sua organização
* Visualização de dados de receita incorretos em seus relatórios do [!DNL Marketo Measure]

>[!MORELIKETHIS]
>
>[A Diferença Entre Estágios do Funnel e Estágios de Modelo Personalizados](/help/advanced-marketo-measure-features/custom-attribution-models/custom-attribution-model-and-setup.md#the-difference-between-funnel-stages-and-custom-model-stages)
