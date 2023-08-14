---
unique-page-id: 18874590
description: “Cookies do [!DNL Marketo Measure] - [!DNL Marketo Measure] - Documentação do produto”
title: Cookies do [!DNL Marketo Measure]”
exl-id: de6e35ae-af92-43ba-8416-3e07d3dd470c
feature: Tracking
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: ht
source-wordcount: '205'
ht-degree: 100%

---

# Cookies do Marketo Measure {#marketo-measure-cookies}

Saiba mais sobre os vários Cookies do [!DNL Marketo Measure] carregados no site quando você aplica o JavaScript do [!DNL Marketo Measure] para suas páginas de destino. Essas informações podem ser úteis para a equipe de desenvolvimento da Web durante a implementação.

| **Nome do cookie** | **Tipo de cookie** | **Finalidade** |
|---|---|---|
| _BUID | Terceiros, salvo no domínio .bizible.com | ID de usuário universal para identificar o mesmo usuário em vários domínios de clientes. |
| _biz_uid | Próprio | ID de usuário no domínio atual. |
| _biz_sid | Próprio | ID da sessão do usuário. |
| _biz_flagsA | Próprio | Um único cookie que armazena várias informações, como se o usuário enviou ou não um formulário, executou uma migração entre domínios, enviou um pixel viewthrough, optou por não ser rastreado, etc. |
| _biz_nA | Próprio | Número de sequência que o [!DNL Marketo Measure] inclui para todas as solicitações, para fins de diagnóstico interno |
| _biz_dfsA | Próprio | Armazena temporariamente dados de envio de formulário que ocorrem antes que o [!DNL bizible.js] receba um JS de configuração para determinar se o formulário de rastreamento em HTTPS está ativado. |
| _biz_pendingA | Próprio | Armazena temporariamente dados de análise que não ainda foram enviados com sucesso para o servidor do [!DNL Marketo Measure]. |

Se um aviso do Firewall de aplicativo Web (WAF) for acionado durante a configuração do JavaScript, os usuários poderão desativar essa regra do WAF ou incluir os cookies na lista de permissões, como no exemplo abaixo:

![](assets/marketo-measure-cookies-1.png)
