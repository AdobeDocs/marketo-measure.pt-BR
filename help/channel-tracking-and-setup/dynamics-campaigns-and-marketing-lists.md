---
description: Diretrizes de Campanhas dinâmicas e Listas de marketing para usuários do Marketo Measure
title: Campanhas do Dynamics e listas de marketing
exl-id: 7b3d4032-5edf-489d-b86b-1e2a5755b258
feature: Microsoft Dynamics
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '936'
ht-degree: 3%

---

# Campanhas do Dynamics e listas de marketing {#dynamics-campaigns-and-marketing-lists}

>[!NOTE]
>
>Este artigo aborda um processo desatualizado. Recomendamos que os usuários usem o [processo novo e aprimorado do aplicativo](/help/channel-tracking-and-setup/custom-campaign-sync.md){target="_blank"}.

## Campanhas {#campaigns}

As Campanhas do Dynamics são boas para rastrear atividades de marketing offline e incluí-las na jornada omnicanal. As campanhas devem estar relacionadas a clientes potenciais ou contatos e podem ser acumuladas na campanha por meio de Respostas da campanha ou Listas de marketing.

## Respostas da campanha {#campaign-responses}

Quando clientes em potencial ou contatos são adicionados diretamente a uma campanha, eles são inseridos como um registro de Resposta de campanha.

![Quando Clientes Potenciais ou Contatos são adicionados diretamente a uma Campanha, eles são inseridos](assets/dynamics-lists-1.png)

## Ativar Touchpoints {#enable-touchpoints}

Para incluir esses registros na jornada do ponto de contato, há algumas opções para os tipos de Respostas da campanha a serem sincronizadas. No registro do Campaign, deve haver um campo personalizado da solução instalada rotulado como &quot;[!UICONTROL Habilitar Pontos de Contato do Comprador].&quot; Caso contrário, o campo precisará ser adicionado por meio do Editor de formulários.

![Para incluir esses registros na jornada do ponto de contato, há alguns](assets/dynamics-lists-10.png)

É possível optar por incluir todos os registros que têm uma Resposta de Campanha na Campanha, ou apenas aqueles com uma Resposta de &quot;Interessado&quot;, ou, por padrão, não é possível incluir as Respostas de Campanha. Você pode deixar o campo em branco ou optar explicitamente por excluí-lo.

[!DNL Marketo Measure] não dá suporte a valores de Resposta personalizados.

![O Marketo Measure não oferece suporte a valores de Resposta personalizados.](assets/dynamics-lists-2.png)

Estes são os valores de resposta de estoque para a Resposta de campanha:

![Estes são os valores de resposta de estoque para a Resposta de Campanha:](assets/dynamics-lists-3.png)

Com base em sua seleção, esses registros agora estão qualificados para pontos de contato na jornada de lead, contato ou oportunidade. Se eles se qualificarem, um ponto de contato &quot;Campanha dinâmica&quot; aparecerá na jornada.

Um motivo pelo qual uma resposta do Campaign pode não ser exibida é porque uma atividade de Primeiro contato e/ou de Toque de criação de lead já foi registrada para o lead/contato e o recurso &quot;PostLC&quot; está desativado ou atingiu seu número máximo de pontos de contato.

## Data do touchpoint {#touchpoint-date}

Normalmente, a data do ponto de contato de uma campanha é a data em que a resposta da campanha foi adicionada à campanha. Ele poderá ser substituído se o campo personalizado da solução instalada rotulado como &quot;Data do Buyer Touchpoint&quot; for preenchido. Caso contrário, o campo precisará ser adicionado por meio do Editor de formulários.

Um exemplo comum de uso desse campo é para eventos em que uma lista de verificações de medalha de um evento é adicionada ao CRM dias após o evento ter ocorrido, para que o usuário possa realmente alterar a Data do Buyer Touchpoint de volta para quando o evento ocorreu.

![Um exemplo comum de uso deste campo é para eventos em que uma lista](assets/dynamics-lists-4.png)

## Listas de marketing {#marketing-lists}

