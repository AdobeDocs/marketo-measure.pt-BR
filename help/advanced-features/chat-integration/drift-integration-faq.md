---
description: Perguntas Frequentes sobre Integração de Deriva - [!DNL Marketo Measure]
title: Perguntas frequentes sobre integração de desvio
exl-id: ae5706b1-1f6c-4201-8585-0d7c587746e1
feature: Integration
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '359'
ht-degree: 1%

---


# Perguntas frequentes sobre integração de desvio {#drift-integration-faq}

Como parte da integração do [!DNL Marketo Measure] com o Drift, veja aqui algumas das perguntas mais frequentes. Se houver alguma pergunta não descrita abaixo, entre em contato com a Equipe de conta da Adobe (seu Gerente de conta) ou com o [Suporte da Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.

**Como a integração está habilitada?**

O rastreamento do Drift Chat para [!DNL Marketo Measure] está habilitado por padrão. Se quiser desabilitá-lo (e não criar pontos de contato a partir de bate-papos de deriva por padrão), adicione um atributo adicional à sua implementação do Javascript [!DNL Marketo Measure], em negrito abaixo:

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="" id="bizible-settings" data-chatEnabled="false"></script>`

Para aqueles que usam o [!DNL Google Tag Manager] para carregar o Script [!DNL Marketo Measure], se você quiser excluir seus Bate-papos Derivados de serem qualificados para Pontos de Contato, adicione ao seguinte `<span>` logo após o Script [!DNL Marketo Measure]:

`<span id="bizible-settings" data-chatEnabled="false"></span>`

**O que a integração faz?**

A integração agora permite que o [!DNL Marketo Measure] rastreie quando um usuário final fornece seu endereço de email em um bate-papo Drift. A partir daí, criamos pontos de contato a partir dessas interações com um Tipo de ponto de contato de &quot;bate-papo na Web&quot;. Essa integração permite que os profissionais de marketing entendam o desempenho de suas interações de chat, juntamente com os canais/subcanais/campanhas que impulsionam as pessoas a interagir com esses chats.

**E se eu rastrear o Drift através das regras de sincronização de campanha?**

Se houver regras de sincronização de campanha em vigor para criar pontos de contato para interações de chat Drift, verifique se você parou de adicionar esses usuários finais específicos à Campanha de CRM correspondente. Caso contrário, uma vez habilitado o bit do recurso, crie um ponto de contato do CRM Campaign e um ponto de contato digital para uma interação Drift chat.

**E se eu rastrear o Drift via Campanhas do CRM?**

Se houver campanhas de CRM em vigor para criar pontos de contato para interações de bate-papo à deriva, uma Data de término do ponto de contato deverá ser definida nessas campanhas específicas (a Data de término do ponto de contato deve ser a data em que o bit de recurso de Integração de bate-papo na web está habilitado).

**E se eu rastrear o Drift através de Atividades?**

Se houver regras de atividade em vigor para criar pontos de contato para interações de bate-papo de deriva, uma parte adicional da lógica deverá ser adicionada às regras. Adicione lógica usando o campo Data de criação da tarefa para impedir que a duplicação de pontos de contato seja criada (IE CrmTask.CreatedDate é Menor que a data em que o bit de recurso foi habilitado). Consulte a captura de tela abaixo para obter um exemplo.

![Exemplo de regra de atividade do CRM configurada para pontos de contato de chat do Drift](assets/activity-rule-drift.png)
