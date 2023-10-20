---
unique-page-id: 18874590
description: “Cookies do [!DNL Marketo Measure] - [!DNL Marketo Measure] - Documentação do produto”
title: Cookies do [!DNL Marketo Measure]”
exl-id: de6e35ae-af92-43ba-8416-3e07d3dd470c
feature: Tracking
source-git-commit: 69304dddf3569cd92c95a50e9a2e346acdad0f43
workflow-type: tm+mt
source-wordcount: '296'
ht-degree: 42%

---

# Cookies do Marketo Measure {#marketo-measure-cookies}

Saiba mais sobre os vários Cookies do [!DNL Marketo Measure] carregados no site quando você aplica o JavaScript do [!DNL Marketo Measure] para suas páginas de destino. Essas informações podem ser úteis para a equipe de desenvolvimento da Web durante a implementação.

<table>
<thead>
  <tr>
    <th>Nome do cookie</th>
    <th>Tipo de cookie</th>
    <th>Finalidade</th>
    <th>Expiração</th>
    <th>O sinalizador seguro está definido?<br></th>
    <th>O sinalizador Somente HTTP está definido?</th>
    <th>Definidor de cookies</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>_biz_uid</td>
    <td>Próprio</td>
    <td>Identifique exclusivamente um usuário no domínio atual.</td>
    <td>1 ano</td>
    <td>Não</td>
    <td>Não</td>
    <td>bizible.js</td>
  </tr>
  <tr>
    <td>_biz_nA</td>
    <td>Próprio</td>
    <td>Um número de sequência que o Marketo Measure inclui para todas as solicitações para fins de diagnóstico interno.</td>
    <td>1 ano</td>
    <td>Não</td>
    <td>Não</td>
    <td>bizible.js</td>
  </tr>
  <tr>
    <td>_biz_flagsA</td>
    <td>Próprio</td>
    <td>Um cookie que armazena várias informações do usuário, como envio de formulário, migração entre domínios, pixel de view-through, status de rastreamento de recusa, etc.</td>
    <td>1 ano</td>
    <td>Não</td>
    <td>Não</td>
    <td>bizible.js</td>
  </tr>
  <tr>
    <td>_biz_pendingA</td>
    <td>Próprio</td>
    <td>Armazena temporariamente dados de análise até serem enviados com êxito ao servidor do Marketo Measure.</td>
    <td>1 ano</td>
    <td>Não</td>
    <td>Não</td>
    <td>bizible.js</td>
  </tr>
  <tr>
    <td>_biz_ABTestA</td>
    <td>Próprio</td>
    <td>Lista de somas de verificação dos dados do Otimizely e do Visual Web Otimizer ABTests que já foram relatados, impedindo que o bizible.js reenvie dados coletados.</td>
    <td>1 ano</td>
    <td>Não</td>
    <td>Não</td>
    <td>bizible.js</td>
  </tr>
  <tr>
    <td>_biz_EventA</td>
    <td>Próprio</td>
    <td>Lista de somas de verificação relatadas pelos Eventos Bizible para impedir que o bizible.js reenvie dados coletados.</td>
    <td>1 ano</td>
    <td>Não</td>
    <td>Não</td>
    <td>bizible.js</td>
  </tr>
  <tr>
    <td>_biz_su</td>
    <td>Próprio</td>
    <td>ID de usuário universal para identificar um usuário em vários domínios, aplicável somente a locatários com integração que ignora as limitações de ITP.</td>
    <td>1 ano</td>
    <td>Sim</td>
    <td>Não</td>
    <td>Edgecast</td>
  </tr>
  <tr>
    <td>_BUID</td>
    <td>Terceiro, domain=.<a href="http://bizible.com/">bizible.com</a></td>
    <td>Universal user ID para identificar um usuário em vários domínios.</td>
    <td>1 ano</td>
    <td>Sim</td>
    <td>Não</td>
    <td>Edgecast</td>
  </tr>
  <tr>
    <td>_BUID</td>
    <td>Terceiro, domain=.<a href="http://bizibly.com/">bizibly.com</a></td>
    <td>Mapeamento entre a ID do cookie do Marketo Measure no domínio do locatário e a ID do cookie de impressão do Doubleclick.</td>
    <td>1 ano</td>
    <td>Sim</td>
    <td>Não</td>
    <td>Edgecast</td>
  </tr>
</tbody>
</table>

Se um aviso do Firewall de aplicativo Web (WAF) for acionado durante a configuração do JavaScript, os usuários poderão desativar essa regra do WAF ou incluir os cookies na lista de permissões, como no exemplo abaixo:

![](assets/marketo-measure-cookies-1.png)
