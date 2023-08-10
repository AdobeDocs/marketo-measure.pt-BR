---
unique-page-id: 18874730
description: Visão geral de marketing baseado em conta - [!DNL Marketo Measure] - Documentação do produto
title: Visão geral de marketing baseado em conta
exl-id: 2ead69c0-66da-439d-a0ba-25c73c4b308c
feature: Account-based Marketing
source-git-commit: a2a7657e8377fd5c556d38f6eb815e39d2b8d15e
workflow-type: tm+mt
source-wordcount: '782'
ht-degree: 1%

---

# Visão geral de marketing baseado em conta {#account-based-marketing-overview}

Apresenta-se a seguir uma breve panorâmica da gestão por [!DNL Marketo Measure] recurso ABM e como adicioná-lo ao seu [!DNL Salesforce] layout de página. Para ler mais sobre a ABM, confira [esta página](https://www.marketo.com/account-based-marketing/){target="_blank"}.

Para acessar diretamente as instruções de configuração do ABM em seu [!DNL Salesforce] instância, [clique aqui](/help/advanced-marketo-measure-features/account-based-marketing/account-based-marketing-overview.md#setting-up-abm-page-layout-in-salesforce){target="_blank"}.

## O que é ABM {#what-is-abm}

O marketing baseado em conta, ABM, é uma estratégia de marketing na qual você direciona e vende para empresas e contas como um todo, não apenas como indivíduos. [!DNL Marketo Measure] O ajuda as equipes de marketing e vendas a executarem estratégias de ABM bem-sucedidas com sua funcionalidade de mapeamento de lead para conta e Pontuação preditiva de engajamento.

Para que nosso modelo de Marketing baseado em conta comece a preencher o em seu CRM, [!DNL Marketo Measure] precisa que os seguintes critérios sejam atendidos:

* Seu CRM precisa de, pelo menos, 25 contas com pelo menos uma Oportunidade conquistada fechada para que possamos medir melhor as semelhanças de uma Conta/Oportunidade &quot;bem-sucedida&quot; para sua empresa.
* Do outro lado da moeda, seu CRM precisa de pelo menos 25 contas sem nenhuma oportunidade conquistada fechada (todas as oportunidades devem estar em nossa categoria de estágio &quot;Aberto&quot; ou em uma categoria &quot;Perdido Fechado&quot; - isso nos ajuda a medir o que faz uma conta de nível inferior em sua organização.

>[!NOTE]
>
>As contas &quot;ruins&quot; acima precisam estar abertas por pelo menos 12 meses sem acumular um Opp Won fechado; essa é nossa diretriz básica para saber se um Opp ficou obsoleto ou não para os fins do modelo.

## Mapeamento de lead para conta {#lead-to-account-mapping}

O mapeamento entre lead e conta é uma parte essencial de uma abordagem ABM eficaz. Com o mapeamento de lead para conta, os prospetos ou leads são agrupados na mesma conta da empresa à medida que se envolvem com sua marca. Isso permite direcionar e vender para indivíduos da mesma empresa de maneira consistente. Não há [!DNL Salesforce] configuração necessária para começar a se beneficiar desse recurso. A variável [!DNL Marketo Measure] Conduzir ao Mapeamento de conta cinco métodos diferentes de correspondência:

* Site do Cliente Potencial para Site da Conta
* Domínio de email do lead para o domínio do site da conta
* Nome da Empresa Cliente Potencial para Nome da Conta
* Empresa líder para domínio do site da conta
* Correspondência do domínio no endereço de email do lead à conta pelo endereço de email do contato

>[!NOTE]
>
>Tenta-se corresponder cada cliente potencial a uma Conta na ordem preferencial dos métodos acima. Depois que uma correspondência é feita, a AccountId é definida imediatamente no cliente potencial e não será correspondida usando outro método. Se o cliente potencial já tiver uma AccountId válida, o cliente potencial será ignorado.

## Pontuação preditiva de engajamento {#predictive-engagement-score}

A variável [!DNL Marketo Measure] A Pontuação preditiva de engajamento, ou PES, é um valor dinâmico que ilustra o engajamento de uma determinada conta em suas iniciativas de marketing. Essa pontuação é útil para segmentar contas no target. É uma ferramenta valiosa para identificar contas a serem direcionadas de forma mais eficaz e eficiente.

Há muitos componentes que entram no algoritmo que calcula o PES. A recenticidade e a idade têm uma grande influência nas alterações da pontuação, juntamente com a última atividade de ponto de contato ou exibições de página. A adição de novos contatos a uma conta também afeta os SPE. Abaixo está uma lista de algumas entradas do PES:

* Número total de exibições de página da conta
* Número médio de exibições de página
* Número médio de pessoas na conta
* Idade da última exibição de página
* Idade média das exibições de página
* Número de pessoas na conta
* Páginas importantes específicas e se houve uma visita nos últimos 30/60/90 dias
* Se a conta tiver uma negociação fechada perdida/ganha
* Qual a probabilidade de ser fechado, perdido/ganho

>[!NOTE]
>
>Você pode notar uma nota &quot;N/A&quot; ou &quot;-&quot; (o símbolo de traço) na pontuação preditiva de engajamento de algumas contas.

_Uma nota &quot;N/A&quot; simplesmente significa que ainda não temos dados suficientes sobre essa conta para que o nosso modelo gere uma nota verdadeira - com mais dados, uma nota será dada eventualmente._
_Uma nota de &quot;-&quot; (o símbolo de traço) significa que essa conta ainda precisa ser processada pelo processo ABM, devido a restrições de tempo, processos ocasionalmente perdidos etc. Se você acredita que uma conta deve ter uma nota, com base em outras contas ou intervalos de tempo semelhantes, entre em contato e deixe [!DNL Marketo Measure] Eu sei._

## Configuração do layout da página ABM no [!DNL Salesforce] {#setting-up-abm-page-layout-in-salesforce}

Para começar a usar o PES, basta adicionar o campo do PES e a Lista relacionada aos layouts de página apropriados no [!DNL Salesforce].

1. Navegue até **[!UICONTROL Configuração]** > **[!UICONTROL Personalizar]** > **[!UICONTROL Contas]** > **[!UICONTROL Layout da página]**. Em seguida, selecione o layout de página que deseja editar.
1. Ir para [!UICONTROL Campos] e mova o campo &quot;Pontuação preditiva de engajamento&quot; para a seção Informações da conta.

   ![](assets/1.png)

1. Por fim, acesse [!UICONTROL Listas Relacionadas] e mova a Lista relacionada &quot;Clientes potenciais&quot; para o layout da página.

   ![](assets/2.png)

1. Em seguida, acesse **[!UICONTROL Configuração]** > **[!UICONTROL Personalizar]** > **[!UICONTROL Clientes potenciais]** > **[!UICONTROL Layout da página]** e selecione os layouts de página apropriados que deseja editar.
1. Clique em **[!UICONTROL Campos]** e adicione o [!UICONTROL Conta] onde você vê o ajuste na página.

   ![](assets/3.png)

Pronto!

