---
unique-page-id: 18874795
description: Adição de [!DNL Marketo Measure] Script - [!DNL Marketo Measure] - Documentação do produto
title: Adição de [!DNL Marketo Measure] Script
exl-id: f8773037-04d7-4308-ba04-440e9b990d92
source-git-commit: 82cc8269bfdb26b6acf039d0ce0e06564f5e2612
workflow-type: tm+mt
source-wordcount: '1319'
ht-degree: 0%

---

# Adição de [!DNL Marketo Measure] Script {#adding-marketo-measure-script}

[!DNL Marketo Measure] JavaScript que você gostaria de rastrear [!DNL Marketo Measure] deve ser adicionado a todas as propriedades da Web assim que possível. Depois que o JavaScript é implantado, [!DNL Marketo Measure] O começará a coletar os dados digitais. Este artigo descreve os métodos de implantação [!DNL Marketo Measure] JavaScript e considerações adicionais a serem consideradas.

>[!NOTE]
>
>Certifique-se de que você [solicitado todos os domínios apropriados no [!DNL Adobe Admin Console]](/help/marketo-measure-and-adobe/domain-management.md){target=&quot;_blank&quot;} além da implantação do [!DNL Marketo Measure] JavaScript.

Ao começar com [!DNL Marketo Measure], há duas maneiras de adicionar o [!DNL Marketo Measure] JavaScript para o seu site:

* Codificação permanente
* Sistemas Tag Management

## Codificação permanente {#hard-coding}

