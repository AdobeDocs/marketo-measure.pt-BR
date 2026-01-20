---
unique-page-id: 42762749
description: Integração de [!DNL Marketo Engage] Atividades - [!DNL Marketo Measure]
title: Integração de atividades do [!DNL Marketo Engage]
exl-id: 463ad9b2-e1bd-49dd-8bf5-0da7b7132f05
feature: Integration
source-git-commit: 666812e8bf095170d611cd694b5d0ac5151d8fdd
workflow-type: tm+mt
source-wordcount: '1660'
ht-degree: 1%

---

# Integração de atividades do [!DNL Marketo Engage] {#marketo-engage-activities-integration}

Como parte da Integração geral do [!DNL Marketo Measure] e do [!DNL Marketo Engage], esse esforço de obter atividades do Marketo desempenha um papel enorme. Por meio das Atividades do Marketo, o sistema rastreia eventos como `Click Email`, `Change Score` ou `Change Status in Progression` - esses tipos de atividades podem ser analisados e definidos para selecionar um subconjunto qualificado para pontos de contato. Depois que os pontos de contato são criados nessas atividades, eles são rastreados na jornada de envolvimento e medidos junto com seus outros canais de marketing, como pesquisa paga ou marketing de parceiros.

## Requisitos {#requirements}

* Instância do Marketo de produção
* Instância de produção [!DNL Salesforce] ou [!DNL Microsoft Dynamics]
* Qualquer assinatura paga de [!DNL Marketo Measure]
* Sincronização de Pessoas da Marketo Habilitada ([!DNL Marketo Measure] Configurações)
* Programas Marketo Habilitados ([!DNL Marketo Measure] Configurações)
* Atividades do Marketo Habilitadas ([!DNL Marketo Measure] Configurações)

## Configuração {#setup}

1. Para começar a configurar as Atividades do Marketo, navegue até **Minha conta** > **Configurações** > **Atividades**.

   ![](assets/one-1.png)

   ![](assets/two-1.png)

   A primeira coisa necessária é selecionar a lista de Tipos de atividade para os quais você planeja criar regras. Não há necessidade de um número excessivo de tipos de atividades, mas é recomendável que você não sobrecarregue seus pontos de contato e dilua a importância de marcos significativos. Dito isso, talvez você não precise de mais de cinco tipos de atividades para rastrear os contratos relevantes.

1. Clique no menu suspenso em [!UICONTROL Selecionar tipos de atividades] para começar a escolher os vários tipos.

   ![](assets/three-1.png)

1. Quando todas as atividades necessárias forem selecionadas, você poderá vê-las preenchidas em sua [!UICONTROL Lista de Atividades Selecionadas] e em [!UICONTROL Definir Regras].

   ![](assets/four-1.png)

1. Para cada Tipo de atividade, você deve definir uma ou mais regras que determinam quais registros são qualificados para pontos de contato. Neste exemplo, adicionamos uma regra para o tipo de atividade &quot;Alterar pontuação&quot; para que o sistema crie um ponto de contato quando uma pessoa do Marketo atingir uma pontuação de 90 ou superior.

1. Primeiro, dependendo do Tipo de Atividade, talvez seja necessário configurar um Nome de Campanha [!DNL Marketo Measure] que possa ser usado posteriormente para mapeamento de canal. [!DNL Marketo Measure] Nomes de Campanha podem ser reutilizados em várias regras. Isso ajuda a ter nomes mais amplos que podem ser usados em uma única regra de canal. Nem todos os tipos de atividades contêm um programa Marketo, portanto, é necessário ter um nome nesta primeira etapa.

   Este é um exemplo de como seria essa etapa extra:

   ![](assets/five-1.png)

1. No exemplo &quot;Alterar pontuação&quot;, é necessário inserir um Nome de campanha, pois essas informações são extraídas do programa Marketo. Agora crie a expressão de regra. Seguindo este exemplo, selecione o campo &quot;[!UICONTROL Novo Valor]&quot; com um operador de &quot;[!UICONTROL é maior que]&quot; com um valor de 90.

   É possível expandir as regras e adicionar filtros ou critérios adicionais, adicionando instruções &quot;and&quot; ou &quot;or&quot; para restringir os resultados.

   ![](assets/six-1.png)

   ![](assets/seven-1.png)

1. Por fim, escolha o que usar como a Data do ponto de contato. Todos os campos de data ou hora disponíveis aparecem aqui no Marketo. A menos que você tenha campos de data personalizados, verá &quot;[!UICONTROL Data da atividade]&quot;.

   ![](assets/eight-1.png)

1. Certifique-se de clicar em **[!UICONTROL Salvar como rascunho]** ao longo do caminho para não perder as alterações.

   ![](assets/nine-1.png)

1. Navegue até a guia **[!UICONTROL Mapeamento de atributos]**.

   ![](assets/ten-1.png)

