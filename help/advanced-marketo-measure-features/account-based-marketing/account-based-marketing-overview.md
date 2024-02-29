---
unique-page-id: 18874730
description: Saiba mais sobre a Account-Based Marketing (ABM) e como o Adobe Marketo Measure ajuda as equipes de marketing e vendas a executarem estratégias ABM bem-sucedidas.
title: Visão geral do marketing baseado em conta
exl-id: 2ead69c0-66da-439d-a0ba-25c73c4b308c
feature: Account-based Marketing
source-git-commit: 741ab20845de2f3bcde589291d7446a5b4f877d8
workflow-type: tm+mt
source-wordcount: '792'
ht-degree: 53%

---

# Visão geral do marketing baseado em conta {#account-based-marketing-overview}

As seções que se seguem apresentam uma breve panorâmica da gestão por [!DNL Marketo Measure] recurso ABM e como adicioná-lo ao seu [!DNL Salesforce] layout de página. Para ler mais sobre a ABM, consulte Adobe [Blog ABM](https://business.adobe.com/blog/basics/account-based-marketing){target="_blank"}.

Para obter instruções detalhadas sobre como configurar o ABM no [!DNL Salesforce] instância, vá para [Configuração do layout da página ABM no Salesforce](/help/advanced-marketo-measure-features/account-based-marketing/account-based-marketing-overview.md#setting-up-abm-page-layout-in-salesforce){target="_blank"}.

## O que é o ABM {#what-is-abm}

O marketing baseado em conta, ABM, é uma estratégia de marketing na qual você direciona e vende para empresas e contas como um todo, não apenas como indivíduos. O [!DNL Marketo Measure] ajuda as equipes de marketing e vendas na execução de estratégias de ABM bem-sucedidas com sua funcionalidade de mapeamento de lead para conta e a Pontuação preditiva de engajamento.

Para que nosso modelo de Marketing baseado em conta comece a preencher em seu CRM, [!DNL Marketo Measure] precisa que os seguintes critérios sejam atendidos:

* Seu CRM precisa de pelo menos 25 contas que tenham pelo menos uma Oportunidade Conquistada Fechada para medir melhor as semelhanças de uma Conta/Oportunidade &quot;bem-sucedida&quot; para sua empresa.
* Do outro lado da moeda, seu CRM precisa de pelo menos 25 contas sem nenhuma Oportunidade Ganha Fechada (todos os opps devem estar em uma categoria de estágio &quot;Aberto&quot; ou em uma categoria &quot;Perdido Fechado&quot;) - isso nos ajuda a medir o que faz com que uma Conta de nível mais baixo em sua organização.

>[!NOTE]
>
>As contas &quot;ruins&quot; acima devem estar abertas por pelo menos 12 meses sem acumular um Opp Won fechado; essa é a diretriz básica para determinar se um Opp se tornou obsoleto para os fins do modelo.

## Mapeamento de lead para conta {#lead-to-account-mapping}

O mapeamento de lead para conta é uma parte essencial de uma abordagem de ABM eficaz. Com o mapeamento de lead para conta, os prospectos, ou leads, são agrupados na mesma conta da empresa à medida que se engajam com sua marca. Isso permite direcionar e vender para indivíduos da mesma empresa de maneira consistente. Não há [!DNL Salesforce] configuração necessária para começar a se beneficiar desse recurso. O mapeamento de lead para conta do [!DNL Marketo Measure] possui cinco métodos diferentes de correspondência:

* Site do lead para o site da conta
* Domínio de email do lead para o domínio do site da conta
* Nome da empresa do lead para o nome da conta
* Empresa do lead para o domínio do site da conta
* Correspondência do domínio no endereço de email do lead com a conta pelo endereço de email do contato

>[!NOTE]
>
>Cada lead tenta corresponder-se a uma conta na ordem preferencial dos métodos acima. Depois que uma correspondência é feita, a AccountId é definida imediatamente no lead e não será correspondida usando outro método. Se o lead já possuir uma AccountId válida, será ignorado.

## Pontuação preditiva de engajamento {#predictive-engagement-score}

A Pontuação preditiva de engajamento do [!DNL Marketo Measure], ou PES, é um valor dinâmico que ilustra o engajamento de uma conta específica com as suas iniciativas de marketing. Essa pontuação é útil na segmentação de contas para direcionamento. É uma ferramenta valiosa para identificar contas a serem direcionadas de forma mais eficaz e eficiente.

Há muitos componentes que fazem parte do algoritmo que calcula a PES. A recenticidade e a idade têm uma grande influência nas alterações de pontuação, juntamente com a última atividade de ponto de contato ou exibições de página. A adição de novos contatos a uma conta também afeta a PES. Esta é uma lista de algumas entradas da PES:

* Número total de visualizações de página da conta
* Número médio de visualizações de página
* Número médio de pessoas na conta
* Idade da última visualização de página
* Idade média das visualizações de página
* Número de pessoas na conta
* Páginas importantes específicas e se houve uma visita nos últimos 30/60/90 dias
* Se a conta possui uma negociação fechada perdida/ganha
* Qual a probabilidade de ser fechado perdido/conquistado

>[!NOTE]
>
>Você pode notar uma nota “N/D“ ou “-” (o símbolo de traço) na Pontuação preditiva de engajamento de algumas contas.

_Uma nota &quot;N/A&quot; simplesmente significa que não há dados suficientes sobre essa conta para o modelo gerar uma nota verdadeira - com mais dados, uma nota é dada eventualmente._
_Um grau de &quot;-&quot; (o símbolo de traço) significa que essa conta ainda precisa ser processada pelo processo ABM, devido a restrições de tempo, processos ocasionalmente perdidos e assim por diante. Se você achar que uma conta deve ter uma nota, baseada em outras contas ou períodos semelhantes, entre em contato e deixe [!DNL Marketo Measure] Eu sei._

## Configuração do layout da página de ABM no [!DNL Salesforce] {#setting-up-abm-page-layout-in-salesforce}

Para começar a usar o PES, você deve adicionar o campo PES e a Lista relacionada aos layouts de página apropriados em [!DNL Salesforce].

1. Navegue até **[!UICONTROL Configuração]** > **[!UICONTROL Personalizar]** > **[!UICONTROL Contas]** > **[!UICONTROL Layout da página]**. Em seguida, selecione o layout de página que deseja editar.
1. Vá para [!UICONTROL Campos] e mova o campo “Pontuação preditiva de engajamento” para a seção Informações da conta.

   ![](assets/1.png)

1. Por fim, acesse [!UICONTROL Listas Relacionadas] e mova a Lista relacionada “Leads” para o layout da página.

   ![](assets/2.png)

1. Em seguida, acesse **[!UICONTROL Configuração]** > **[!UICONTROL Personalizar]** > **[!UICONTROL Leads]** > **[!UICONTROL Layout da página]** e selecione os layouts de página apropriados que deseja editar.
1. Clique em **[!UICONTROL Campos]** e adicione o campo [!UICONTROL Conta] onde achar mais adequado na página.

   ![](assets/3.png)

Pronto!

