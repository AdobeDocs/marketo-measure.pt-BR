---
unique-page-id: 18874795
description: Adicionando [!DNL Marketo Measure] Script - [!DNL Marketo Measure]
title: Adição do  [!DNL Marketo Measure]  Script
exl-id: f8773037-04d7-4308-ba04-440e9b990d92
feature: Tracking
source-git-commit: 9e672d0c568ee0b889461bb8ba6fc6333edf31ce
workflow-type: tm+mt
source-wordcount: '1282'
ht-degree: 57%

---

# Adição do [!DNL Marketo Measure] Script {#adding-marketo-measure-script}

O JavaScript do [!DNL Marketo Measure] que você gostaria de acompanhar pelo [!DNL Marketo Measure] deve ser adicionado a todas as propriedades da web assim que possível. Depois que o JavaScript for implantado, [!DNL Marketo Measure] O começa a coletar os dados digitais. Este artigo descreve os métodos de implantação [!DNL Marketo Measure] JavaScript e considerações adicionais.

>[!NOTE]
>
>Verifique se você [reivindicou todos os domínios apropriados no  [!DNL Adobe Admin Console]](/help/marketo-measure-and-adobe/domain-management.md){target="_blank"}, além de implantar o JavaScript do [!DNL Marketo Measure].

Ao começar com o [!DNL Marketo Measure], há duas maneiras de adicionar o JavaScript do [!DNL Marketo Measure] para o seu site:

* Codificação rígida
* Sistemas de gerenciamento de Tags

## Codificação rígida {#hard-coding}

Como prática recomendada, sugerimos a codificação rígida do JavaScript do [!DNL Marketo Measure] nas propriedades da Web. Para codificar o script, você precisa colocá-lo antes de fechar `</head>` em todas as páginas do site.

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

A codificação rígida do JavaScript no `<head>` de suas páginas garante a [!DNL Marketo Measure] o script é carregado primeiro e as informações de referência não são perdidas. O JavaScript do [!DNL Marketo Measure] é carregado de forma assíncrona. Se estiver usando codificação rígida, o JavaScript deve ser adicionado manualmente à Automação de marketing.

>[!TIP]
>
>Saiba como verificar se o script está [Compatível com o GDPR](/help/security-and-compliance/compliance-related-resources/ensuring-consent-for-gdpr-in-marketo-measure-js.md){target="_blank"}.

## Sistemas de gerenciamento de Tags {#tag-management-systems}

Se adicionar [!DNL Marketo Measure] JavaScript via codificação rígida não for possível, outra opção é adicionar o [!DNL Marketo Measure] usando um Sistema Tag Management, como [!DNL Google Tag Manager] (GTM) ou Tealium.

Uso de sistemas de gerenciamento de tags para implantar [!DNL Marketo Measure] O JS pode resultar em uma possível perda de dados de 5 a 10% devido à latência de tempo de carregamento do script. Basicamente, se a ferramenta de gerenciamento de tags não carregar rápido o suficiente, o JS do [!DNL Marketo Measure] também não carregará com a velocidade necessária e pode perder as informações do primeiro referenciador.

Uma prática comum é implantar o JS do [!DNL Marketo Measure] por meio de uma ferramenta de gerenciamento de tags até uma melhoria de tempo/recursos para então mudar para a codificação rígida.

Para adicionar [!DNL Marketo Measure] por meio de uma solução de gerenciamento de tags, é necessário criar uma tag e adicionar nosso JavaScript nela. Aplique essa tag a todas as páginas do site que deseja rastrear.

O [!DNL Marketo Measure] recomenda que qualquer visualização de página faça com que a tag seja acionada. Além disso, é melhor dar [!DNL Marketo Measure] a prioridade mais alta na ordem de acionamento e verifique se não há scripts síncronos na frente do [!DNL Marketo Measure] para garantir a mais alta qualidade dos dados.

Você encontra informações mais detalhadas [aqui](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script-via-google-tag-manager.md){target="_blank"}.

