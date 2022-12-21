---
unique-page-id: 18874610
description: Campanhas dinâmicas e listas de marketing - [!DNL Marketo Measure] - Documentação do produto
title: Campanhas dinâmicas e listas de marketing
exl-id: 7b3d4032-5edf-489d-b86b-1e2a5755b258
source-git-commit: 54337a0a65b79d80ebeae6531f5e92f4f48721a7
workflow-type: tm+mt
source-wordcount: '836'
ht-degree: 0%

---

# Campanhas dinâmicas e listas de marketing {#dynamics-campaigns-and-marketing-lists}

>[!NOTE]
>
>Você pode ver instruções especificando &quot;[!DNL Marketo Measure]&quot; em nossa documentação, mas ainda veja &quot;Bizible&quot; em seu CRM. Estamos trabalhando para atualizá-la e a reformulação da marca será refletida em seu CRM em breve.

## Campanhas {#campaigns}

As Campanhas dinâmicas são boas para rastrear a atividade de marketing offline e incluí-las na jornada omnicanal. As campanhas devem estar relacionadas a Clientes potenciais ou Contatos e podem ser acumuladas para a campanha por meio de Respostas de campanha ou Listas de marketing.

## Respostas da campanha {#campaign-responses}

Quando Leads ou Contatos são adicionados a uma Campanha diretamente, eles são inseridos como um registro de Resposta da Campanha.

![](assets/1.png)

## Ativar pontos de contato {#enable-touchpoints}

Para incluir esses registros na jornada do ponto de contato, há algumas opções para os tipos de Respostas da campanha a serem sincronizadas. No registro do Campaign, deve haver um campo personalizado da solução instalada rotulado como &quot;[!UICONTROL Ativar pontos de contato do comprador].&quot; Caso contrário, o campo precisará ser adicionado por meio do Editor de formulários.

![](assets/2.png)

Você pode optar por incluir todos os registros que têm uma Resposta de Campanha na Campanha, ou apenas aqueles com uma Resposta de &quot;Interessado&quot;, ou por padrão, não é possível incluir as Respostas de Campanha. Você pode deixar o campo em branco ou optar explicitamente por excluí-lo.

[!DNL Marketo Measure] não suporta valores de resposta personalizados.

![](assets/3.png)

Estes são os valores de resposta de estoque para a Resposta da Campanha:

![](assets/4.png)

Com base na sua seleção, esses registros agora estão qualificados para pontos de contato na jornada de lead, contato ou oportunidade. Se se qualificarem, um ponto de contato &quot;Campanha dinâmica&quot; será exibido na jornada.

Um motivo para a resposta da campanha não ser exibida é porque uma atividade de Primeiro contato e/ou de Criação de lead Touch já foi registrada para o Lead/Contato e o recurso &quot;PostLC&quot; está desativado ou atingiu o número máximo de pontos de contato.

## Data do Touchpoint {#touchpoint-date}

A Data do ponto de contato de uma campanha normalmente é a data em que a Resposta da campanha foi adicionada à campanha. Ele pode ser substituído se o campo personalizado da solução instalada chamado &quot;Data do ponto de contato do comprador&quot; estiver preenchido. Caso contrário, o campo precisará ser adicionado por meio do Editor de formulários.

Um exemplo comum de uso desse campo é para eventos em que uma lista de verificações de selo de um evento é adicionada ao CRM dias após a ocorrência do evento, para que o usuário possa realmente alterar a Data do ponto de contato do comprador de volta para quando o evento ocorreu.

![](assets/5.png)

## Listas de marketing {#marketing-lists}

Listas de marketing são outra maneira de incluir Leads ou Contatos em uma jornada de marketing. As Listas de marketing são exclusivas para um grupo de Clientes Potenciais ou Contatos, o que significa que o usuário precisa selecionar se sua lista é um conjunto de Clientes Potenciais ou um conjunto de Contatos.

[!DNL Marketo Measure] suporta apenas Listas de marketing estáticas. Não oferecemos suporte a Listas de Marketing Dinâmicas porque nosso processamento requer que a Data de Modificação de um registro seja verificada, mas como uma Lista Dinâmica é alterada com frequência, não há Data de Modificação para [!DNL Marketo Measure] para verificar. Isso exigiria um download constante do conjunto de dados completo durante o dia.

![](assets/6.png)

A captura de tela acima é uma Lista de marketing para leads. Listas de marketing são associadas a Campanhas e podem ser associadas a várias Campanhas. A menos que você crie apenas uma Lista de marketing para uma campanha, [!DNL Marketo Measure] O não recomenda que os clientes usem Listas de marketing para rastrear suas Campanhas. É improvável que a mesma lista exata de Clientes potenciais/Contatos seja qualificada para pontos de contato em várias campanhas.

## Ativar pontos de contato {#enable-touchpoints-1}

Para habilitar uma Lista de marketing para pontos de contato, há uma configuração separada no registro da Campanha rotulada como &quot;[!UICONTROL Sincronizar Listas de Marketing],&quot; que é um switch simples sim/não. Caso contrário, o campo precisará ser adicionado por meio do Editor de formulários. Enquanto estiver no registro da Campanha, você pode ver quais Listas de marketing estão relacionadas à Campanha para saber quantas Listas você está ativando.

![](assets/7.png)

## Data do Touchpoint {#touchpoint-date-1}

A Data do ponto de contato para uma Lista de marketing é normalmente a data de criação do ListMember, de modo que a data em que o Cliente Potencial ou Contato foi adicionado à Lista de marketing. Ele pode ser substituído se o campo personalizado da solução instalada chamado &quot;Data do ponto de contato do comprador&quot; estiver preenchido. Caso contrário, o campo precisará ser adicionado por meio do Editor de formulários.

![](assets/8.png)

## Mapeamento de canal {#channel-mapping}

As Campanhas dinâmicas são classificadas nos Canais de marketing personalizados usando o campo Tipo de campanha . Elas podem ser alteradas no menu Personalizações dinâmicas .

Os valores no menu Tipo de campanha são extraídos para o [!DNL Marketo Measure] Aplicativo. **[!UICONTROL Minha conta]** > **[!UICONTROL Configurações]** > **[!UICONTROL Canais offline]**.

Para cada Tipo de campanha, ela pode ser mapeada para uma combinação de Canal e Subcanal para que cada ponto de contato que deriva da campanha tenha o Canal e o Subcanal mapeados corretos.

![](assets/9.png)

![](assets/10.png)

## Data de sincronização da campanha {#campaign-sync-date}

Isso não está disponível para clientes do Dynamics

## Perguntas frequentes {#faq}

**Podemos habilitar pontos de contato em Listas de marketing ou somente campanhas no Dynamics?**

Você pode ativar uma Lista de marketing, mas ela precisa estar relacionada a uma Campanha porque a opção para sincronizar uma Lista de marketing está ativa na Campanha.

**Podemos usar Respostas da campanha E Listas de marketing em uma campanha?**

Sim.
