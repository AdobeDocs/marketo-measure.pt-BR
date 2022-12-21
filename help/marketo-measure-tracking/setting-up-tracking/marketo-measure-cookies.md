---
unique-page-id: 18874590
description: "[!DNL Marketo Measure] Cookies - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Cookies"
exl-id: de6e35ae-af92-43ba-8416-3e07d3dd470c
source-git-commit: 3a13ab3e497652d1975e69280a3d224ac95504aa
workflow-type: tm+mt
source-wordcount: '205'
ht-degree: 0%

---

# Cookies de medida do Marketo {#marketo-measure-cookies}

Saiba mais sobre as várias [!DNL Marketo Measure] Os cookies que são carregados no site quando você aplica a variável [!DNL Marketo Measure] JavaScript para suas landing pages. Essas informações podem ser úteis para a equipe de desenvolvimento da Web durante a implementação.

| **Nome do cookie** | **Tipo de cookie** | **Finalidade** |
|---|---|---|
| _BUID | Terceiros, salvo no domínio .bizible.com | ID de usuário universal para identificar o mesmo usuário em vários domínios de clientes. |
| _biz_uid | Primário | ID de usuário no domínio atual. |
| _biz_sid | Primário | ID da sessão do usuário. |
| _biz_flagsA | Primário | Um único cookie que armazena várias informações, como se o usuário enviou um formulário, executou uma migração entre domínios, enviou um pixel de visualização, recusou o rastreamento etc. |
| _biz_nA | Primário | Número de sequência que [!DNL Marketo Measure] inclui, para todas as solicitações, para fins de diagnóstico interno |
| _biz_dfsA | Primário | Armazena temporariamente os dados de envio de formulário que ocorrem antes de [!DNL bizible.js] O recebe um JS de configuração para determinar se o formulário de rastreamento no HTTPS está ativado ou não. |
| _biz_pendingA | Primário | Armazena temporariamente os dados analíticos que não foram enviados com êxito para o [!DNL Marketo Measure] servidor ainda. |

Se um aviso do Web Application Firewall (WAF) for acionado durante a configuração do JavaScript, os usuários poderão desativar essa regra WAF ou incluir os cookies na lista de permissões, como o exemplo abaixo:

![](assets/marketo-measure-cookies-1.png)
