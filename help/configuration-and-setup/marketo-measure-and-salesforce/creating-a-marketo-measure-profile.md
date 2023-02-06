---
unique-page-id: 18874698
description: Criação de um [!DNL Marketo Measure] Perfil - [!DNL Marketo Measure] - Documentação do produto
title: Criação de um [!DNL Marketo Measure] Perfil
exl-id: dab2e2cb-fbd3-464a-9bd7-e9bf153d9848
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '188'
ht-degree: 0%

---

# Criação de um [!DNL Marketo Measure] Perfil {#creating-a-marketo-measure-profile}

Saiba como criar um [!DNL Marketo Measure] perfil. Criação de um [!DNL Marketo Measure] O perfil garante que não teremos erros de validação ao enviar dados para o seu CRM.

1. Crie um [!DNL Marketo Measure] perfil:

   * Atribua o [!DNL Marketo Measure] Conjunto de permissões do administrador
   * Ative a permissão para Exibir e editar leads convertidos

   >[!NOTE]
   >
   >Esse perfil pode ser um clone de um [!DNL System Admin] perfil

1. Criou um [!DNL Marketo Measure] usuário:

   * Atribua o novo [!DNL Marketo Measure] Perfil para esse usuário
   * Ativar &quot;Usuário de marketing&quot; como permissão de nível de usuário

1. Exclua este Perfil de todos os acionadores, fluxos de trabalho e processos.
1. Faça logon no [!DNL Marketo Measure] Conta e reautorize a [!DNL Salesforce] conexão com o novo usuário:

   * Ir para [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"} e fazer logon com as novas credenciais do Salesforce de produção do usuário
   * Selecione &quot;[!UICONTROL Configurações]&quot; dentro do &quot;[!UICONTROL Minha conta]&quot; menu suspenso
   * Selecione &quot;[!UICONTROL Conexões]&quot; dentro do &quot;[!UICONTROL Integrações]&quot; agrupamento
   * Clique no ícone Chave à direita da conexão atual [!DNL Salesforce] e selecione Autorizar novamente com produção. Em seguida, faça logon com as novas credenciais do usuário novamente, se solicitado

   Feito!

   Se tiver dúvidas sobre a criação de um [!DNL Marketo Measure] , entre em contato com o gerente de sucesso do cliente ou [Suporte Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"}.