## Considerações adicionais {#additional-considerations}

O JavaScript do [!DNL Marketo Measure] é baseado em domínio, podendo se adaptar automaticamente a qualquer subdomínio, desde que o JavaScript esteja nas páginas e o domínio raiz seja o mesmo que o domínio usado para criar a conta do Marketo Measure.

No entanto, se estiver usando domínios separados ou internacionais, avise ao(à) consultor(a) do [!DNL Marketo Measure]. Os domínios devem ser adicionados manualmente à sua conta no [!DNL Marketo Measure] termine para que [!DNL Marketo Measure] O sabe vincular os dados de domínios adicionais à sua conta da. Então, envie qualquer domínio separado/internacional para o seu [!DNL Marketo Measure] Consultor.

Se você usa páginas de terceiros, converse sobre seu caso de uso com o [!DNL Marketo Measure] Consultor. Em geral, você desejará saber se é possível adicionar uma versão personalizada do [!DNL Marketo Measure] JavaScript para rastrear essas páginas, se apropriado. Se isso não for possível, o rastreamento por meio dos pontos de contato do CRM Campaign será explorado com o [!DNL Marketo Measure] Consultor.

Você tem formulários que NÃO devem ser rastreados por [!DNL Marketo Measure] já que elas não fazem sentido para atribuição (por exemplo, cancelar inscrição de formulários, fazer logon no cliente e assim por diante)? Nesse caso, será necessário adicionar o código de exclusão [neste artigo](/help/marketo-measure-tracking/setting-up-tracking/excluding-marketo-measure-from-specific-forms.md){target="_blank"} para cada formulário

Você tem alguma página não segura? Você deve protegê-los, pois navegar entre uma página segura/não segura interrompe a sessão de rastreamento.

Converse com a sua equipe da web para informá-los de que o JavaScript do [!DNL Marketo Measure] deve estar sempre nas propriedades da web apropriadas. Se novos formulários/páginas/sites forem introduzidos, certifique-se que a implantação do JavaScript do [!DNL Marketo Measure] faça parte do protocolo.

Se um [!DNL Web Application Firewall (WAF)] for acionado durante a configuração do JavaScript, os usuários poderão desativar essa regra do WAF ou incluir na lista de permissões os cookies, como no exemplo abaixo:

![](assets/adding-marketo-measure-script-1.png)

## Formulários que precisam de uma atenção maior {#forms-to-pay-extra-attention-to}

**Envio de vários formulários**

* Problema: se você tiver vários formulários vinculados como parte de um único envio de formulário, é possível que o primeiro formulário gere um ponto de contato mesmo que o formulário completo não seja enviado.
* Solução: é necessário forçar um dos formulários a relatar ao usuário [!DNL Marketo Measure] com base nos dados em cache e discutir as práticas de abandono. Em geral, [relatar o código do usuário](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script-to-different-form-providers/ajax-form-handling.md){target="_blank"} pode resolver isso.

**Logon da conta (não criação)**

* Problema: o [!DNL Marketo Measure] recomenda não criar pontos de contato para logons subsequentes da conta, pois tendem a diluir o histórico de atribuição.
* Solução: adicione o código de exclusão ao formulário de logon da conta/cliente/parceiro.

>[!NOTE]
>
>Recomendamos criar um ponto de contato para a criação de uma conta ou avaliação.

**Download de ativo**

* Problema: se seus ativos estiverem limitados, [!DNL Marketo Measure] rastreia downloads como preenchimentos de formulário. Se os seus ativos não estiverem bloqueados, há limitações para o que podemos relatar sem personalização.
* Solução: bloqueie o ativo se quiser que ele seja rastreado pelo JavaScript do [!DNL Marketo Measure]. Se essa não for uma opção e você ainda quiser um ponto de contato para o ativo, considere sincronizar uma Campanha de CRM.

**iFrames**

