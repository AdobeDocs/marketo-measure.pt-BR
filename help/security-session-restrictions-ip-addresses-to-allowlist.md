---
description: Lista os intervalos IP do Salesforce a serem incluídos na lista de permissões para que o Marketo Measure possa se conectar quando restrições de sessão forem impostas
title: Restrições de Sessão de Segurança - Endereços IP a Serem Incluídos na lista de permissões
exl-id: aaf5190f-893c-4872-8d03-93f516e70a59
feature: Tracking
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '94'
ht-degree: 7%

---

# Restrições de sessão de segurança: Endereços IP para incluir na lista de permissões {#security-session-restrictions-ip-addresses-to-allowlist}

Incluir na lista de permissões Se houver [Configurações de Segurança de Sessão](https://help.salesforce.com/articleView?id=admin_sessions.htm&type=0){target="_blank"} em vigor, impedindo que Endereços IP específicos enviem/enviem dados para a instância [!DNL Salesforce], precisaremos dos seguintes intervalos IP para permitir que [!DNL Marketo Measure] envie dados para [!DNL Salesforce]:

* 52.162.84.192 - 52.162.84.207
* 23.100.229.112 - 23.100.229.127
* 20.186.163.0 - 20.186.163.15

Para adicionar IPs [!DNL Marketo Measure] aos Intervalos IP Confiáveis na Salesforce, clique em **[!UICONTROL Instalação]** > **[!UICONTROL Instalação da Administração]** > **[!UICONTROL Controles de Segurança]** > **[!UICONTROL Acesso à Rede]** > **[!UICONTROL Novo]**.

![Para adicionar IPs do Marketo Measure aos Intervalos de IP Confiáveis em](assets/compliance-resources-1.png)
