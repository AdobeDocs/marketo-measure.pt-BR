---
unique-page-id: 18874795
description: Adicionando [!DNL Marketo Measure] Script - [!DNL Marketo Measure] - Documentação do produto
title: Adição de [!DNL Marketo Measure] script
exl-id: f8773037-04d7-4308-ba04-440e9b990d92
feature: Tracking
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '1307'
ht-degree: 0%

---

# Adição de[!DNL Marketo Measure]script {#adding-marketo-measure-script}

[!DNL Marketo Measure] JavaScript que você gostaria de rastrear [!DNL Marketo Measure] deve ser adicionado a todas as propriedades da web assim que possível. Depois que o JavaScript for implantado, [!DNL Marketo Measure] O começará a coletar seus dados digitais. Este artigo descreve os métodos de implantação [!DNL Marketo Measure] JavaScript e considerações adicionais a serem consideradas.

>[!NOTE]
>
>Verifique se você [reivindicou todos os domínios apropriados na [!DNL Adobe Admin Console]](/help/marketo-measure-and-adobe/domain-management.md){target="_blank"} além de implantar o [!DNL Marketo Measure] JavaScript.

Ao começar com [!DNL Marketo Measure], há duas maneiras de adicionar a variável [!DNL Marketo Measure] JavaScript para o seu site:

* Codificação permanente
* Sistemas Tag Management

## Codificação permanente {#hard-coding}

Como prática recomendada, recomendamos a codificação rígida [!DNL Marketo Measure] JavaScript nas propriedades da Web. Para codificar o script, você precisará colocá-lo antes de fechar `</head>` em todas as páginas do site.

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

A codificação rígida do JavaScript no `<head>` de suas páginas garante a [!DNL Marketo Measure] o script será carregado primeiro e as informações de referência não serão perdidas. A variável [!DNL Marketo Measure] O JavaScript é carregado de forma assíncrona. Se estiver codificando, o JavaScript deve ser adicionado manualmente à Automação de marketing.

>[!TIP]
>
>Saiba como verificar se o script está [Compatível com o GDPR](/help/security-and-compliance/compliance-related-resources/ensuring-consent-for-gdpr-in-marketo-measure-js.md){target="_blank"}.

## Sistemas Tag Management {#tag-management-systems}

Se adicionar [!DNL Marketo Measure] JavaScript via codificação rígida não é possível, outra opção é adicionar o [!DNL Marketo Measure] usando um Sistema Tag Management, como [!DNL Google Tag Manager] (GTM) ou Tealium.

Observe que usar sistemas de gerenciamento de tags para implantar [!DNL Marketo Measure] O JS pode resultar em uma possível perda de dados de 5 a 10% devido à latência de tempo de carregamento do script. Basicamente, se a ferramenta de gerenciamento de tags não carregar com rapidez suficiente, [!DNL Marketo Measure] O JS também não pode carregar rápido o suficiente e pode perder as informações do primeiro referenciador.

Uma prática comum é implantar [!DNL Marketo Measure] JS por meio de uma ferramenta de gerenciamento de tags até que o tempo/recursos sejam melhores para mudar para a codificação rígida.

Para adicionar [!DNL Marketo Measure] por meio de uma solução de gerenciamento de tags, será necessário criar uma nova tag e adicionar nosso JavaScript nela. Aplique essa tag a todas as páginas do site que você deseja rastrear.

[!DNL Marketo Measure] A recomenda que qualquer exibição de página faça com que a tag do seja acionada. Além disso, é melhor dar [!DNL Marketo Measure] a prioridade mais alta na ordem de acionamento e verifique se não há scripts síncronos na frente do [!DNL Marketo Measure] para garantir a mais alta qualidade dos dados.

Mais informações podem ser [encontrado aqui](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script-via-google-tag-manager.md){target="_blank"}.

## Considerações adicionais {#additional-considerations}

