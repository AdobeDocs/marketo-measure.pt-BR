---
unique-page-id: 18874590
description: "[!DNL Marketo Measure] Cookies - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Cookies"
exl-id: de6e35ae-af92-43ba-8416-3e07d3dd470c
feature: Tracking
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '205'
ht-degree: 0%

---

# Cookies do Marketo Measure {#marketo-measure-cookies}

Saiba mais sobre os vários [!DNL Marketo Measure] Cookies que são carregados no site quando você aplica a variável [!DNL Marketo Measure] JavaScript para suas páginas de aterrissagem. Essas informações podem ser úteis para a equipe de desenvolvimento da Web durante a implementação.

| **Nome do cookie** | **Tipo de cookie** | **Finalidade** |
|---|---|---|
| _BUID | Terceiro, salvo no domínio .bizible.com | ID de usuário universal para identificar o mesmo usuário nos domínios de vários clientes. |
| _biz_uid | Próprio | ID de usuário no domínio atual. |
| _biz_sid | Próprio | ID da sessão do usuário. |
| _biz_flagsA | Próprio | Um único cookie que armazena várias informações, como se o usuário enviou um formulário, executou uma migração entre domínios, enviou um pixel de viewthrough, optou por não ser rastreado etc. |
| _biz_nA | Próprio | Número de sequência que [!DNL Marketo Measure] inclui para todas as solicitações, para fins de diagnóstico interno |
| _biz_dfsA | Próprio | Armazena temporariamente dados de envio de formulário que ocorrem antes de [!DNL bizible.js] recebe um JS de configuração para determinar se o formulário de rastreamento em HTTPS está ativado. |
| _biz_pendingA | Próprio | Armazena temporariamente dados de análise que não foram enviados com sucesso para o [!DNL Marketo Measure] servidor ainda. |

Se um aviso do Web Application Firewall (WAF) for acionado durante a configuração do JavaScript, os usuários poderão desativar essa regra do WAF ou incluir os cookies na lista de permissões, como no exemplo abaixo:

![](assets/marketo-measure-cookies-1.png)
