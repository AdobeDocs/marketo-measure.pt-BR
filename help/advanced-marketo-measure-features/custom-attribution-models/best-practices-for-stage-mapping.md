---
description: Práticas recomendadas para o mapeamento de palco - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para o mapeamento de palco
exl-id: 1ed380a1-4a3a-4761-b70f-cdf2e290329d
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '434'
ht-degree: 0%

---

# Práticas recomendadas para o mapeamento de palco {#best-practices-for-stage-mapping}

## Visão geral {#overview}

A seção Mapeamento de preparo de seu [!DNL Marketo Measure] conta descreve os estágios que [!DNL Marketo Measure] extrai automaticamente do seu CRM e de todos os estágios personalizados definidos, se estiver usando o Modelo de atribuição personalizado. A validade da [!DNL Marketo Measure] os dados dependem que esses estágios sejam ordenados corretamente para que [!DNL Marketo Measure] O pode entender com precisão seu funil e a progressão dos registros em todo esse funil.

Na seção Mapeamento de palco de sua [!DNL Marketo Measure] , você verá estágios ativos e inativos do seu CRM. Organize todos os estágios para obter o melhor de sua capacidade em alinhamento com a forma como seu funil está hoje.

Um recurso adicional gerenciado nesta seção são os Estágios do funil, que oferecem a capacidade de adicionar palcos ao funil sem aplicar atribuição. Os Estágios do funil serão rastreados como pontos de contato e serão preenchidos no campo Posições do ponto de contato no seu CRM. Esses Estágios de funil também serão representados em várias placas de jornada em [!DNL Marketo Measure] Descubra.

## Práticas recomendadas {#best-practices}

Esteja você avaliando seu Mapeamento de palco pela primeira vez ou apenas revisando sua ordem de funil, é importante manter as práticas recomendadas a seguir em mente.

* A ordem é tudo!
   * Consideração [!DNL Marketo Measure] extrai estágios ativos e inativos do seu CRM, confirma que qualquer estágio que possa ser usado em um Lead/Contato ou Oportunidade é agrupado e ordenado adequadamente
* Ao definir um estágio personalizado, verifique se o rastreamento do histórico de campos está ativado para qualquer campo usado para definir o estágio
* Não use um campo de fórmula para definir um estágio personalizado
   * Um campo booleano é a recomendação de práticas recomendadas
* Observe que a seção Lead or Contact stage é dividida em Perdido, Aberto e Convertido; validar se os estágios estão em sua seção de estágio apropriada
   * Ter um estágio na seção de estágio incorreta pode resultar em um erro [!DNL Marketo Measure] dados
* Observe que a seção do estágio Oportunidade é dividida em Perdido, Aberto e Vencedor; validar se os estágios estão em sua seção de estágio apropriada
   * Ter um estágio na seção de estágio incorreta pode resultar em um erro [!DNL Marketo Measure] dados de receita ou de pipeline
* Evite usar nomes de palco duplicados (nosso sistema os detectará e removerá automaticamente um).

## Práticas recomendadas para manutenção {#best-practices-for-maintenance}

Revisar o mapeamento de palco uma vez por ano garantirá que os dados da Oportunidade em [!DNL Marketo Measure] é preciso e atualizado.

Outros motivos que podem acionar uma revisão do Mapeamento de palco incluem..

* Volume de negócios em sua equipe de marketing
* Quaisquer alterações nos estágios do CRM
* Atualizações no funil de sua organização
* Como visualizar dados de receita incorretos na sua [!DNL Marketo Measure] relatórios

>[!MORELIKETHIS]
>
>[A diferença entre os estágios do funil e os estágios do modelo personalizado](/help/advanced-marketo-measure-features/custom-attribution-models/custom-attribution-model-and-setup.md#the-difference-between-funnel-stages-and-custom-model-stages)