1. Para cada Tipo de atividade que você selecionou, você tem a opção de mapear atributos adicionais do Marketo para campos de Touchpoint para que possa visualizar e relatar esses valores em [!DNL Marketo Measure Discover] ou no CRM.

   Muitos dos campos foram mapeados automaticamente e não podem ser alterados para serem consistentes com nossas outras integrações. Consulte a seção Mapeamentos de campo abaixo para localizar esses valores. Para alguns tipos de atividade, o Marketo inclui atributos para uma página de aterrissagem, página de referenciador ou navegador que você pode mapear para um campo de Touchpoint. No exemplo abaixo, fizemos algumas sugestões adicionais que podem ser removidas.

1. Na coluna à esquerda, selecione o campo Buyer Touchpoint para o qual deseja mapear. Em seguida, escolha o Atributo do Marketo que deseja preencher no campo Buyer Touchpoint. Lembre-se de que estes são mapeamentos adicionais opcionais além daqueles que [!DNL Marketo Measure] já estabeleceu.

   Campos Mapeáveis:

   * Cidade
   * País
   * Região
   * Página de destino
   * Página de indicação
   * Página do formulário
   * Data do formulário
   * Plataforma
   * Navegador

   >[!NOTE]
   >
   >Campos de anúncios como Conteúdo do anúncio ou Palavra-chave não estão disponíveis nesta lista, pois são reservados para nossas integrações da plataforma de anúncios.

## Tipos de atividades {#activity-types}

Alguns tipos de atividades nos fornecem a ID do programa e o Nome do programa, portanto, é fácil mapeá-los para a ID da campanha e o Nome da campanha na Buyer Touchpoint. Para outros, não há associação de programa, portanto, parte da definição de regras requer que você crie um Nome de Campanha [!DNL Marketo Measure]. Abaixo estão as listas de cada categoria:

**Tipos de Atividade com a ID de Programa**

Enviar e-mail (6)\
Email entregue (7)\
Email rejeitado (8)\
Cancelar assinatura de email (9)\
Abrir e-mail (10)\
Clique em Email (11)\
Alterar valor dos dados (13)\
Alterar pontuação (22)\
Adicionar à lista (24)\
Alterar status na progressão (104)\
Adicionar ao ambiente (113)\
Alterar cadência de criação (115)

>[!NOTE]
>
>Dos Tipos de atividades em que esperamos uma ID de programa, se uma atividade for detectada sem um programa, [!DNL Marketo Measure] não aceitará isso como um ponto de contato elegível, pois não podemos ter valores nulos de campanha.

**Tipos de atividades sem ID de programa**

Clique em Link (3)\
Novo lead (12)\
Cliente Potencial de Sincronização com o SFDC (19)\
Converter lead (21)\
Alterar proprietário (23)\
Remover da lista (25)\
Atividade do SFDC (26)\
Email Devolvido Temporariamente (27)\
Excluir cliente em potencial do SFDC (29)\
Mesclar clientes em potencial (32)\
Adicionar à oportunidade (34)\
Remover da oportunidade (35)\
Atualizar oportunidade (36)\
Excluir cliente em potencial (37)\
Enviar alerta (38)\
Enviar email de vendas (39)\
Email de vendas em aberto (40)\
Clique em E-mail de vendas (41)\
Adicionar ao SFDC Campaign (42)\
Remover do SFDC Campaign (43)\
Alterar status no SFDC Campaign (44)\
Receber email de vendas (45)\
Campanha de solicitação (47)\
Email de vendas rejeitado (48)\
Alterar estágio de receita (101)\
Alterar estágio de receita manualmente (102)\
Alterar segmento (108)\
Chamar Webhook (110)\
Enviado para um e-mail amigo (111)\
Email de encaminhamento para um amigo recebido (112)\
Alterar trilha de sustentação (114)\
Enviar lead para o Marketo (145)\
Cliente Potencial de Sincronização com o Microsoft (300)\
Compartilhar conteúdo (400)
Diálogos envolvidos (158)
Documento que interagiu com (159)
Compromisso agendado do diálogo (160)
Meta da caixa de diálogo alcançada (161)
Atividade personalizada (xxx)

## Mapeamento de canal {#channel-mapping}

