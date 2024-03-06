---
unique-page-id: 37356132
description: "[!DNL Marketo Measure] Fluxos de trabalho de receita para Dynamics - [!DNL Marketo Measure]"
title: "[!DNL Marketo Measure] Fluxos de trabalho de receita para o Dynamics"
exl-id: 0e64201a-bc65-4a6d-9192-09c14c810c4a
feature: Microsoft Dynamics
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '791'
ht-degree: 0%

---

# [!DNL Marketo Measure] Fluxos de trabalho de receita para Dynamics {#marketo-measure-revenue-workflows-for-dynamics}

## Parte 1: Receita estimada versus receita real {#part-estimated-revenue-vs-actual-revenue}

[!DNL Marketo Measure] aponta para um campo de receita padrão pronto para uso (Receita real), mas o Dynamics tem dois campos de receita padrão: Receita real e Receita estimada. Para que a receita do pipeline esteja disponível no Painel do Discover, um campo personalizado e um fluxo de trabalho são necessários para capturar o valor correto do campo Receita estimada ou Receita real, dependendo se a Oportunidade está Aberta ou Fechada (Ganha).

Etapa 1: Criar campo de valor de oportunidade personalizado no Dynamics

>[!NOTE]
>
>Todos os campos de receita do Dynamics têm um campo base e um campo regular. Desconsidere o campo base.

Etapa 2: crie um fluxo de trabalho que atualize o campo de valor de oportunidade personalizado criado na etapa 1 e o [!DNL Marketo Measure] Campo Valor da oportunidade.

>[!NOTE]
>
>Não podemos apontar para o [!DNL Marketo Measure] Campo Valor da oportunidade (bizible2_bizible_opportunity_amount) em Descobrir com contas do Dynamics. Os clientes do Dynamics devem criar um campo personalizado de valor de oportunidade para [!DNL Marketo Measure] para apontar no Discover. Após a conclusão, o cliente deve criar um workflow que atualize **ambos** o [!DNL Marketo Measure] Quantia da Oportunidade (bizible2_bizible_opportunity_amount) **e** o campo valor de oportunidade personalizado. A variável [!DNL Marketo Measure] O campo Valor da oportunidade vem com o pacote, mas um campo personalizado deve ser criado.

Instruções do Workflow de Quantidade:

**WORKFLOW #1**: Oportunidade - Atualizar [!DNL Marketo Measure] Campo Valor da oportunidade e Campo personalizado = Receita estimada

Esse fluxo de trabalho é executado em oportunidades abertas sempre que a Receita estimada muda e atualiza a [!DNL Marketo Measure] O campo Valor da oportunidade e seu campo personalizado serão iguais ao campo Receita estimada. O workflow deve ser definido para executar &quot;Tempo real&quot;, mas também pode ser executado &quot;sob demanda&quot; para atualizar as oportunidades abertas.

Forneça o seu [!DNL Marketo Measure] ponto de contato com o nome do campo de valor de oportunidade personalizado. Eles atualizam o [!DNL Marketo Measure] Configurações de oportunidade do aplicativo para incluir o nome do campo de valor de oportunidade personalizado. Isso informa ao Discover qual campo usar nos relatórios.

**WORKFLOW #2**: Oportunidade - Atualizar [!DNL Marketo Measure] Campo Valor da Oportunidade e Campo Personalizado = Receita Efetiva

Esse fluxo de trabalho é iniciado quando um usuário fecha uma Oportunidade e atualiza o [!DNL Marketo Measure] O campo Valor da oportunidade e o campo personalizado com a Receita real adicionada ao formulário Fechamento da oportunidade antes que a Oportunidade seja bloqueada como fechada.

## Parte 2: Data de fechamento estimada versus Data de fechamento real {#part-estimated-close-date-vs-actual-close-date}

Por padrão, os dados de receita do pipeline não estão disponíveis no painel porque o Dynamics tem dois campos de data de fechamento de estoque: Data de Fechamento Estimada e Data de Fechamento Real. [!DNL Marketo Measure] O só pode apontar para um campo de data de fechamento no painel e está apontando para a Data de Fechamento Real.

Se as oportunidades abertas não tiverem dados no campo Data Real de Fechamento, não haverá dados no painel para as oportunidades abertas. Dito isso, um workflow é necessário com base no estágio de oportunidade para suportar ambos os campos de data.

1. Criar campo de data de fechamento personalizado no objeto da oportunidade ([!DNL Marketo Measure] Data de Fechamento Personalizada).
1. Crie um fluxo de trabalho para atualizar o [!DNL Marketo Measure] O campo Data de fechamento personalizada com a data da Data de fechamento estimada ou da Data de fechamento real, dependendo se a oportunidade está aberta ou fechada (o workflow deve ser salvo para ser executado em tempo real, mas deve ser executado &quot;sob demanda&quot; pelo menos uma vez para atualizar todas as aberturas abertas no momento).
1. Teste o workflow e confirme se ele funciona.
1. O cliente deverá fornecer o nome da API da data de fechamento personalizada a [!DNL Marketo Measure].
1. [!DNL Marketo Measure] para atualizar o [!DNL Marketo Measure] configurações do aplicativo para apontar para a variável [!DNL Marketo Measure] Campo Data de fechamento personalizada no painel.

   Após a conclusão das etapas acima, execute os fluxos de trabalho para atualizar a Personalizada [!DNL Marketo Measure] O campo Valor de abertura e a variável [!DNL Marketo Measure] Campo Data de fechamento personalizada em suas oportunidades históricas para refletir os dados corretos. Isso provavelmente alterará os campos &quot;ligado/por&quot; modificados para que você verifique com sua equipe se há problemas.

Para atualizar as oportunidades fechadas...

1. Isole as oportunidades que foram fechadas desde a [!DNL Marketo Measure] data de início até que o workflow esteja ativo. Esse é o grupo de oportunidades históricas que você deve atualizar por meio do fluxo de trabalho.
1. Exportar todos os registros para o Excel.
1. Abra o arquivo do Excel e ative o conteúdo.
1. Copiar dados da Data Real de Fechamento para [!DNL Marketo Measure] Data de fechamento personalizada.
1. Copiar dados da receita atual para [!DNL Marketo Measure] Valor de oportunidade personalizado **e** [!DNL Marketo Measure] Valor da oportunidade (há dois campos.)
1. Salvar arquivo.
1. Importar arquivo. O Dynamics reconhecerá isso como um arquivo com registros existentes para atualização.
1. Verifique se há falhas no arquivo de importação.

>[!NOTE]
>
>Os fluxos de trabalho descritos neste documento são apenas uma maneira de atualizar os campos para que [!DNL Marketo Measure] O pode mostrar os dados corretos no Discover. Se você tiver outra maneira de realizar a mesma tarefa, poderá fazê-lo. Basicamente, o que precisamos deles é algum tipo de fluxo de trabalho que faça o seguinte:
>
> * Se Opp = Abrir, atualize o campo de data de fechamento personalizado, o campo de valor opp personalizado e [!DNL Marketo Measure] campo de valor opp para igualar a Data de fechamento estimada e a Receita estimada, respectivamente.
> * Se Opp = Ganho Fechado, atualize o campo de data de fechamento personalizado, o campo de quantia opp personalizado e [!DNL Marketo Measure] campo de valor opp para igualar a Data de Fechamento Real e a Receita Real, respectivamente.
