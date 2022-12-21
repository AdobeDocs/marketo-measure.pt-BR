---
description: Práticas recomendadas para atribuição de atividades - [!DNL Marketo Measure] - Documentação do produto
title: Práticas recomendadas para atribuição de atividades
exl-id: 66fb9f47-3912-40a6-b112-3efca789f321
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '526'
ht-degree: 0%

---

# Práticas recomendadas para atribuição de atividades {#best-practices-for-activities-attribution}

## Visão geral {#overview}

O [!DNL Marketo Measure] O recurso Atribuição de atividades permite que os clientes criem pontos de contato a partir de registros de Atividade no seu CRM. Esse método de criação de pontos de contato é flexível, na medida em que permite criar regras baseadas nos campos Tarefa ou Evento para informar [!DNL Marketo Measure] quais registros de atividade devem produzir pontos de contato e receber crédito de atribuição.

O caso de uso mais comum para esse recurso é criar regras que incorporem interações de Vendas aos dados do ponto de contato do comprador. A Atribuição de atividades possibilita alinhar os dados de Vendas e Marketing em uma jornada.

Para muitos [!DNL Salesforce] , o objeto Atividade pode conter vários tipos de registro, portanto, é importante que as regras de Atividade sejam específicas e personalizadas para os registros que você está tentando traduzir em pontos de contato. As práticas recomendadas a seguir ajudarão a garantir que você esteja criando pontos de contato significativos e valiosos por meio da atribuição Atividades .

## Prática recomendada {#best-practice}

Se você estiver definindo regras de Atividade pela primeira vez ou apenas revisando regras de Atividade que foram configuradas anteriormente, lembre-se das seguintes práticas recomendadas.

* Comece simples
   * Identifique alguns tipos principais de atividades que deseja incorporar ao [!DNL Marketo Measure] dados e, em seguida, adicionar mais tipos à medida que você se familiariza com a atribuição desses pontos de contato
   * Como mencionado, o principal caso de uso desse recurso é criar pontos de contato que rastreiam a eficácia da sua equipe de desenvolvimento de vendas, especificamente chamadas telefônicas de saída e emails de saída

>[!NOTE]
>
>É **NOT** recomendado para rastrear as atividades de vendas que acontecem depois que a Oportunidade é criada, pois o rastreamento de um processo dos Executivos de vendas não oferece muito insight. A meta é rastrear a influência das Vendas junto com a influência do Marketing, principalmente no desenvolvimento de uma nova geração de Oportunidade/pipeline

* Não use campos de fórmula para definir suas regras
* Criar regras específicas e precisas
   * Você deseja que o limite para a criação de um ponto de contato de Atividade seja o mesmo (ou semelhante) a um preenchimento de formulário ou associação de campanha, ou seja, (Respostas a um email de saída ou conversas de telefone concluídas)
* Sempre valide novas regras em [!DNL Salesforce] antes de salvar e processar
   * A replicação das regras de atividade em um tipo de relatório &quot;Tarefas e eventos&quot; fornecerá uma compreensão clara de exatamente quantos pontos de contato serão criados a partir dessa regra
* Trabalhe com sua equipe de vendas
   * Trazer a equipe que trabalha mais perto de seus registros de Atividade ou da ferramenta de ativação de vendas garantirá que você esteja usando os campos corretos para definir suas regras

## Prática recomendada para manutenção {#best-practice-for-maintenance}

Revisar as regras de Atribuição de atividade pelo menos duas vezes por ano garantirá que os pontos de contato da atividade sejam precisos e atualizados. Certifique-se de que essas regras não estejam criando pontos de contato indesejados que estejam diluindo seus dados de Atribuição de comprador. Uma revisão de como suas regras são definidas ajudará você e sua equipe a se sentirem confiantes na Atribuição de atividades e em sua função no [!DNL Marketo Measure] dados.

Outros motivos para isso podem acionar uma análise das regras da atividade incluem...

* Volume de negócios em sua equipe de marketing
* Alterações nos campos usados para definir seus registros de atividade
* Alterações ou atualizações na(s) ferramenta(s) de ativação de vendas

>[!MORELIKETHIS]
>
>* [Atribuição de atividades](/help/advanced-marketo-measure-features/activities-attribution/salesforce-activities-attribution.md)
>* [Perguntas frequentes sobre atribuição de atividades de vendas](/help/advanced-marketo-measure-features/activities-attribution/activities-attribution-faq.md)