Como prática recomendada, recomendamos usar o código fixo [!DNL Marketo Measure] JavaScript para suas propriedades da Web. Para codificar o script, é necessário colocar o script antes de fechar o `</head>` em todas as páginas do seu site.

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async=""></script>`

Codificação rígida do JavaScript no `<head>` das suas páginas garante que o [!DNL Marketo Measure] o script será carregado primeiro e as informações de referência não serão perdidas. O [!DNL Marketo Measure] O JavaScript é carregado de forma assíncrona. Se estiver codificando, o JavaScript deve ser adicionado manualmente à Automação de marketing.

>[!TIP]
>
>Saiba como verificar se o script é [Conformidade com o GDPR](/help/security-and-compliance/compliance-related-resources/ensuring-consent-for-gdpr-in-marketo-measure-js.md){target=&quot;_blank&quot;}.

## Sistemas Tag Management {#tag-management-systems}

Se estiver adicionando [!DNL Marketo Measure] O JavaScript por meio do hardcoding não é possível, outra opção é adicionar o [!DNL Marketo Measure] script usando um sistema Tag Management como [!DNL Google Tag Manager] (GTM) ou Tealium.

Observe que o uso de sistemas de gerenciamento de tags para implantar [!DNL Marketo Measure] O JS pode resultar em uma possível perda de dados de 5 a 10% devido à latência do tempo de carregamento do script. Essencialmente, se a ferramenta de gerenciamento de tags não carregar rapidamente, [!DNL Marketo Measure] O JS também não pode ser carregado rapidamente o suficiente e pode perder as primeiras informações do referenciador.

Uma prática comum é implantar [!DNL Marketo Measure] JS por meio de uma ferramenta de gerenciamento de tags até que o tempo/recurso seja melhor para mudar para a codificação rígida.

Para adicionar [!DNL Marketo Measure] por meio de uma solução de gerenciamento de tags, será necessário criar uma nova tag e adicionar nosso JavaScript a ela. Aplique essa tag a todas as páginas do seu site que você deseja rastrear.

[!DNL Marketo Measure] A recomenda que qualquer visualização de página faça com que a tag seja acionada. Além disso, é melhor dar [!DNL Marketo Measure] a prioridade mais alta na ordem de acionamento e verifique se não há scripts síncronos na frente do [!DNL Marketo Measure] para garantir a maior qualidade dos dados.

Mais informações podem ser [encontrado aqui](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script-via-google-tag-manager.md){target=&quot;_blank&quot;}.

## Considerações adicionais {#additional-considerations}

[!DNL Marketo Measure] O JavaScript é baseado em domínio para poder manipular automaticamente qualquer subdomínio, desde que o JavaScript esteja nas páginas e o domínio raiz seja o mesmo que o domínio usado para criar a conta Marketo Measure .

No entanto, se estiver usando domínios separados ou internacionais, deixe [!DNL Marketo Measure] Consultor sabe. Os domínios precisam ser adicionados manualmente à sua conta no [!DNL Marketo Measure] terminar para que [!DNL Marketo Measure] O sabe vincular os dados dos domínios adicionais à sua conta. Assim, envie qualquer domínio separado/internacional para o seu [!DNL Marketo Measure] Consultor.

Se você usa páginas de terceiros, fale sobre seu caso de uso com sua [!DNL Marketo Measure] Consultor. Em geral, você quer saber se pode adicionar uma versão personalizada de [!DNL Marketo Measure] JavaScript para rastrear essas páginas, se apropriado. Se isso não for possível, o rastreamento por meio dos pontos de contato da Campanha CRM será explorado com seu [!DNL Marketo Measure] Consultor.

Você tem formulários que NÃO devem ser rastreados por [!DNL Marketo Measure] já que elas não fazem sentido necessariamente para atribuição (por exemplo, formulários de cancelamento de subscrição, logons de clientes etc.)? Em caso positivo, será necessário adicionar o código de exclusão [neste artigo](/help/marketo-measure-tracking/setting-up-tracking/excluding-marketo-measure-from-specific-forms.md){target=&quot;_blank&quot;} para cada formulário

Você tem páginas não seguras? Em caso positivo, é necessário protegê-los para que a navegação entre uma página segura/não segura interrompa a sessão de rastreamento.

Conversar com sua equipe da Web para que eles saibam [!DNL Marketo Measure] O JavaScript deve estar sempre nas propriedades da Web apropriadas. Se novas páginas/formulários/sites forem introduzidas, certifique-se de implantar [!DNL Marketo Measure] O JavaScript faz parte do protocolo .

Se uma [!DNL Web Application Firewall (WAF)] for acionado durante a configuração do JavaScript, os usuários podem desativar essa regra WAF ou incluir os cookies na lista de permissões, como o exemplo abaixo:

![](assets/adding-marketo-measure-script-1.png)

## Forms para prestar atenção extra {#forms-to-pay-extra-attention-to}

**Envio de vários formulários**

* Problema: Se você tiver vários formulários vinculados como parte de um envio de formulário único, é possível que o primeiro formulário gere um ponto de contato mesmo se o formulário completo não for enviado.
* Solução: Será necessário forçar um dos formulários a reportar o usuário para [!DNL Marketo Measure] com base em dados em cache e discuta práticas de abandono. Geralmente, [código de usuário do relatório](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script-to-different-form-providers/ajax-form-handling.md){target=&quot;_blank&quot;} pode resolver isso.

**Logon da conta (não criação)**

* Problema: [!DNL Marketo Measure] A recomenda não criar pontos de contato para logons de conta subsequentes, pois eles tendem a diluir a história da atribuição.
* Solução: Adicione o código de exclusão ao formulário de logon de conta/cliente/parceiro.

>[!NOTE]
>
>Recomendamos criar um ponto de contato para a criação de uma conta ou avaliação.

**Download de ativo**

* Problema: Se os ativos estiverem relacionados, [!DNL Marketo Measure] O rastreará downloads como preenchimentos de formulário. Se seus ativos não estiverem relacionados, há limitações no que podemos gerar relatórios sem personalização.
* Solução: Adicione o ativo se desejar que ele seja rastreado por [!DNL Marketo Measure] JavaScript. Se essa não for uma opção e você ainda quiser um ponto de contato para ela, considere sincronizar uma campanha CRM.

**iFrames**

* Problema: Os iFrames funcionam essencialmente como páginas nas páginas.
* Solução: O [!DNL Marketo Measure] O JS deve ser implantado diretamente no cabeçalho do iFrame para que possamos nos anexar ao formulário corretamente.

**Lightboxes**

* Lightboxes são normalmente pop-ups que contêm iFrames
* Solução: o [!DNL Marketo Measure] O JS deve ser implantado no cabeçalho desse iFrame hospedado.

**Vários formulários em uma página**

* Problema: Se houver vários formulários hospedados em uma página, talvez você não consiga informar qual formulário específico foi preenchido com a variável [!DNL Marketo Measure] Campo URL do formulário.
* Solução: Se precisar saber qual formulário foi preenchido, explore a configuração do hash do URL dinâmico com a equipe da Web.

**Forms organizado em `<div>` format**

* Problema: [!DNL Marketo Measure] O JS tem dificuldades em reconhecer formulários organizados em `<div>` para que o código personalizado possa ser necessário.
* Solução: Esses [modelos de usuário do relatório](/help/marketo-measure-tracking/setting-up-tracking/adding-marketo-measure-script-to-different-form-providers/ajax-form-handling.md){target=&quot;_blank&quot;} pode ser usado pela equipe de desenvolvimento da Web para adicionar o código necessário.

**Chat**

* Problema: Se você usar um provedor de chat, pode ser necessário um tratamento especial.
* Solução: [!DNL Marketo Measure] integra-se com Drift, Olark, Livechat, LivePerson e SnapEngage. Todas as outras plataformas precisam ser rastreadas por meio da associação à campanha CRM.

**Segundo domínio**

* Problema: [!DNL Marketo Measure] O JavaScript é específico do domínio, portanto, etapas adicionais devem ser tomadas para qualquer domínio separado ou internacional. Observe que [!DNL Marketo Measure] O JS pode manipular subdomínios no mesmo domínio raiz.
* Solução: Se você tiver vários domínios raiz, que você gostaria de rastrear por [!DNL Marketo Measure] não deixe de adicionar JS aos domínios e permita [!DNL Marketo Measure] O consultor sabe quais domínios devem ser associados manualmente ao seu [!DNL Marketo Measure] conta.

## Teste [!DNL Marketo Measure] JavaScript {#testing-marketo-measure-javascript}

Seu [!DNL Marketo Measure] O consultor ajudará você a testar o site para garantir que [!DNL Marketo Measure] O JavaScript está presente em todas as páginas. Parte desse teste enviará alguns preenchimentos de formulário com detalhes de teste claramente indicados para garantir que o rastreamento retorne corretamente.

No entanto, a variável [!DNL Marketo Measure] O consultor provavelmente não está tão familiarizado com seu site quanto sua equipe da Web. Por isso, é muito importante que sua equipe da Web ou outra equipe apropriada verifique o site cuidadosamente, especialmente se houver formulários complexos em uso como os mencionados acima. Sua equipe será responsável por garantir que todas as propriedades da Web necessárias estejam rastreando corretamente, mas se você estiver ciente de quaisquer formulários ou situações complexas, é recomendável solicitar a [!DNL Marketo Measure] Consultor para assistência em testes.

Para testar um formulário você mesmo, siga estas etapas:

1. Sempre use um navegador incógnito ou limpe o cache entre cada teste de envio de formulário E use um endereço de email diferente a cada vez.

   a. Uma prática recomendada é usar um email falso que contenha algo indicando que é um teste e a hora do dia. Por exemplo: testing830am@test.com.

1. Registre o URL da página que você está enviando o formulário e o email usado.

1. Localize o registro criado em seu CRM (Lead ou contato) para o envio do formulário e verifique se um ponto de contato foi criado adequadamente.

   a. Você pode usar um [!DNL Marketo Measure] relatório de estoque, como Leads com pontos de contato de comprador, ou olhe o layout da página Lead/contato, caso opte por atualizar os layouts de página com [!DNL Marketo Measure] detalhes.

   b. Observe que isso pode levar algum tempo para que os dados sejam processados.
