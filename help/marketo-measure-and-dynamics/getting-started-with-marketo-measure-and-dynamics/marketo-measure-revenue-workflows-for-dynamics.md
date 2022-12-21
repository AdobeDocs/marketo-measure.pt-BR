---
unique-page-id: 37356132
description: "[!DNL Marketo Measure] Fluxos de trabalho de receita para dinâmicos - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Fluxos de trabalho de receita para dinâmica"
exl-id: 0e64201a-bc65-4a6d-9192-09c14c810c4a
source-git-commit: 54337a0a65b79d80ebeae6531f5e92f4f48721a7
workflow-type: tm+mt
source-wordcount: '817'
ht-degree: 0%

---

# [!DNL Marketo Measure] Fluxos de trabalho de receita para dinâmicos {#marketo-measure-revenue-workflows-for-dynamics}

## Parte 1: Receita Estimada vs Receita Real {#part-estimated-revenue-vs-actual-revenue}

[!DNL Marketo Measure] aponta para um campo de receita padrão pronto para uso (Receita real), mas o Dynamics tem dois campos de receita padrão: Receita real e receita estimada. Para ter a receita do pipeline disponível no Painel do Discover, um campo personalizado e um workflow são necessários para capturar a quantia correta do campo Receita estimada ou Receita real , dependendo se a Oportunidade é Aberta ou Fechada (Won).

Etapa 1: Criar campo de valor de oportunidade personalizado no Dynamic

>[!NOTE]
>
>Todos os campos de receita do Dynamics têm um campo base e um campo regular. Ignore o campo base.

Etapa 2: Crie um workflow que atualize o campo de valor da oportunidade personalizada criado na etapa 1 e o campo [!DNL Marketo Measure] Campo Quantia da Oportunidade.

>[!NOTE]
>
>Não podemos apontar para o [!DNL Marketo Measure] Campo Quantia da Oportunidade (bizible2_bizible_portunity_amount) no Discover com contas do Dynamics. Os clientes do Dynamics devem criar um campo de valor de oportunidade personalizado para [!DNL Marketo Measure] aponte para no Discover. Após a conclusão, o cliente precisa criar um workflow que atualize **both** o [!DNL Marketo Measure] Quantia da Oportunidade (bizible2_bizible_possible_amount) **e** o campo de valor da oportunidade personalizada. O [!DNL Marketo Measure] O campo Valor da oportunidade vem com o pacote, mas um campo personalizado deve ser criado.

Instruções do Fluxo de Trabalho de Quantia:

**FLUXO DE TRABALHO Nº 1**: Oportunidade - Atualizar [!DNL Marketo Measure] Campo Quantia da Oportunidade e Campo Personalizado = Receita Estimada

Esse workflow é executado em oportunidades abertas sempre que a Receita estimada for alterada e atualizará a variável [!DNL Marketo Measure] Valor da Oportunidade e seu campo personalizado para igualar o campo Receita Estimada . O workflow deve ser definido para executar &quot;Tempo real&quot;, mas também pode ser executado &quot;sob demanda&quot; para atualizar oportunidades abertas.

Forneça sua [!DNL Marketo Measure] ponto de contato com o nome do campo de valor da oportunidade personalizada. Eles atualizarão o [!DNL Marketo Measure] Configurações de oportunidade do aplicativo para incluir o nome do campo de valor de oportunidade personalizado. Isso informará o Discover sobre qual campo usar nos relatórios.

**FLUXO DE TRABALHO Nº 2**: Oportunidade - Atualizar [!DNL Marketo Measure] Campo Quantia da Oportunidade e Campo Personalizado = Receita Real

Esse workflow é executado em tempo real. Ele é iniciado quando um usuário fecha uma Oportunidade e atualiza a variável [!DNL Marketo Measure] Valor da Oportunidade e seu campo personalizado com a Receita Real adicionada ao formulário Fechamento da Oportunidade antes que a Oportunidade seja bloqueada como fechada.

