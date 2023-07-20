---
description: Práticas recomendadas para mapeamento de preparo - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para o mapeamento de estágio
exl-id: 1ed380a1-4a3a-4761-b70f-cdf2e290329d
source-git-commit: b8388c4f89734f55ec779ef23b75b34b07da6f58
workflow-type: tm+mt
source-wordcount: '449'
ht-degree: 2%

---

# Práticas recomendadas para o mapeamento de estágio {#best-practices-for-stage-mapping}

## Visão geral {#overview}

A seção Mapeamento de Estágio do seu [!DNL Marketo Measure] conta descreve os estágios que [!DNL Marketo Measure] O extrai automaticamente do seu CRM e de qualquer estágio personalizado que você tenha definido ao usar o Modelo de atribuição personalizado. A validade do seu [!DNL Marketo Measure] os dados dependem que esses estágios sejam ordenados corretamente para que [!DNL Marketo Measure] O pode entender com precisão seu funil e a progressão dos registros nesse funil.

Na seção Mapeamento de preparo do [!DNL Marketo Measure] instância, você verá estágios ativos e inativos do seu CRM. Ordene todos os estágios da melhor maneira possível de sua capacidade em alinhamento com a forma como seu funil está hoje.

Um recurso adicional gerenciado nesta seção são Estágios de funil, que oferecem a capacidade de adicionar estágios ao funil sem aplicar atribuição. Os estágios de funil serão rastreados como pontos de contato e preenchidos no campo Posições do ponto de contato no CRM. Esses Estágios de funil também serão representados em vários painéis do jornada no [!DNL Marketo Measure] Descubra.

## Práticas recomendadas {#best-practices}

Quer você esteja avaliando seu Mapeamento de estágios pela primeira vez ou apenas revisando sua ordem de funil, é importante manter as seguintes práticas recomendadas em mente.

* A ordem é tudo!
   * Considerando [!DNL Marketo Measure] obtém estágios ativos e inativos do seu CRM, confirma que qualquer estágio que possa ser usado em um cliente potencial/contato ou oportunidade é agrupado e ordenado adequadamente
* Ao definir um estágio personalizado, verifique se o rastreamento do histórico de campo está habilitado para todos os campos usados para definir o estágio
* Não usar um campo de fórmula para definir um estágio personalizado
   * Um campo booleano é a recomendação de prática recomendada
* Observe que a seção de estágio de Cliente Potencial ou Contato é dividida em Perdido, Aberto e Convertido; valide se os estágios estão na seção de estágio apropriada
   * Ter um estágio na seção de estágio incorreta pode resultar em altamente incorreto [!DNL Marketo Measure] dados
* Observe que a seção Estágio da oportunidade é dividida em Perdido, Aberto e Ganho; valide se os estágios estão na seção apropriada do estágio
   * Ter um estágio na seção de estágio incorreta pode resultar em altamente incorreto [!DNL Marketo Measure] dados de receita ou de receita de pipeline
* Evite usar nomes de estágio duplicados (nosso sistema os detectará e removerá automaticamente um).
* Para definir uma regra que verifique valores NULL, deixe a caixa de texto valor em branco.

## Práticas recomendadas de manutenção {#best-practices-for-maintenance}

A análise do mapeamento de preparo uma vez por ano garantirá que os dados de oportunidade no [!DNL Marketo Measure] O é preciso e está atualizado.

Outros motivos que podem acionar uma revisão do mapeamento de preparo incluem...

* Volume de negócios da sua equipe de marketing
* Quaisquer alterações nos estágios do CRM
* Atualizações no funil da sua organização
* Visualização de dados de receita incorretos em seu [!DNL Marketo Measure] relatórios

>[!MORELIKETHIS]
>
>[A diferença entre os estágios de funil e os estágios de modelo personalizado](/help/advanced-marketo-measure-features/custom-attribution-models/custom-attribution-model-and-setup.md#the-difference-between-funnel-stages-and-custom-model-stages)
