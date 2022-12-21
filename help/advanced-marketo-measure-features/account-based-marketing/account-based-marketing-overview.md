---
unique-page-id: 18874730
description: Visão geral de marketing baseado em conta - [!DNL Marketo Measure] - Documentação do produto
title: Visão geral de marketing baseado em conta
exl-id: 2ead69c0-66da-439d-a0ba-25c73c4b308c
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '737'
ht-degree: 0%

---

# Visão geral de marketing baseado em conta {#account-based-marketing-overview}

Abaixo está uma breve visão geral do ABM, os componentes do [!DNL Marketo Measure] Recurso do ABM e como adicioná-lo ao seu [!DNL Salesforce] layout de página. Para ler mais sobre o ABM, consulte [esta página](https://www.marketo.com/account-based-marketing/){target=&quot;_blank&quot;}.

Para navegar diretamente para as instruções de configuração do ABM em seu [!DNL Salesforce] instância, por favor [clique aqui](/help/advanced-marketo-measure-features/account-based-marketing/account-based-marketing-overview.md#setting-up-abm-page-layout-in-salesforce){target=&quot;_blank&quot;}.

## O que é ABM {#what-is-abm}

O ABM (Account-based marketing, marketing baseado em conta) é uma estratégia de marketing na qual você direciona e vende para empresas e contas como um todo, não apenas como indivíduos. [!DNL Marketo Measure] ajuda as equipes de Marketing e Vendas a executar estratégias de ABM bem-sucedidas com sua funcionalidade de mapeamento de cliente potencial para conta e Pontuação preditiva de engajamento.

Para que nosso modelo de Marketing baseado em conta comece a preencher no seu CRM, [!DNL Marketo Measure] exige que sejam cumpridos os seguintes critérios:

* Seu CRM precisa de pelo menos 25 contas que tenham pelo menos uma oportunidade vencedora fechada sobre elas, para que possamos medir melhor as semelhanças de uma conta/oportunidade &quot;bem-sucedida&quot; para sua empresa.
* Do outro lado da moeda, seu CRM precisa de pelo menos 25 contas sem qualquer Oportunidade de Ganho Fechado (todas as opções devem estar em nossa categoria de estágio &quot;Aberto&quot; ou em uma categoria &quot;Perdido Fechado&quot; - isso nos ajuda a medir o que faz uma Conta de grau mais baixo em sua organização.

>[!NOTE]
>
>As contas &quot;incorretas&quot; acima referidas têm de estar abertas durante, pelo menos, 12 meses sem acumularem uma opção de Won Fechado; essa é a nossa diretriz básica para decidir se uma opção se tornou obsoleta para os objetivos do modelo.

## Mapeamento de cliente potencial para conta {#lead-to-account-mapping}

O mapeamento de cliente potencial é uma parte fundamental de uma abordagem eficaz de ABM. Com mapeamento de cliente potencial para conta, prospetos ou leads são agrupados na mesma conta de empresa que interagem com sua marca. Isso permite direcionar e vender para indivíduos da mesma empresa de maneira consistente. Não há [!DNL Salesforce] configuração necessária para começar a se beneficiar desse recurso. O [!DNL Marketo Measure] Lead para o mapeamento de conta: cinco métodos correspondentes diferentes:

* Site de Cliente Potencial para Site da Conta
* Domínio de Email do Cliente Potencial para Domínio do Site da Conta
* Nome da Empresa de Cliente Potencial para Nome da Conta
* Empresa líder para domínio do site da conta
* Correspondência do domínio no endereço de email do cliente potencial com a conta por meio do endereço de email do contato

## Pontuação preditiva de engajamento {#predictive-engagement-score}

O [!DNL Marketo Measure] Pontuação preditiva de engajamento, ou PES, é um valor dinâmico que ilustra o envolvimento de uma conta específica com seus esforços de marketing. Essa pontuação é útil para segmentar contas a serem segmentadas. Trata-se de um instrumento valioso para identificar as contas de forma a atingir de forma mais eficaz e eficiente as suas metas.

Há muitos componentes que entram no algoritmo que calcula o PES. Recenticidade e idade têm grande influência nas alterações de pontuação, juntamente com a última atividade de ponto de contato ou exibições de página. Adicionar novos contatos a uma conta também afeta o PES. Abaixo está uma lista de algumas entradas do PES:

* Número total de exibições de página da conta
* Número médio de exibições de página
* Número médio de pessoas na conta
* Idade da última exibição de página
* Média de idade das exibições de página
* Número de pessoas na conta
* Páginas importantes específicas e se tiver havido uma visita nos últimos 30/60/90 dias
* Se a conta tiver um negócio fechado perdido/ganho
* Com que probabilidade será fechado perdido/ganho

>[!NOTE]
>
>Você pode notar um nível de &quot;N/A&quot; ou &quot;-&quot; (o símbolo de travessão) na Pontuação preditiva de engajamento para algumas contas.

_Um grau de &quot;N/A&quot; significa simplesmente que ainda não temos dados suficientes nessa conta para que nosso modelo gere um nível verdadeiro - com mais dados, um grau será dado eventualmente._
_Um nível de &quot;-&quot; (o símbolo de travessão) significa que essa conta ainda deve ser processada pelo processo ABM, devido a restrições de tempo, processos ocasionalmente perdidos etc. Se você achar que uma Conta deve ter um nível, com base em outras contas ou prazos semelhantes, entre em contato com o e deixe [!DNL Marketo Measure] sabe._

## Configuração do layout da página do ABM em [!DNL Salesforce] {#setting-up-abm-page-layout-in-salesforce}

Para começar a usar o PES, basta adicionar o campo PES e a Lista relacionada aos layouts de página apropriados em [!DNL Salesforce].

1. Navegar para **[!UICONTROL Configuração]** > **[!UICONTROL Personalizar]** > **[!UICONTROL Contas]** > **[!UICONTROL Layout da página]**. Em seguida, selecione o layout da página que deseja editar.
1. Ir para [!UICONTROL Campos] e mova o campo &quot;Pontuação de engajamento preditivo&quot; para a seção Informações da conta .

   ![](assets/1.png)

1. Finalmente, acesse [!UICONTROL Listas Relacionadas] e mova a Lista relacionada de &quot;leads&quot; para o layout da página.

   ![](assets/2.png)

1. Em seguida, navegue até **[!UICONTROL Configuração]** > **[!UICONTROL Personalizar]** > **[!UICONTROL Clientes potenciais]** > **[!UICONTROL Layout da página]** e selecione os layouts de página apropriados que deseja editar.
1. Clique em **[!UICONTROL Campos]** e adicione o [!UICONTROL Conta] no campo em que você vê ajuste na página.

   ![](assets/3.png)

Está tudo pronto!

