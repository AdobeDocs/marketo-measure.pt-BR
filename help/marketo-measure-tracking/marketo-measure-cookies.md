---
description: '[!DNL Marketo Measure] Cookies - [!DNL Marketo Measure]'
title: '[!DNL Marketo Measure] Cookies'
exl-id: de6e35ae-af92-43ba-8416-3e07d3dd470c
feature: Tracking
hidefromtoc: true
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '386'
ht-degree: 85%

---

# Cookies do Marketo Measure {#marketo-measure-cookies}

Saiba mais sobre os vários Cookies do [!DNL Marketo Measure] carregados no site quando você aplica o JavaScript do [!DNL Marketo Measure] para suas páginas de destino. Essas informações podem ser úteis para a equipe de desenvolvimento da Web durante a implementação.

>[!IMPORTANT]
>
>Devido a preocupações com a privacidade, cookies de terceiros serão desativados. A desativação de cookies de terceiros no terceiro trimestre de 2024 anunciada pelo Google Chrome marca efetivamente o fim dessa forma de rastreamento. Como resultado, a Adobe descontinuará as funções do Marketo Measure que dependem de cookies de terceiros, mais especificamente, o rastreamento entre domínios e a atribuição de visualização, que usam o cookie de impressão Google/DoubleClick. Nenhuma outra função do Marketo Measure será afetada. O uso de cookies próprios também não será afetado. À luz do cronograma do Google, a data esperada de descontinuação das duas funções acima é de 01/06/2024. Os dados relacionados coletados antes dessa data permanecerão disponíveis aos clientes da Adobe.

| Nome do cookie | Tipo de cookie | Finalidade | Expiração | O sinalizador de segurança está ativado? | O sinalizador somente HTTP está ativado? | Definidor de cookies |
| --- | --- | --- | --- | --- | --- | --- |
| `_biz_uid` | Próprio | Identifique exclusivamente um usuário no domínio atual. | 1 ano | Não | Não | `bizible.js` |
| `_biz_nA` | Próprio | Um número de sequência que o Marketo Measure inclui para todas as solicitações para fins de diagnóstico interno. | 1 ano | Não | Não | `bizible.js` |
| `_biz_flagsA` | Próprio | Um cookie que armazena várias informações do usuário, como envio de formulário, migração entre domínios, pixel de viewthrough, status de rastreamento de recusa, etc. | 1 ano | Não | Não | `bizible.js` |
| `_biz_pendingA` | Próprio | Armazena temporariamente dados de análise até serem enviados com sucesso ao servidor do Marketo Measure. | 1 ano | Não | Não | `bizible.js` |
| `_biz_ABTestA` | Próprio | Lista de somas de verificação dos dados ABTests do Otimizely e Visual Web Otimizer que já foram relatados, impedindo `bizible.js` de reenviar dados coletados. | 1 ano | Não | Não | `bizible.js` |
| `_biz_EventA` | Próprio | Lista de somas de verificação relatadas por Eventos Bizible para impedir que `bizible.js` reenvie dados coletados. | 1 ano | Não | Não | `bizible.js` |
| `_biz_su` | Próprio | ID de usuário universal para identificar um usuário em vários domínios, aplicável somente a locatários com integração que ignora as limitações de ITP. | 1 ano | Sim | Não | Edgecast |
| `_BUID` | Terceiro, domain=.bizible.com | ID de usuário universal para identificar um usuário em vários domínios. | 1 ano | Sim | Não | Edgecast |
| `_BUID` | Terceiro, domain=.bizibly.com | Mapeamento entre a ID do cookie do Marketo Measure no domínio do locatário e sua ID do cookie de impressão do Doubleclick. | 1 ano | Sim | Não | Edgecast |

Se um aviso do firewall de aplicativo web (WAF) for acionado durante a configuração do JavaScript, os usuários poderão desativar essa regra do WAF ou incluir os cookies na lista de permissões, como no exemplo abaixo:

![Se um aviso do WAF (Firewall de Aplicativo Web) for disparado durante a JavaScript](assets/adding-script-1.png)
