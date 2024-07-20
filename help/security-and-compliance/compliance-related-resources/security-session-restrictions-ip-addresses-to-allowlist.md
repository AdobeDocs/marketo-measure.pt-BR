---
unique-page-id: 18874706
description: Restrições de sessão de segurança - Endereços IP para Incluir na lista de permissões - Marketo Measure - Documentação do produto
title: Restrições de sessão de segurança - Endereços IP para a Inclui na lista de permissões
exl-id: aaf5190f-893c-4872-8d03-93f516e70a59
feature: Tracking
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '84'
ht-degree: 8%

---

# Restrições de sessão de segurança: Endereços IP para incluir na lista de permissões {#security-session-restrictions-ip-addresses-to-allowlist}

Incluir na lista de permissões Se houver [Configurações de Segurança de Sessão](https://help.salesforce.com/articleView?id=admin_sessions.htm&amp;type=0){target="_blank"} em vigor, impedindo que Endereços IP específicos enviem/enviem dados para a instância [!DNL Salesforce], precisaremos dos seguintes intervalos IP para permitir que [!DNL Marketo Measure] envie dados para [!DNL Salesforce]:

* 52.162.84.192 - 52.162.84.207
* 23.100.229.112 - 23.100.229.127
* 20.186.163.0 - 20.186.163.15

Para adicionar IPs [!DNL Marketo Measure] aos Intervalos de IPs Confiáveis no Salesforce, clique em **[!UICONTROL Instalação]** > **[!UICONTROL Configuração da Administração]** > **[!UICONTROL Controles de Segurança]** > **[!UICONTROL Acesso à Rede]** > **[!UICONTROL Novo]**.

![](assets/1.png)
