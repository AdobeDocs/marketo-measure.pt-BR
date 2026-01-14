---
description: Criando uma  [!DNL Marketo Measure] Orientação de perfil para usuários do Marketo Measure
title: Criação de um [!DNL Marketo Measure] perfil
exl-id: dab2e2cb-fbd3-464a-9bd7-e9bf153d9848
feature: Salesforce
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '186'
ht-degree: 3%

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