Para qualquer uma das regras de um Tipo de atividade com uma ID de programa, o Canal de programa do Marketo é determinado a partir do programa. Usamos o Canal do Programa para mapear para seus Canais Offline personalizados, portanto, você precisa verificar se seus canais estão configurados corretamente [conforme instruído aqui](/help/marketo-measure-and-marketo/marketo-measure-integrations-with-marketo/marketo-engage-programs-integration.md#channel-mapping){target="_blank"}.

E para qualquer uma das regras de um Tipo de atividade sem uma ID de programa, seu primeiro passo foi criar um Nome de campanha. Use este Nome de Campanha para configurar seus Canais Online personalizados [dispostos aqui](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md){target="_blank"}.

Se os Canais das suas Atividades do Marketo não estiverem configurados corretamente, é provável que seus novos pontos de contato estejam no canal &quot;Outros&quot;.

## Custos do programa {#program-costs}

Por meio da importação de dados dos Programas do Marketo, os custos são baixados automaticamente a partir dos Custos do período e os custos relatados no Marketo são distribuídos por todo o mês atribuído. Por exemplo, se US$ 1000 forem relatados para janeiro de 2021, US$ 1000 serão divididos em 31 dias. Os custos podem ser encontrados em [!DNL Marketo Measure Discover].

## Mapeamento de cookies {#cookie-mapping}

Como resultado da integração do [!DNL Marketo Measure] com o Marketo, a ID do Cookie [!DNL Marketo Measure] agora também está mapeada e sincronizada com o [!DNL Marketo Munchkin Id]. Isso ajuda a fechar a lacuna para atribuir o primeiro contato anônimo a uma sessão da Web, em vez de atribuir os toques FT e LC a uma atividade de Marketo. Imagine este cenário:

Mark clica em um anúncio do Facebook e chega em wayneenterprises.com onde ele obtém um cookie com [!DNL Marketo Measure] Id 123 e [!DNL Marketo Munchkin Id] 456. Não ocorre preenchimento de formulário.

A equipe de marketing da Wayne Enterprises envia um email aos clientes potenciais direcionados específicos, sendo um deles `mark@email.com`.

`mark@email.com` recebe o email, clica e chega em `wayneenterprises.com`. Isso se torna uma visita de `mark@email.com's` segundo a `wayneenterprise.com` com as mesmas Ids de cookie, mas não houve preenchimento de formulário, portanto, para [!DNL Marketo Measure], eles ainda são visitantes anônimos.

A equipe de marketing da Wayne Enterprises cria uma regra de Atividade do Marketo para gerar pontos de contato para um tipo de atividade &quot;Clique no email&quot;.

A implementação de hoje criaria um único ponto de contato FT e LC para `mark@email.com` da Atividade de Marketo do tipo de atividade &quot;Clique em Email&quot;.

Com esse aprimoramento no mapeamento de cookies, a FT voltava e era creditada ao anúncio do Facebook e a LC era creditada ao email.

>[!NOTE]
>
>Com o comportamento de mapeamento de cookies, você pode encontrar alguns pontos de contato LC que vêm de uma visita à Web. É possível que um cliente potencial tenha aparecido no Marketo sem nenhuma atividade associada e, em seguida, [!DNL Marketo Measure] tenha baixado o cliente potencial, correspondido aos cookies associados e rastreado até a sessão da Web mais recente, mesmo que não haja atividade de formulário que tenha criado o cliente potencial.

## Perguntas frequentes {#faq}

**Como saberei se devo criar uma regra de Programas Marketo ou uma regra de Atividades Marketo?**

A Integração de programas do [!DNL Marketo Engage] é uma maneira simples de gerar pontos de contato com base no fato de uma pessoa ser ou não membro de um programa. Se você estiver interessado em definir uma regra com base no momento em que uma Pessoa muda para um determinado status do Programa, a Integração de atividades do [!DNL Marketo Engage] será a configuração desejada, especificamente o tipo de atividade &quot;Alterar status na progressão&quot;, para que a Data do ponto de contato possa ser mapeada para a Data da atividade gerada pelo sistema.

**Por que o nome do meu Tipo de Touchpoint está truncado?**

O campo Tipo de Ponto de Contato foi criado no pacote [!DNL Marketo Measure] com 16 caracteres. Infelizmente, alterar o limite de caracteres do campo exigiria a substituição do campo existente e a criação de um. O valor do Tipo de ponto de contato é o Tipo de atividade, que também é definido no campo Medium.

**Por que meu Tipo de Atividade Personalizada não aparece na lista de atividades disponíveis?**

Mostramos apenas tipos de atividades personalizadas &quot;Aprovado&quot; e não Rascunho ou Aprovado com Rascunho.

**Como determino para quais Tipos de Atividade desejo gerar um ponto de contato?**

Embora não haja limite para o número de Tipos de atividade que você pode criar, geralmente recomendamos não mais do que cinco tipos de atividade. Leva tempo para determinar quais atividades de marketing são relevantes o suficiente para fazer parte da jornada de ponto de contato. Por exemplo, &quot;Cancelar inscrição do email&quot; pode não ser um ponto de contato significativo para rastrear, mas &quot;Clicar no email&quot; com filtros adicionais pode ser um bom ponto de contato. Isso varia de acordo com cada organização e equipe, portanto, sugerimos que você trabalhe com sua equipe para discutir a melhor abordagem aqui.

**Por que meu Nome de Navegador está cortado?**

O Nome do Navegador [!DNL Marketo Measure] tem um limite rígido de 20 caracteres, embora o valor do Agente do Usuário que recebemos do Marketo tenda a ser uma sequência de caracteres mais longa.

BrowserInfo.Name\
BrowserInfo.Version\
PlatformInfo.Name\
PlatformInfo.Version