Listas de marketing são outra maneira de incluir clientes potenciais ou contatos em uma jornada de marketing. As Listas de marketing são exclusivas para um grupo de Clientes potenciais ou Contatos, o que significa que o usuário precisa selecionar se sua lista é um conjunto de Clientes potenciais ou um conjunto de Contatos.

[!DNL Marketo Measure] dá suporte somente a Listas de Marketing Estáticas. Não oferecemos suporte a Listas de marketing dinâmicas porque nosso processamento exige que verifiquemos a Data de modificação de um registro, mas como uma Lista dinâmica está mudando com frequência, não há Data de modificação para [!DNL Marketo Measure] em relação à qual verificar. Isso exigiria um download constante do conjunto de dados completo durante o dia.

![O Marketo Measure só oferece suporte a Listas de Marketing Estáticas. Não oferecemos suporte a &#x200B;](assets/dynamics-lists-5.png)

A captura de tela acima é uma Lista de marketing para clientes potenciais. As Listas de marketing estão associadas a Campanhas e podem ser associadas a várias Campanhas. A menos que você crie apenas uma Lista de marketing para uma campanha, o [!DNL Marketo Measure] não recomenda que os clientes usem Listas de marketing para acompanhar suas campanhas. É improvável que a mesma lista exata de clientes potenciais/contatos seja qualificada para pontos de contato em várias campanhas.

## Ativar Touchpoints {#enable-touchpoints-1}

Para habilitar uma Lista de Marketing para pontos de contato, há uma configuração separada no registro da Campanha rotulada &quot;[!UICONTROL Sincronizar Listas de Marketing]&quot;, que é uma simples opção de sim/não. Caso contrário, o campo precisará ser adicionado por meio do Editor de formulários. Enquanto estiver no registro da campanha, você poderá ver quais listas de marketing estão relacionadas à campanha para que você saiba quantas listas você está ativando.

![Para habilitar uma Lista de Marketing para pontos de contato, há uma configuração separada](assets/legacy-processes-10.png)

## Data do touchpoint {#touchpoint-date-1}

A Data do ponto de contato para uma Lista de marketing normalmente é a data de criação do ListMember, portanto, a data em que o lead ou contato foi adicionado à Lista de marketing. Ele poderá ser substituído se o campo personalizado da solução instalada rotulado como &quot;Data do Buyer Touchpoint&quot; for preenchido. Caso contrário, o campo precisará ser adicionado por meio do Editor de formulários.

![A Data do Ponto de Contato para uma Lista de Marketing normalmente é o ListMember criado](assets/dynamics-lists-6.png)

## Mapeamento de canal {#channel-mapping}

As Campanhas do Dynamics são classificadas em seus Canais de marketing personalizados usando o campo Tipo de campanha. Elas podem ser alteradas no menu Personalizações do Dynamics.

Os valores no menu Tipo de campanha são puxados para o Aplicativo [!DNL Marketo Measure]. **[!UICONTROL Minha Conta]** > **[!UICONTROL Configurações]** > **[!UICONTROL Canais Offline]**.

Para cada Tipo de campanha, ele pode ser mapeado para uma combinação de Canal e Subcanal para que cada ponto de contato derivado da campanha tenha o Canal e Subcanal mapeados corretos.

![Para cada Tipo de Campanha, ele pode ser mapeado para um Canal e](assets/dynamics-lists-7.png)

![Para cada Tipo de Campanha, ele pode ser mapeado para um Canal e](assets/dynamics-lists-8.png)

## Data de sincronização da campanha {#campaign-sync-date}

Isso não está disponível para clientes do Dynamics

## Perguntas frequentes {#faq}

**É possível habilitar pontos de contato em Listas de Marketing ou apenas campanhas no Dynamics?**

Você pode habilitar uma Lista de marketing, mas ela precisa estar relacionada a uma Campanha, pois a opção para sincronizar uma Lista de marketing reside na Campanha.

**É possível usar as Respostas de Campanha E as Listas de Marketing em uma Campanha?**

Sim.
