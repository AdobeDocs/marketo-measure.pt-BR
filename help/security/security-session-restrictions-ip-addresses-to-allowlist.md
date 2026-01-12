---
description: Restrições de Sessão de Segurança - Endereços IP a Serem Incluídos na lista de permissões
title: Restrições de Sessão de Segurança - Endereços IP a Serem Incluídos na lista de permissões
exl-id: aaf5190f-893c-4872-8d03-93f516e70a59
feature: Tracking
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '83'
ht-degree: 8%

---


# Restrições de sessão de segurança: Endereços IP para incluir na lista de permissões {#security-session-restrictions-ip-addresses-to-allowlist}

Incluir na lista de permissões Se houver [Configurações de Segurança de Sessão](https://help.salesforce.com/articleView?id=admin_sessions.htm&type=0){target="_blank"} em vigor, impedindo que Endereços IP específicos enviem/enviem dados para a instância [!DNL Salesforce], precisaremos dos seguintes intervalos IP para permitir que [!DNL Marketo Measure] envie dados para [!DNL Salesforce]:

* 52.162.84.192 - 52.162.84.207
* 23.100.229.112 - 23.100.229.127
* 20.186.163.0 - 20.186.163.15

Para adicionar IPs [!DNL Marketo Measure] aos Intervalos IP Confiáveis na Salesforce, clique em **[!UICONTROL Instalação]** > **[!UICONTROL Instalação da Administração]** > **[!UICONTROL Controles de Segurança]** > **[!UICONTROL Acesso à Rede]** > **[!UICONTROL Novo]**.

![Página do Salesforce Network Access para adicionar intervalos IP confiáveis](assets/1.png)
