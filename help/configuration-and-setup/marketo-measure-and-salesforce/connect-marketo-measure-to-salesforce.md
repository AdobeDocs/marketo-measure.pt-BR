---
unique-page-id: 18874580
description: Conectar o Marketo Measure ao Salesforce - [!DNL Marketo Measure] - Documentação do produto
title: Conectar o Marketo Measure ao Salesforce
exl-id: 9be8d3fa-1045-4e41-bc2e-5b9d4d3513ae
source-git-commit: 993a326c377b3b6ff48c4e0114b59297f9ca2ca6
workflow-type: tm+mt
source-wordcount: '281'
ht-degree: 0%

---

# Conectar o Marketo Measure ao Salesforce {#connect-marketo-measure-to-salesforce}

Este artigo fornece uma visão geral de como conectar seu [!DNL Salesforce] para sua conta [!DNL Marketo Measure] conta.

## Conexão [!DNL Marketo Measure] com [!DNL Salesforce] {#connecting-marketo-measure-with-salesforce}

1. Usar um navegador incógnito para fazer logon no [!DNL Marketo Measure].

1. Na barra de menus na parte superior do ecrã, navegue até **[!UICONTROL Minha conta]** e clique no botão [!UICONTROL Configurações] opção.

1. Na coluna de opções de configuração à esquerda, clique em [!UICONTROL Conexões] localizada na [!UICONTROL Integrações] seção.

   ![](assets/1.png)

1. Na seção CRM em Conexões, clique em **[!UICONTROL Configurar nova conexão do CRM]**.

   ![](assets/2.png)

1. Uma janela pop-up será exibida solicitando que você selecione a conexão do CRM. Clique no botão [!UICONTROL Connect] botão ao lado do [!DNL Salesforce] logotipo.

   ![](assets/3.png)

1. Uma janela pop-up final será exibida, solicitando que você [!DNL Salesforce] credenciais, sandbox ou produção. Insira suas informações e clique em **[!UICONTROL Autorizar]** para conectar a conta ao [!DNL Marketo Measure].

>[!NOTE]
>
>[!DNL Marketo Measure] só pode ser conectado a um [!DNL Salesforce] de cada vez.
>
>* A [!DNL Marketo Measure] A instância pode ser conectada a uma Instância de sandbox SFDC para testar a integração antes de alternar a conexão com a Instância de produção SFDC.
>* Se você testar primeiro com uma sandbox SFDC, recomendamos que você teste com uma réplica exata da sua instância de produção SFDC em termos de campos nos objetos Lead, Contact, Account, Oportunity, Campaign e Case . Se você tiver acionadores APEX ativos em produção que acionam atualizações para os objetos Lead, Contact, Account, Oportunity, Campaign e Case , tente ativá-los na sandbox.
>* Quando terminar de testar, você atualizará seu [!DNL Marketo Measure] conta para apontar para sua produção [!DNL Salesforce] (em vez de Sandbox [!DNL Salesforce]). Devido à forma como a integração foi criada, uma vez que uma [!DNL Marketo Measure] conta está conectada à Produção [!DNL Salesforce], você não pode ir &quot;para trás&quot; e se conectar a uma sandbox [!DNL Salesforce] org.


