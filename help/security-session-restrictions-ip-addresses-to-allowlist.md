---
description: Lista os intervalos IP do Salesforce a serem incluídos na lista de permissões para que o Marketo Measure possa se conectar quando restrições de sessão forem impostas
title: Restrições de Sessão de Segurança - Endereços IP a Serem Incluídos na lista de permissões
exl-id: aaf5190f-893c-4872-8d03-93f516e70a59
feature: Tracking
product_v2:
  - id: e6fc4016-a972-4f36-8c30-a6a5f82ad0c8
    internal-label: Marketo Measure
feature_v2:
  - id: dcbeff6e-0253-5a4b-9ac2-1b67cc4a6286
    internal-label: Tracking
source-git-commit: 940fee4abd0e09b6bf513b5e7526d3c242bd31c7
workflow-type: tm+mt
source-wordcount: '106'
ht-degree: 12%
---
# Restrições de sessão de segurança: Endereços IP para incluir na lista de permissões {#security-session-restrictions-ip-addresses-to-allowlist}

Se houver [Configurações de Segurança de Sessão](https://help.salesforce.com/articleView?id=admin_sessions.htm&type=0){target="_blank"} em vigor, impedindo que Endereços IP específicos enviem/enviem dados para a instância [!DNL Salesforce], precisaremos dos seguintes intervalos IP para permitir que [!DNL Marketo Measure] envie dados para [!DNL Salesforce]:

* 52.162.84.192 - 52.162.84.207
* 23.100.229.112 - 23.100.229.127
* 20.186.163.0 - 20.186.163.15

Para adicionar IPs [!DNL Marketo Measure] aos Intervalos IP Confiáveis na Salesforce, clique em **[!UICONTROL Instalação]** > **[!UICONTROL Instalação da Administração]** > **[!UICONTROL Controles de Segurança]** > **[!UICONTROL Acesso à Rede]** > **[!UICONTROL Novo]**.

![Para adicionar IPs do Marketo Measure aos Intervalos de IP Confiáveis em](assets/compliance-resources-1.png)