[!DNL Marketo Measure] O JavaScript é baseado em domínio, de modo que pode manipular automaticamente qualquer subdomínio, desde que o JavaScript esteja nas páginas e o domínio raiz seja o mesmo que o domínio usado para criar a conta do Marketo Measure.

No entanto, se estiver usando domínios separados ou internacionais, não deixe que seu [!DNL Marketo Measure] O consultor sabe. Os domínios precisam ser adicionados manualmente à sua conta no [!DNL Marketo Measure] termine para que [!DNL Marketo Measure] O sabe vincular os dados de domínios adicionais à sua conta da. Portanto, envie domínios separados/internacionais para sua [!DNL Marketo Measure] Consultor.

Se você usa qualquer página de terceiros, converse sobre seu caso de uso com o [!DNL Marketo Measure] Consultor. Em geral, você desejará saber se é possível adicionar uma versão personalizada do [!DNL Marketo Measure] JavaScript para rastrear essas páginas, se apropriado. Se isso não for possível, o rastreamento por meio dos pontos de contato do CRM Campaign será explorado com o [!DNL Marketo Measure] Consultor.

Você tem formulários que NÃO devem ser rastreados por [!DNL Marketo Measure] já que elas não fazem sentido para atribuição (por exemplo, cancelar inscrição de formulários, logons de clientes etc.)? Em caso positivo, será necessário adicionar o código de exclusão [neste artigo](/help/marketo-measure-tracking/setting-up-tracking/excluding-marketo-measure-from-specific-forms.md){target="_blank"} para cada formulário

Você tem alguma página não segura? Em caso positivo, você deverá protegê-los, pois navegar entre uma página segura/não segura interromperá a sessão de rastreamento.

Conversar com a equipe da Web para que eles saibam [!DNL Marketo Measure] O JavaScript deve estar sempre nas propriedades da Web apropriadas. Se novas páginas/formulários/sites forem introduzidos, certifique-se de implantar [!DNL Marketo Measure] O JavaScript faz parte do protocolo.

Se um [!DNL Web Application Firewall (WAF)] for acionado durante a configuração do JavaScript, os usuários poderão desativar essa regra do WAF ou incluir os cookies na lista de permissões, como no exemplo abaixo:

![](assets/adding-marketo-measure-script-1.png)

## A Forms prestará mais atenção {#forms-to-pay-extra-attention-to}

**Envio de vários formulários**

* Problema: se você tiver vários formulários vinculados como parte de um único envio de formulário, é possível que o primeiro formulário gere um ponto de contato mesmo que o formulário completo não seja enviado.
* Solução: você precisará forçar um dos formulários a relatar ao usuário [!DNL Marketo Measure] com base nos dados em cache e discutir as práticas de abandono. Em geral, [código de usuário do relatório](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script-to-different-form-providers/ajax-form-handling.md){target="_blank"} pode resolver para isso.

**Logon da conta (não criação)**

* Problema: [!DNL Marketo Measure] A recomenda não criar pontos de contato para logons de conta subsequentes, pois eles tendem a diluir a história de atribuição.
* Solução: adicione o código de exclusão ao formulário de logon da conta/cliente/parceiro.

>[!NOTE]
>
>Recomendamos criar um ponto de contato para a criação de uma conta ou avaliação.

**Download de ativo**

* Problema: se seus ativos estiverem limitados, [!DNL Marketo Measure] rastreará downloads como preenchimentos de formulário. Se os seus ativos não estiverem fechados, há limitações para o que podemos relatar sem personalização.
* Solução: transfira o ativo se você quiser que ele seja rastreado por [!DNL Marketo Measure] JavaScript. Se essa não for uma opção e você ainda quiser um ponto de contato para ela, considere sincronizar uma Campanha de CRM.

**iFrames**

* Problema: os iFrames funcionam essencialmente como páginas dentro de páginas.
* Solução: o [!DNL Marketo Measure] O JS deve ser implantado diretamente no cabeçalho do iFrame para que o formulário seja anexado corretamente.

