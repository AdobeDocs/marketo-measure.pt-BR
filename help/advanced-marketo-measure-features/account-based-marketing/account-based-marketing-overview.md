---
unique-page-id: 18874730
description: Saiba mais sobre Account-Based Marketing (ABM) e como o Adobe Marketo Measure ajuda as equipes de marketing e vendas a executarem estratégias de ABM bem-sucedidas.
title: Visão geral do marketing baseado em conta
exl-id: 2ead69c0-66da-439d-a0ba-25c73c4b308c
feature: Account-based Marketing
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '822'
ht-degree: 98%

---

# Visão geral do marketing baseado em conta {#account-based-marketing-overview}

As seções a seguir fornecem uma breve visão geral do ABM, dos componentes do recurso ABM do [!DNL Marketo Measure] e como adicioná-lo ao layout de página do [!DNL Salesforce]. Para ler mais sobre a ABM, leia o [blog sobre ABM](https://business.adobe.com/blog/basics/account-based-marketing){target="_blank"} da Adobe.

Para obter instruções detalhadas sobre como configurar o ABM na instância do [!DNL Salesforce], acesse [Configuração do layout da página de ABM no Salesforce](/help/advanced-marketo-measure-features/account-based-marketing/account-based-marketing-overview.md#setting-up-abm-page-layout-in-salesforce){target="_blank"}.

## O que é o ABM {#what-is-abm}

O marketing baseado em conta, ABM, é uma estratégia de marketing na qual você direciona e vende para empresas e contas como um todo, não apenas como pessoas. O [!DNL Marketo Measure] ajuda as equipes de marketing e vendas na execução de estratégias de ABM bem-sucedidas com sua funcionalidade de mapeamento de lead para conta e a Pontuação preditiva de engajamento.

Para que nosso modelo de Account-Based Marketing comece a preencher o seu CRM, o [!DNL Marketo Measure] precisa que você atenda aos seguintes critérios:

* O CRM precisa de, no mínimo, 25 contas com pelo menos uma oportunidade fechada ganha para que possamos avaliar melhor os pontos em comum de uma conta/oportunidade “bem-sucedida” no seu negócio.
* Por outro lado, o seu CRM precisa de pelo menos 25 contas sem oportunidades fechadas ganhas (todas as oportunidades devem estar na categoria de estágio “Aberta” ou “Fechada perdida”). Isso nos ajuda a medir o que categoriza uma conta de nível inferior na sua organização.

>[!NOTE]
>
>As contas “ruins” citadas acima precisam estar abertas por pelo menos 12 meses sem acumular uma oportunidade fechada ganha. Essa é a diretriz básica para saber se uma oportunidade se tornou obsoleta ou não para os fins do modelo.

## Mapeamento de lead para conta {#lead-to-account-mapping}

O mapeamento de lead para conta é uma parte essencial de uma abordagem de ABM eficaz. Com o mapeamento de lead para conta, os clientes potenciais, ou leads, são agrupados na mesma conta da empresa à medida que se engajam com sua marca. Isso permite direcionar e vender para pessoas da mesma empresa de maneira consistente. Não é necessária nenhuma configuração adicional do [!DNL Salesforce] para começar a se beneficiar desse recurso. Os diferentes métodos de correspondência do mapeamento de leads para contas do [!DNL Marketo Measure]:

* Site do lead para o site da conta
* Domínio de email do lead para o domínio do site da conta
* Nome da empresa do lead para o nome da conta
* Empresa do lead para o domínio do site da conta
* Do site dos leads para o domínio de email dos contatos da conta
* Do domínio de email dos leads para o domínio de email dos contatos da conta
* Do site dos leads para o domínio de email dos leads da conta
* Do domínio de email dos leads para o domínio de email dos leads da conta

Os leads/contatos das contas são validados por seus domínios de email/site e associados ao domínio ou subdomínio de email/site dele. A conta com mais correspondências é usada.

>[!NOTE]
>
>Cada lead tenta se corresponder a uma conta na ordem preferencial dos métodos acima. Uma vez que a correspondência é feita, a AccountId é definida imediatamente no lead e este não terá outra correspondência feita por outro método. 

## Pontuação preditiva de engajamento {#predictive-engagement-score}

A Pontuação preditiva de engajamento do [!DNL Marketo Measure], ou PES, é um valor dinâmico que ilustra o engajamento de uma conta específica com as suas iniciativas de marketing. Essa pontuação é útil na segmentação de contas para direcionamento. É uma ferramenta valiosa para identificar contas a serem direcionadas de forma mais eficaz e eficiente.

Há muitos componentes que fazem parte do algoritmo que calcula a PES. A recenticidade e a idade têm uma grande influência nas alterações de pontuação, juntamente com a última atividade do ponto de contato e as exibições de página. A adição de novos contatos a uma conta também afeta a PES. Esta é uma lista de algumas entradas da PES:

* Número total de visualizações de página da conta
* Número médio de visualizações de página
* Número médio de pessoas na conta
* Idade da última visualização de página
* Idade média das visualizações de página
* Número de pessoas na conta
* Páginas importantes específicas e se houve uma visita nos últimos 30/60/90 dias
* Se a conta possui uma negociação fechada perdida/ganha
* Qual a probabilidade de ser fechada e perdida/ganha

>[!NOTE]
>
>Você pode observar uma nota “N/D“ ou “-” (o símbolo de traço) na Pontuação preditiva de engajamento de algumas contas.

_Uma nota “N/D” significa que ainda não temos dados suficientes sobre essa conta para que o modelo gere uma nota verdadeira. Quando houver mais dados, o modelo atribuirá uma nota._
_Uma nota de “-” (o símbolo de traço) significa que essa conta ainda não terminou o processo do ABM, devido a restrições de tempo, processos ocasionalmente perdidos etc. Se achar que uma conta já deveria ter uma nota, com base em outras contas ou intervalos de tempo semelhantes, entre em contato com o [!DNL Marketo Measure]._

## Configuração do layout da página de ABM no [!DNL Salesforce] {#setting-up-abm-page-layout-in-salesforce}

Para começar a usar a PES, basta adicionar o campo PES e a lista relacionada aos layouts de página apropriados no [!DNL Salesforce].

1. Navegue até **[!UICONTROL Configuração]** > **[!UICONTROL Personalizar]** > **[!UICONTROL Contas]** > **[!UICONTROL Layout da página]**. Em seguida, selecione o layout de página que deseja editar.
1. Vá para [!UICONTROL Campos] e mova o campo “Pontuação preditiva de engajamento” para a seção Informações da conta.

   ![](assets/1.png)

1. Por fim, acesse [!UICONTROL Listas Relacionadas] e mova a Lista relacionada “Leads” para o layout da página.

   ![](assets/2.png)

1. Em seguida, acesse **[!UICONTROL Configuração]** > **[!UICONTROL Personalizar]** > **[!UICONTROL Leads]** > **[!UICONTROL Layout da página]** e selecione os layouts de página apropriados que deseja editar.
1. Clique em **[!UICONTROL Campos]** e adicione o campo [!UICONTROL Conta] onde achar mais adequado na página.

   ![](assets/3.png)

Pronto!

