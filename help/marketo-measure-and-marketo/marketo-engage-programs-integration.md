---
description: Integração de Programas do [!DNL Marketo Engage] - [!DNL Marketo Measure]
title: Integração de programas do [!DNL Marketo Engage]
exl-id: c26087e3-d821-4fe7-bacd-eeaa1530a4b0
feature: Integration
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '1261'
ht-degree: 1%

---

# Integração de programas do [!DNL Marketo Engage] {#marketo-engage-programs-integration}

Por meio da integração do [!DNL Marketo Measure] com os Programas do [!DNL Marketo Engage], nossos clientes podem começar a criar pontos de contato para o rastreamento de atribuição a partir das Associações ao Programa Marketo. Esse recurso permite que os profissionais de marketing iniciem o rastreamento de associações a programas de email ou de engajamento que, de outra forma, não seriam vistos pelo javascript [!DNL Marketo Measure] e devem ser medidos na jornada de atribuição.

## Disponibilidade {#availability}

Todos os níveis.

## Requisitos {#requirements}

* Instância do Marketo de produção
* Instância de produção do Salesforce ou Microsoft Dynamics
* Qualquer assinatura paga de [!DNL Marketo Measure]
* Sincronização de Pessoas da Marketo Habilitada ([!DNL Marketo Measure] Configurações)
* Programas Marketo Habilitados ([!DNL Marketo Measure] Configurações)

## Configuração {#setup}

**Regras**

1. Para começar a configurar regras em Programas do Marketo, navegue até **[!UICONTROL Minha Conta]** > **[!UICONTROL Configurações]** > **[!UICONTROL Programas]**. Clique no ícone **+** para começar a criar sua primeira regra.

   ![](assets/one-one-2.png)

   ![](assets/5a-5a-1.png)

1. Você pode, opcionalmente, definir um nome para a regra se isso ajudar a rastreá-los. primeiro, selecione o campo para definir a regra na lista dos campos Program e Program Membership (Programa). Continue criando a regra selecionando o operador e o valor esperado a serem verificados.

   ![](assets/5b-5b-1.png)

1. Adicione outra instrução na mesma caixa para configurar um critério &quot;and&quot; na regra ou clique no ícone + fora da caixa para configurar uma instrução &quot;or&quot;.

   ![](assets/bizible-discover-1.png)

1. Escolha qual campo de data ou data/hora deve ser usado para mapear para a Data do ponto de contato. Para ver a lista de valores disponíveis no Marketo, insira uma chave `{` e exibiremos os campos disponíveis.

   ![](assets/five-five-2.png)

   >[!NOTE]
   >
   >Se a regra desejar capturar a Data da atividade ou a data em que um membro do programa atingiu um status específico, você deverá utilizar a Integração de atividades do [!DNL Marketo Engage] e configurar uma regra para o tipo de atividade &quot;Alterar status na progressão&quot;.

   ![](assets/bizible-discover-2.png)

A regra concluída deve ser semelhante a:

## Teste {#test}

Depois de criar algumas regras, você pode testá-las para verificar se a sua instrução corresponde aos seus programas.

1. Para executar um teste, clique no botão **[!UICONTROL TESTE]**, conforme mostrado abaixo.

   ![](assets/seven-seven-2.png)

1. Um modal será exibido onde você pode inserir a ID do programa no Marketo.

   ![](assets/eight-eight-1.png)

   Depois de inserir a ID e clicar no botão [!UICONTROL Testar], nosso mecanismo de regras passará por cada regra e determinará se o Programa se encaixa ou não em qualquer uma das regras. No exemplo abaixo, você pode ver que o Programa 1002, chamado Ebook [!DNL Marketo Measure], tem 5 Membros de Programa e está qualificado devido à regra exibida.

   As regras são executadas em um tamanho de amostra de 5000 membros. Se o seu programa contiver mais de 5000 membros, é possível que não verifiquemos a compatibilidade de todos os membros. Essa ferramenta simplesmente serve como uma maneira de verificar se as regras são construídas corretamente.

   ![](assets/nine-nine-2.png)

   Você pode clicar na Contagem de membros para ver uma lista de IDs de pessoas do Marketo elegíveis dentro do programa.

   ![](assets/eight-eight-2.png)

## Mapeamento de canal {#channel-mapping}

Na lista de Canais de programa do Marketo, será possível mapear os valores para os [!DNL Marketo Measure] canais de marketing personalizados criados em Configurações. Todos os pontos de contato gerados por esses programas herdarão os nomes dos canais e subcanais selecionados aqui.

1. Comece navegando até **[!UICONTROL Minha Conta]** > **[!UICONTROL Configurações]** > **[!UICONTROL Canais Offline]**.

1. Na parte superior, você terá a opção de mapear para seus Tipos de campanha de CRM e, abaixo, verá as opções para os Canais de programa do Marketo.

1. Primeiro, selecione o Canal que deve ser mapeado para o valor e, como opção, selecione o Subcanal. Quando terminar, clique em **[!UICONTROL Salvar]** na parte inferior.

   ![](assets/eleven-eleven-1.png)

## Custos do programa {#program-costs}

Por meio da importação de dados dos Programas do Marketo, os custos são baixados automaticamente a partir dos Custos do período e o custo relatado no Marketo é distribuído ao longo do mês atribuído. Por exemplo, se US$ 1000 forem relatados para janeiro de 2021, US$ 1000 serão divididos em 31 dias. Os custos podem ser encontrados em [!DNL Marketo Measure Discover].

## Como funciona {#how-it-works}

**Mapeamentos de campos**

