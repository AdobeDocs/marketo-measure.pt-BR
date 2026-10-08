---
description: Criando uma orientação de perfil do [!DNL Marketo Measure] para usuários do Marketo Measure
title: Criando um perfil [!DNL Marketo Measure]
exl-id: dab2e2cb-fbd3-464a-9bd7-e9bf153d9848
feature: Salesforce
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
    internal-label: Marketo Measure
feature_v2:
  - id: c8f57308-7e33-4e41-a385-b55041c78939
    internal-label: Integrations
subfeature_v2:
  - id: e601da04-8de6-4fc3-8718-784749c3c41b
    internal-label: Salesforce integration
source-git-commit: 940fee4abd0e09b6bf513b5e7526d3c242bd31c7
workflow-type: tm+mt
source-wordcount: '197'
ht-degree: 6%
---
# Criando um perfil [!DNL Marketo Measure] {#creating-a-marketo-measure-profile}

Saiba como criar um perfil do [!DNL Marketo Measure]. A criação de um perfil [!DNL Marketo Measure] garante que não encontraremos erros de validação ao enviar dados para seu CRM.

1. Criar um perfil [!DNL Marketo Measure] específico:

   * Atribuir o Conjunto de Permissões de Administrador [!DNL Marketo Measure]
   * Ativar a permissão para Exibir e Editar Clientes Potenciais Convertidos

   >[!NOTE]
   >
   >Este perfil pode ser um clone de um perfil [!DNL System Admin]

1. Criou um usuário [!DNL Marketo Measure] dedicado:

   * Atribuir o novo Perfil do [!DNL Marketo Measure] a esse Usuário
   * Ativar &quot;Usuário de marketing&quot; como permissão no nível do usuário

1. Excluir este perfil de todos os acionadores, fluxos de trabalho e processos.
1. Faça logon em sua Conta [!DNL Marketo Measure] e autorize novamente a conexão [!DNL Salesforce] com o novo usuário:

   * Acesse [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e faça logon com as novas credenciais de produção do Salesforce do usuário
   * Selecione &quot;[!UICONTROL Configurações]&quot; na lista suspensa &quot;[!UICONTROL Minha conta]&quot;
   * Selecione &quot;[!UICONTROL Conexões]&quot; dentro do agrupamento &quot;[!UICONTROL Integrações]&quot;
   * Clique no Ícone de Chave à direita da conexão atual do [!DNL Salesforce] e selecione Reautorizar com Produção. Em seguida, faça logon com as novas credenciais do usuário novamente, se solicitado

   Pronto!

   Em caso de dúvidas sobre a criação de um perfil dedicado [!DNL Marketo Measure], entre em contato com a Equipe de Conta da Adobe (seu Gerente de Conta) ou com o [Suporte da Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.
