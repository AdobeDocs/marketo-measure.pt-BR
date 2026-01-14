---
description: Orientação sobre dados coletados pela JavaScript para usuários do Marketo Measure
title: Dados coletados por JavaScript
feature: Tracking
exl-id: 83814168-9d3e-45ac-b514-df58f0b2e90b
hidefromtoc: true
source-git-commit: 0299ef68139df574bd1571a749baf1380a84319b
workflow-type: tm+mt
source-wordcount: '219'
ht-degree: 77%

---

# Dados coletados por JavaScript {#data-collected-by-javascript}

Saiba mais sobre os dados coletados pelo JavaScript do Marketo Measure na implantação.

**Pedido de amostra:**

```text
https://cdn.bizible.com/m/ipv?_biz_r=https%3A%2F%2Fwww.google.com%2F&_biz_h=-1801745101&_biz_u=7059e81415f34f7bbaf40fe32fdcba21&_biz_s=8cbeed&_biz_l=https%3A%2F%2Fwww.zendesk.com%2Fservice%2F&_biz_t=1676483822155&_biz_i=Customer%20service%20software%20for%20the%20best%20customer%20experiences%20%7C%20Zendesk&_biz_n=0&rnd=235938&cdn_o=a&_biz_z=1676483822155
```

<br>

O Marketo Measure coleta os seguintes dados comuns para todos os tipos de solicitações:

| Origem | Nome | Tipo de dados | Finalidade |
| --- | --- | --- | --- |
| Cabeçalho da solicitação | Endereço IP | string | A localização do usuário é inferida através da pesquisa GeoIP. Esses dados são temporários e não são armazenados permanentemente. |
| Cabeçalho da solicitação | String de user-agent | string | Determina que dispositivo o usuário está usando. |
| Parâmetro da consulta | `_biz_u` | string | ID do cookie Bizible. |
| Parâmetro da consulta | `_biz_l` | string | URL da página atual. |
| Parâmetro da consulta | `_biz_t` | long | Carimbo de data/hora da atividade. |
| Parâmetro da consulta | `_biz_i` | string | Título da página atual. |

Além dos dados comuns acima, o bizible.js também anexa dados adicionais, dependendo dos tipos de solicitação especificados abaixo:

| Tipo de solicitação | Caminho da solicitação | Parâmetro de consulta adicional | Tipo de dados | Finalidade |
| --- | --- | --- | --- | --- |
| PageView | `/ipv` | `_biz_r` | string | URL da página referenciadora. |
|  |  | `_biz_h` | string | Resolução de tela do cliente com hash. |
|  |  | `_biz_c` | string | Parâmetro opcional. Se esse parâmetro estiver presente, ele indicará que o locatário configura `bizible.js` para aguardar o consentimento do usuário antes do rastreamento e que `bizible.js` recebeu o consentimento do usuário para ser rastreado. |
| Envios do formulário | `/frm` | `eMail` | string | Endereço de email em texto simples. |
| Mapeamento de ID de usuário | `/u` | `mapType` | enumeração | Que tipo de mapeamento de ID de usuário `bizible.js` foi detectado (Marketo Munchkin id e Adobe ECID) |
|  |  | `mapValue` | string | O valor real da ID do cookie de terceiros da integração acima. |

>[!NOTE]
>
>Bizible é o antigo nome do Marketo Measure.