<table> 
 <colgroup> 
  <col> 
  <col> 
 </colgroup> 
 <tbody> 
  <tr> 
   <th>biz_ad_campaigns</th> 
   <th>Marketo</th> 
  </tr> 
  <tr> 
   <td>ID</td> 
   <td>ID</td> 
  </tr> 
  <tr> 
   <td>IS_DELETED</td> 
   <td>(verifique se o programa ainda existe por meio da API)</td> 
  </tr> 
  <tr> 
   <td><p>NAME</p></td> 
   <td>name</td> 
  </tr> 
 </tbody> 
</table>

| biz_campaign_member | Marketo |
|---|---|
| ID | &quot;MarketoProgramMembership&quot;_ProgramId_Lead Id |
| MODIFIED_DATE | updatedAt |
| CREATED_DATE | dataAssociação |
| LEAD_ID | ID (associação à lista) |
| LEAD_EMAIL | Email (associação à lista) |
| STATUS | progressionStatus |
| HAS_RESPONDED | reachedStatus |
| CAMPAIGN_NAME | programName |
| CAMPAIGN_ID | programId |
| CAMPAIGN_TYPE | channel |

## Mapeamento de cookies {#cookie-mapping}

Como resultado da integração do [!DNL Marketo Measure] com o Marketo, a ID do Cookie [!DNL Marketo Measure] agora também está mapeada e sincronizada com o [!DNL Marketo Munchkin Id]. Isso ajuda a fechar a lacuna para atribuir o primeiro contato anônimo a uma sessão da Web, em vez de atribuir os toques FT e LC a uma atividade de Marketo. Imagine este cenário:

Mark clica em um anúncio [!DNL Facebook] e chega em wayneenterprises.com onde recebe um cookie com [!DNL Marketo Measure] Id 123 e [!DNL Marketo Munchkin Id] 456. Não ocorre preenchimento de formulário.

A equipe de marketing da Wayne Enterprises envia um email aos clientes potenciais direcionados específicos, sendo um deles `mark@email.com`.

`mark@email.com` recebe o email, clica e chega em wayneenterprises.com. Isso se torna uma visita de `mark@email.com's` segundo a `wayneenterprise.com` com as mesmas Ids de cookie, mas não houve preenchimento de formulário, portanto, para [!DNL Marketo Measure], eles ainda são visitantes anônimos.

A equipe de marketing da Wayne Enterprises cria uma regra de Atividade do Marketo para gerar pontos de contato para um tipo de atividade &quot;Clique no email&quot;.

A implementação de hoje criaria um único ponto de contato FT e LC para `mark@email.com` da Atividade de Marketo do tipo de atividade &quot;Clique em Email&quot;.

Com esse aprimoramento no mapeamento de cookies, a FT voltaria e seria creditada no anúncio [!DNL Facebook] e a LC seria creditada no Email.

>[!NOTE]
>
>Com o comportamento de mapeamento de cookies, você pode encontrar alguns pontos de contato LC que vêm de uma visita à Web. É possível que um cliente potencial tenha aparecido no Marketo sem nenhuma atividade associada e, em seguida, [!DNL Marketo Measure] tenha baixado o cliente potencial, correspondido aos cookies associados e rastreado até a sessão da Web mais recente, mesmo que não haja atividade de formulário que tenha criado o cliente potencial.

## Perguntas frequentes {#faq}

**Como defino a Data do Ponto de Contato como a data de progressão ou a data em que ocorreu a alteração de status para o Membro do meu Programa?**

Se a regra desejar capturar a Data da atividade ou a data em que um membro do programa atingiu um status específico, você deverá utilizar a Integração de atividades do [!DNL Marketo Engage] e configurar uma regra para o tipo de atividade &quot;Alterar status na progressão&quot;. Caso contrário, a Integração de programas do [!DNL Marketo Engage] disponibilizará somente a Data de associação, que é a primeira data que trouxe a pessoa do Marketo para o programa, mesmo que haja vários status.

**Posso obter uma lista de opções de datas para a Data do Ponto de Contato?**

Para acionar o preenchimento automático, comece inserindo uma chave `{` no campo de texto. Em seguida, os campos disponíveis serão exibidos.

**Se eu criar regras do Programa Marketo e também tiver regras do CRM Campaign, elas serão contadas duas vezes?**

Depende da definição da regra, mas possivelmente sim. avalie seu conjunto de regras para que não tenha regras que cubram um Programa e uma Campanha, pois não removeremos a duplicação ou detectaremos associações semelhantes. Uma solução possível é copiar as regras do Campaign para os Programas se desejar que o Marketo seja a única fonte da verdade e, em seguida, remover as regras do Campaign. Outra opção é adicionar os critérios &quot;CreatedOn&quot; ou &quot;CreatedDate&quot; às regras, para que as regras anteriores a uma determinada data usem as regras de Campanha e as regras após uma determinada data usem as regras do Programa. Há muitas soluções alternativas disponíveis, mas será necessário planejamento e coordenação.

**Os Campos Personalizados de Associação a Programas da Marketo estão disponíveis para definição?**

Por enquanto, devido a limitações técnicas, não podemos oferecer suporte aos Campos personalizados de associação de programa. Quando esses campos estiverem disponíveis por meio de APIs adicionais do Marketo, eles serão expostos a nós e estarão visíveis para uso.

**Como saber se devo usar Programas ou Atividades?**

A Integração de programas do [!DNL Marketo Engage] é uma maneira simples de gerar pontos de contato com base no fato de uma pessoa ser ou não membro de um programa. Se você estiver interessado em definir uma regra com base no momento em que uma Pessoa muda para um status de Programa específico, a Integração de atividades do [!DNL Marketo Engage] será a configuração desejada, especificamente o tipo de atividade &quot;Alterar status na progressão&quot;.