* Problema: os iFrames funcionam essencialmente como páginas dentro de páginas.
* Solução: o [!DNL Marketo Measure] O JS deve ser implantado diretamente no cabeçalho do iFrame para que possamos anexar ao formulário corretamente.

**Lightboxes**

* Lightboxes são, geralmente, pop-ups que contêm iFrames
* Solução: o JS do [!DNL Marketo Measure] deve ser implantado no cabeçalho desse iFrame hospedado.

**Vários formulários em uma página**

* Problema: se houver vários formulários hospedados em uma página, talvez não seja possível saber qual formulário específico foi preenchido com o Campo URL de formulário do [!DNL Marketo Measure].
* Solução: se você precisar saber qual formulário foi preenchido, explore a configuração de hash dinâmico de URL com sua equipe da Web.

**Formulários organizados no formato `<div>`**

* Problema: o JS do [!DNL Marketo Measure] tem dificuldades para reconhecer formulários organizados no formato `<div>`, então código personalizado pode ser necessário.
* Solução: esses [modelos de usuário de relatório](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script-to-different-form-providers/ajax-form-handling.md){target="_blank"} podem ser usados pela sua equipe de desenvolvimento da web para adicionar o código necessário.

**Chat**

* Problema: se você usa um provedor de chat, pode ser necessário um tratamento especial.
* Solução: o [!DNL Marketo Measure] integra-se com Drift, Olark, Livechat, LivePerson e SnapEngage. Todas as outras plataformas precisam ser rastreadas por meio da associação à campanha de CRM.

**Segundo domínio**

* Problema: [!DNL Marketo Measure] O JavaScript é específico do domínio, portanto, etapas extras devem ser executadas para domínios separados ou internacionais. [!DNL Marketo Measure] O JS pode manipular subdomínios no mesmo domínio raiz.
* Solução: se você tiver vários domínios raiz que gostaria que fossem rastreados pelo [!DNL Marketo Measure], certifique-se de adicionar JS aos domínios E informe ao(à) consultor(a) do [!DNL Marketo Measure] quais domínios devem ser associados manualmente à sua conta do [!DNL Marketo Measure].

## Testes do JavaScript do [!DNL Marketo Measure] {#testing-marketo-measure-javascript}

Seu [!DNL Marketo Measure] O consultor ajudará você a testar o site para garantir que [!DNL Marketo Measure] O JavaScript está presente em todas as páginas. Parte desse teste consiste no envio de alguns preenchimentos de formulário com detalhes de teste claramente indicados para garantir que o rastreamento retorne corretamente.

No entanto, seu consultor(a) do [!DNL Marketo Measure] provavelmente não está tão familiarizado(a) com seu site quanto sua equipe da web. Por isso, é muito importante que sua equipe da web ou outra equipe apropriada verifique minuciosamente o site, especialmente se houver formulários complexos em uso, como os mencionados acima. Sua equipe será responsável por garantir que todas as propriedades da web necessárias estejam rastreando corretamente, mas se você estiver ciente de formulários ou situações complexas, sinta-se a vontade para solicitar ao(à) consultor(a) do [!DNL Marketo Measure] por assistência nos testes. 

Para testar um formulário por conta própria, siga estas etapas:

1. Sempre use um navegador anônimo ou limpe o cache entre cada teste de envio de formulário E use um endereços de email distintos em cada teste.

   a. Uma prática recomendada é usar um email falso que contenha algo indicando que é um teste e a hora do dia. Por exemplo: teste830am@teste.com.

1. Registre a URL da página em que você está enviando o formulário e o email usado.

1. Localize o registro criado no CRM (cliente potencial ou contato) desse envio de formulário e verifique se um ponto de contato foi criado corretamente.

   a. Você pode usar um relatório de estoque do [!DNL Marketo Measure], como clientes potenciais com Buyer Touchpoints ou verificar o layout da página cliente/contato se optar por atualizar seus layouts de página com detalhes do [!DNL Marketo Measure].

   b. Isso pode levar algum tempo para que os dados sejam processados.
