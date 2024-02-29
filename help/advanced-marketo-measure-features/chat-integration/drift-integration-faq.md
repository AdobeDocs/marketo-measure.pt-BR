---
unique-page-id: 27656441
description: Perguntas frequentes sobre a integração de deriva - [!DNL Marketo Measure]
title: Perguntas frequentes sobre integração de desvio
exl-id: ae5706b1-1f6c-4201-8585-0d7c587746e1
feature: Integration
source-git-commit: 741ab20845de2f3bcde589291d7446a5b4f877d8
workflow-type: tm+mt
source-wordcount: '350'
ht-degree: 2%

---

# Perguntas frequentes sobre integração de desvio {#drift-integration-faq}

Como parte do [!DNL Marketo Measure] integração com o Drift, veja algumas das perguntas mais frequentes. Se houver dúvidas não descritas abaixo, entre em contato com a Equipe de conta do Adobe (seu gerente de conta) ou [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.

**Como a integração é habilitada?**

Rastreamento de Drift Chat para [!DNL Marketo Measure] é ativado por padrão. Se quiser desativá-lo (e não criar pontos de contato a partir de bate-papos de deriva por padrão), adicione um atributo adicional ao [!DNL Marketo Measure] Implementação do Javascript, em negrito abaixo:

`<script type="text/javascript" src="https://cdn.bizible.com/scripts/bizible.js" async="" id="bizible-settings" data-chatEnabled="false"></script>`

Para quem usa [!DNL Google Tag Manager] para carregar o [!DNL Marketo Measure] Script, se você quiser excluir seus Bate-papos Derivados de serem qualificados para Pontos de Contato, adicione ao seguinte `<span>` logo após o [!DNL Marketo Measure] Script:

`<span id="bizible-settings" data-chatEnabled="false"></span>`

**O que a integração faz?**

A integração agora permite [!DNL Marketo Measure] para rastrear quando um usuário final fornece seu endereço de email em um chat Drift. A partir daí, criamos pontos de contato a partir dessas interações com um Tipo de ponto de contato de &quot;bate-papo na Web&quot;. Essa integração permite que os profissionais de marketing entendam o desempenho de suas interações de chat, juntamente com os canais/subcanais/campanhas que impulsionam as pessoas a interagir com esses chats.

**E se eu rastrear o Drift através de regras de sincronização de campanha?**

Se houver regras de sincronização de campanha em vigor para criar pontos de contato para interações de chat Drift, verifique se você parou de adicionar esses usuários finais específicos à Campanha de CRM correspondente. Caso contrário, uma vez habilitado o bit do recurso, crie um ponto de contato do CRM Campaign e um ponto de contato digital para uma interação Drift chat.

**E se eu rastrear o Drift via Campanhas de CRM?**

Se houver campanhas de CRM em vigor para criar pontos de contato para interações de bate-papo à deriva, uma Data de término do ponto de contato deverá ser definida nessas campanhas específicas (a Data de término do ponto de contato deve ser a data em que o bit de recurso de Integração de bate-papo na web está habilitado).

**E se eu rastrear o Drift através das atividades?**

Se houver regras de atividade em vigor para criar pontos de contato para interações de bate-papo de deriva, uma parte adicional da lógica deverá ser adicionada às regras. Adicione lógica usando o campo Data de criação da tarefa para impedir que a duplicação de pontos de contato seja criada (IE CrmTask.CreatedDate é Menor que a data em que o bit de recurso foi habilitado). Consulte a captura de tela abaixo para obter um exemplo.

![](assets/activity-rule-drift.png)
