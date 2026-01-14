---
description: Fluxos de trabalho para alinhar a receita do Dynamics e campos de data de fechamento para relatórios do Marketo Measure
title: '[!DNL Marketo Measure] Fluxos de trabalho de receita para o Dynamics'
exl-id: 0e64201a-bc65-4a6d-9192-09c14c810c4a
feature: Microsoft Dynamics
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '800'
ht-degree: 0%

---

# [!DNL Marketo Measure] Fluxos de trabalho de receita para o Dynamics {#marketo-measure-revenue-workflows-for-dynamics}

## Parte 1: Receita estimada versus receita real {#part-estimated-revenue-vs-actual-revenue}

[!DNL Marketo Measure] aponta para um campo de receita padrão pronto para uso (receita real), mas o Dynamics tem dois campos de receita padrão: receita real e receita estimada. Para que a receita do pipeline esteja disponível no Painel do Discover, um campo personalizado e um fluxo de trabalho são necessários para capturar o valor correto do campo Receita estimada ou Receita real, dependendo se a Oportunidade está Aberta ou Fechada (Ganha).

Etapa 1: Criar campo de valor de oportunidade personalizado no Dynamics

>[!NOTE]
>
>Todos os campos de receita do Dynamics têm um campo base e um campo regular. Desconsidere o campo base.

Etapa 2: crie um fluxo de trabalho que atualize o campo de valor de oportunidade personalizado criado na etapa 1 e o campo Valor de oportunidade [!DNL Marketo Measure].

>[!NOTE]
>
>Não é possível apontar para o campo [!DNL Marketo Measure] Valor da Oportunidade (bizible2_bizible_opportunity_amount) em Descobrir com contas do Dynamics. Os clientes do Dynamics devem criar um campo personalizado de valor de oportunidade para [!DNL Marketo Measure] para apontar no Discover. Uma vez concluído, o cliente deve criar um fluxo de trabalho que atualize **ambos** o [!DNL Marketo Measure] Valor da Oportunidade (bizible2_bizible_opportunity_amount) **e** o campo de valor de oportunidade personalizado. O campo [!DNL Marketo Measure] Valor da oportunidade vem com o pacote, mas um campo personalizado deve ser criado.

Instruções do Workflow de Quantidade:

**WORKFLOW #1**: Oportunidade - Atualizar [!DNL Marketo Measure] Campo Valor da Oportunidade e Campo Personalizado = Receita Estimada

Esse fluxo de trabalho é executado em oportunidades abertas sempre que a Receita estimada é alterada e atualiza o campo [!DNL Marketo Measure] Valor da oportunidade e seu campo personalizado para igualar o campo Receita estimada. O workflow deve ser definido para executar &quot;Tempo real&quot;, mas também pode ser executado &quot;sob demanda&quot; para atualizar as oportunidades abertas.

Forneça ao ponto de contato do [!DNL Marketo Measure] o nome do campo de valor de oportunidade personalizado. Eles atualizam as Configurações de Oportunidade do Aplicativo [!DNL Marketo Measure] para incluir o nome do campo de valor de oportunidade personalizado. Isso informa ao Discover qual campo usar nos relatórios.

**WORKFLOW #2**: Oportunidade - Atualizar [!DNL Marketo Measure] Campo Valor da Oportunidade e Campo Personalizado = Receita Efetiva

Este fluxo de trabalho é iniciado quando um usuário fecha uma Oportunidade e atualiza o campo [!DNL Marketo Measure] Valor da Oportunidade e seu campo personalizado com a Receita atual adicionada ao formulário Fechamento da Oportunidade antes que a Oportunidade seja bloqueada como fechada.

## Parte 2: Data de fechamento estimada versus Data de fechamento real {#part-estimated-close-date-vs-actual-close-date}

Por padrão, os dados de receita do pipeline não estão disponíveis no painel porque o Dynamics tem dois campos de data de fechamento de estoque: Data de Fechamento Estimada e Data de Fechamento Real. [!DNL Marketo Measure] só pode apontar para um campo de data de fechamento no painel e está apontando para a Data de Fechamento Real.

Se as oportunidades abertas não tiverem dados no campo Data Real de Fechamento, não haverá dados no painel para as oportunidades abertas. Dito isso, um workflow é necessário com base no estágio de oportunidade para suportar ambos os campos de data.

1. Criar campo de data de fechamento personalizado no objeto Oportunidade ([!DNL Marketo Measure] data de fechamento personalizada).
1. Crie um Fluxo de Trabalho para atualizar o campo Data de Fechamento Personalizada [!DNL Marketo Measure] com a data da Data de Fechamento Estimada ou da Data de Fechamento Real, dependendo se a oportunidade está aberta ou fechada (o fluxo de trabalho deve ser salvo para ser executado em tempo real, mas deve ser executado &quot;sob demanda&quot; pelo menos uma vez para atualizar todas as aberturas atuais).
1. Teste o workflow e confirme se ele funciona.
1. O Cliente fornecerá o nome da API da Data de Fechamento Personalizada para [!DNL Marketo Measure].
1. [!DNL Marketo Measure] para atualizar as configurações do aplicativo [!DNL Marketo Measure] para apontar para o campo Data de Fechamento Personalizada [!DNL Marketo Measure] no Painel.

   Após a conclusão das etapas acima, execute os fluxos de trabalho para atualizar o campo Valor de opp [!DNL Marketo Measure] personalizado e o campo Data de fechamento personalizada [!DNL Marketo Measure] em suas oportunidades históricas para refletir os dados corretos. Isso provavelmente alterará os campos &quot;ligado/por&quot; modificados para que você verifique com sua equipe se há problemas.

Para atualizar as oportunidades fechadas...

1. Isole as oportunidades que foram fechadas desde a data de início do [!DNL Marketo Measure] até que o fluxo de trabalho esteja ativo. Esse é o grupo de oportunidades históricas que você deve atualizar por meio do fluxo de trabalho.
1. Exportar todos os registros para o Excel.
1. Abra o arquivo do Excel e ative o conteúdo.
1. Copiar dados da Data Real de Fechamento para [!DNL Marketo Measure] Data Personalizada de Fechamento.
1. Copiar dados da Receita Real para [!DNL Marketo Measure] Valor de Oportunidade Personalizado **e** [!DNL Marketo Measure] Valor de Oportunidade (há dois campos.)
1. Salvar arquivo.
1. Importar arquivo. O Dynamics reconhecerá isso como um arquivo com registros existentes para atualização.
1. Verifique se há falhas no arquivo de importação.

>[!NOTE]
>
>Os fluxos de trabalho descritos neste documento são apenas uma maneira de atualizar os campos para que o [!DNL Marketo Measure] possa mostrar os dados corretos no Discover. Se você tiver outra maneira de realizar a mesma tarefa, poderá fazê-lo. Basicamente, o que precisamos deles é algum tipo de fluxo de trabalho que faça o seguinte:
>
> * Se Opp = Abrir, atualize o campo de data de fechamento personalizado, o campo de valor opp personalizado e o campo de valor opp [!DNL Marketo Measure] para igualar a Data de Fechamento Estimada e a Receita Estimada, respectivamente.
> * Se Opp = Ganho Fechado, atualize o campo de data de fechamento personalizado, o campo de valor opp personalizado e o campo de valor opp [!DNL Marketo Measure] para igualar a Data de Fechamento Real e a Receita Real, respectivamente.
