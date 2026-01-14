---
description: Diretrizes de atribuição de práticas recomendadas para atividades para usuários do Marketo Measure
title: Práticas recomendadas para atribuição de atividades
exl-id: 66fb9f47-3912-40a6-b112-3efca789f321
feature: Attribution
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '520'
ht-degree: 4%

---

# Práticas recomendadas para atribuição de atividades {#best-practices-for-activities-attribution}

## Visão geral {#overview}

O recurso de Atribuição de atividades do [!DNL Marketo Measure] permite que os clientes criem pontos de contato a partir de registros de Atividade no seu CRM. Esse método de criação de pontos de contato é flexível. Ele permite criar regras com base nos campos &quot;Tarefa&quot; ou &quot;Evento&quot; para informar [!DNL Marketo Measure] de quais registros de Atividade ele deve produzir pontos de contato e, portanto, receber crédito de atribuição.

O caso de uso mais comum para esse recurso é criar regras que incorporam interações de vendas nos dados do ponto de contato do Comprador. A Atribuição de atividades possibilita alinhar os dados de Vendas e Marketing em uma jornada.

Para muitas instâncias do [!DNL Salesforce], o objeto Atividade pode hospedar vários tipos de registro, portanto, é importante que suas regras de Atividade sejam específicas e personalizadas para os registros que você está tentando traduzir em pontos de contato. As práticas recomendadas a seguir ajudam a garantir que você esteja criando pontos de contato significativos e valiosos por meio da atribuição Atividades.

## Prática recomendada {#best-practice}

Se você estiver definindo Regras de atividade pela primeira vez ou apenas revisando Regras de atividade que foram configuradas anteriormente, lembre-se das seguintes práticas recomendadas.

* Iniciar simples
   * Identifique alguns tipos principais de Atividades que deseja incorporar aos dados do [!DNL Marketo Measure] e adicione mais tipos à medida que se familiarizar com a atribuição desses pontos de contato
   * Como mencionado, o principal caso de uso desse recurso é criar pontos de contato que rastreiam a eficácia da sua equipe de desenvolvimento de vendas, especificamente chamadas telefônicas de saída e emails de saída

>[!NOTE]
>
>**NÃO** é recomendado rastrear as Atividades de Vendas que ocorrem após a criação da Oportunidade, pois o rastreamento de um processo de Executivos de Vendas não oferece muita insight. O objetivo é rastrear a influência das vendas ao lado da influência do marketing, principalmente no desenvolvimento de uma nova geração de oportunidades/pipeline

* Não usar campos de fórmula para definir suas regras
* Criar regras específicas e precisas
   * O limite para a criação de um ponto de contato da Atividade deve ser o mesmo (ou semelhante) para um preenchimento de formulário ou associação à campanha: Respostas a um email de saída ou conversas telefônicas concluídas
* Sempre validar novas regras em [!DNL Salesforce] antes de salvar e processar
   * A replicação das regras de atividade em um tipo de relatório &quot;Tarefas e eventos&quot; oferece uma compreensão clara de exatamente quantos pontos de contato são da regra
* Trabalhar com sua equipe de vendas Opp
   * Trazer a equipe que trabalha mais próxima com seus registros de atividade ou ferramenta de ativação de vendas garantirá que você esteja usando os campos corretos para definir suas regras

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Revisar as regras de Atribuição de atividade pelo menos duas vezes por ano garante que os pontos de contato da Atividade sejam precisos e atualizados. Verifique se essas regras não estão criando pontos de contato indesejados que estão diluindo seus dados de Atribuição do comprador. Uma análise de como suas regras são definidas ajudará você e sua equipe a se sentirem confiantes na Atribuição de atividades e na função nos dados do [!DNL Marketo Measure].

Outros motivos para isso podem acionar uma revisão das regras de atividade:

* Rotatividade de sua equipe de marketing
* Alterações nos campos usados para definir seus registros de atividade
* Alterações ou atualizações nas ferramentas de ativação de vendas

>[!MORELIKETHIS]
>
>* [Atribuição de atividades](/help/channel-tracking-and-setup/salesforce-activities-attribution.md)
>* [Perguntas frequentes sobre atribuição de atividades de vendas](/help/channel-tracking-and-setup/activities-attribution-faq.md)