## Parte 2: Data Estimada de Fechamento vs. Data de Fechamento Real {#part-estimated-close-date-vs-actual-close-date}

Pronto para uso, os dados de receita do pipeline não estarão disponíveis no painel porque, por padrão, o Dynamics tem dois campos de data de fechamento de estoque: Data de Fechamento Estimada e Data de Fechamento Real. [!DNL Marketo Measure] O só pode apontar para um campo de data de fechamento no painel e, no momento, apontamos para a Data de fechamento real.

Se as oportunidades abertas não tiverem dados no campo Data de fechamento real , não estamos vendo nenhum dado no painel para oportunidades abertas. Dito isso, um fluxo de trabalho é necessário com base no estágio de oportunidade para suportar ambos os campos de data.

1. Criar Campo de Data de Fechamento Personalizado no Objeto da Oportunidade (ou seja, [!DNL Marketo Measure] Data Personalizada de Fechamento).
1. Crie um workflow para atualizar o [!DNL Marketo Measure] Campo de Data de Fechamento Personalizada com a data da Data de Fechamento Estimada ou da Data de Fechamento Real, dependendo se a oportunidade está aberta ou fechada (o workflow deve ser salvo para ser executado em tempo real, mas precisará ser executado &quot;sob demanda&quot; pelo menos uma vez para atualizar todas as opções abertas atuais).
1. Teste o workflow e confirme se ele funciona.
1. O cliente deve fornecer o nome da API de Data de fechamento personalizada para [!DNL Marketo Measure].
1. [!DNL Marketo Measure] para atualizar o [!DNL Marketo Measure] configurações do aplicativo para apontar para [!DNL Marketo Measure] Campo Personalizar data de fechamento no painel.

   Após a conclusão das etapas acima, será necessário executar workflows para atualizar o [!DNL Marketo Measure] Valor da opção e o campo [!DNL Marketo Measure] Campo de Data de fechamento personalizada em suas oportunidades históricas para refletir os dados corretos. Isso provavelmente alterará os campos ativado/por modificados modificados para que você verifique com sua equipe se isso apresenta algum problema.

Para atualizar as oportunidades fechadas..

1. Isole as oportunidades que foram fechadas desde a [!DNL Marketo Measure] inicie a data até que o workflow esteja ativo. Esse é o grupo de oportunidades históricas que você precisará atualizar por meio do workflow.
1. Exportar todos os registros para o Excel.
1. Abra o arquivo Excel, ative o conteúdo.
1. Copiar dados da data de fechamento real para [!DNL Marketo Measure] Data de Fechamento Personalizada.
1. Copiar dados de receita real para [!DNL Marketo Measure] Valor da Oportunidade Personalizada **e** [!DNL Marketo Measure] Quantia da Oportunidade (há dois campos.)
1. Salve o arquivo.
1. Importar arquivo. O Dynamics reconhecerá isso como um arquivo com registros existentes para atualização.
1. Verifique se há falhas no arquivo de importação.

>[!NOTE]
>
>Os workflows descritos neste documento são apenas uma maneira de atualizar os campos para [!DNL Marketo Measure] pode mostrar os dados corretos no Discover. Se você tiver outra maneira de realizar a mesma tarefa, você pode fazê-la. Basicamente, o que precisamos deles é algum tipo de fluxo de trabalho que realize o seguinte:
>
> * Se Opp = Open, atualize o campo de data de fechamento personalizado, o campo de valor de opp personalizado e [!DNL Marketo Measure] campo de valor opp para igualar Data de fechamento estimada e Receita estimada, respectivamente.
> * Se Opp = Vencedor Fechado, atualize o campo de data de fechamento personalizado, o campo de valor de opp personalizado e [!DNL Marketo Measure] campo valor de opp para igualar Data de Fechamento Real e Receita Real, respectivamente.

