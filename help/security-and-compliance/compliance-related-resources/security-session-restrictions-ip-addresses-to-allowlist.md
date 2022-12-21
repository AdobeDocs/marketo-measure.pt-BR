---
unique-page-id: 18874706
description: Restrições de sessão de segurança - Endereços IP para Lista de permissões - Medida do Marketo - Documentação do produto
title: Restrições de sessão de segurança - Endereços IP para Lista de permissões
exl-id: aaf5190f-893c-4872-8d03-93f516e70a59
source-git-commit: b9d9e3110e87be0d6311c17b0ef76dfad8735a00
workflow-type: tm+mt
source-wordcount: '89'
ht-degree: 3%

---

# Restrições de sessão de segurança: Endereços IP a Lista de permissões {#security-session-restrictions-ip-addresses-to-allowlist}

Se houver [Configurações de segurança da sessão](https://help.salesforce.com/articleView?id=admin_sessions.htm&amp;type=0){target=&quot;_blank&quot;} está em vigor, impedindo que endereços IP específicos enviem/enviem dados para sua [!DNL Salesforce] por exemplo, precisaremos dos seguintes intervalos IP incluir na lista de permissões para permitir [!DNL Marketo Measure] para enviar dados para o [!DNL Salesforce]:

* 52.162.84.192 - 52.162.84.207
* 23.100.229.112 - 23.100.229.127
* 20.186.163.0 - 20.186.163.15

Para adicionar [!DNL Marketo Measure] IPs aos intervalos IP confiáveis no Salesforce, clique em **[!UICONTROL Configuração]** > **[!UICONTROL Configuração da administração]** > **[!UICONTROL Controles de segurança]** > **[!UICONTROL Acesso à rede]** > **[!UICONTROL Novo]**.

![](assets/1.png)