**Lightboxes**

* Lightboxes são tipicamente pop-ups que contêm iFrames
* Solução: o [!DNL Marketo Measure] O JS deve ser implantado no cabeçalho desse iFrame hospedado.

**Vários formulários em uma página**

* Problema: se houver vários formulários hospedados em uma página, talvez você não consiga saber qual formulário específico foi preenchido com o [!DNL Marketo Measure] Campo URL do formulário.
* Solução: se você precisar saber qual formulário foi preenchido, explore a configuração de hash dinâmico de URL com sua equipe da Web.

**Forms organizado em `<div>` formato**

* Problema: [!DNL Marketo Measure] JS tem dificuldades para reconhecer formulários organizados em `<div>` para que o código personalizado possa ser necessário.
* Solução: esses [modelos de usuário de relatório](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script-to-different-form-providers/ajax-form-handling.md){target="_blank"} O pode ser usado pela sua equipe de desenvolvimento da web para adicionar o código necessário.

**Chat**

* Problema: Se você usar um provedor de chat, talvez seja necessário um tratamento especial.
* Solução: [!DNL Marketo Measure] integra-se com Drift, Olark, Livechat, LivePerson e SnapEngage. Todas as outras plataformas precisam ser rastreadas por meio da associação à campanha de CRM.

**Segundo domínio**

* Problema: [!DNL Marketo Measure] O JavaScript é específico do domínio, portanto, etapas adicionais precisam ser executadas para domínios separados ou internacionais. Observe que [!DNL Marketo Measure] O JS pode manipular subdomínios no mesmo domínio raiz.
* Solução: se você tiver vários domínios raiz, que gostaria que fossem rastreados pelo [!DNL Marketo Measure] certifique-se de adicionar JS aos domínios E deixe que seu [!DNL Marketo Measure] O consultor sabe quais domínios devem ser associados manualmente ao seu [!DNL Marketo Measure] conta.

## Testes [!DNL Marketo Measure] JavaScript {#testing-marketo-measure-javascript}

Seu [!DNL Marketo Measure] O consultor ajudará você a detectar e testar o site para garantir que [!DNL Marketo Measure] O JavaScript está presente em todas as páginas. Parte desse teste será enviar alguns preenchimentos de formulário com detalhes de teste claramente indicados para garantir que o rastreamento retorne corretamente.

No entanto, seu [!DNL Marketo Measure] O consultor provavelmente não está tão familiarizado com seu site quanto sua equipe da Web. Por isso, é muito importante que sua equipe da Web ou outra equipe apropriada verifique detalhadamente o site, especialmente se há formulários complexos em uso como os mencionados acima. Sua equipe será responsável por garantir que todas as propriedades da Web necessárias estejam sendo rastreadas corretamente, mas se você estiver ciente de formulários ou situações complexas, será bem-vindo(a) para perguntar [!DNL Marketo Measure] Consultor para obter assistência em testes.

Para testar um formulário por conta própria, siga estas etapas:

1. Sempre use um navegador incógnito ou limpe o cache entre cada teste de envio de formulário E use um endereço de email diferente a cada vez.

   a. Uma prática recomendada é usar um email falso que contenha algo indicando que é um teste e a hora do dia. Por exemplo: testing830am@test.com.

1. Registre a URL da página em que você está enviando o formulário e o email usado.

1. Localize o registro criado no CRM (Lead ou Contato) para o envio desse formulário e verifique se um ponto de contato foi criado corretamente.

   a. Você pode usar um [!DNL Marketo Measure] relatório de estoque, como Clientes potenciais com pontos de contato do comprador, ou verifique o layout da página Cliente potencial/Contato se você optou por atualizar seus layouts de página com [!DNL Marketo Measure] detalhes.

   b. Observe que isso pode levar algum tempo para que os dados sejam processados.
