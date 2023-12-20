---
description: Dados coletados pelo JavaScript - [!DNL Marketo Measure] - Documentação do produto
title: Dados coletados pelo JavaScript
feature: Tracking
source-git-commit: 4d91899f6126a83b29170c7c5bbe146ed49ad9b0
workflow-type: tm+mt
source-wordcount: '232'
ht-degree: 8%

---

# Dados coletados pelo JavaScript {#data-collected-by-javascript}

Saiba mais sobre os dados coletados pelo Marketo Measure JavaScript na implantação.

Exemplo de solicitação:
`https://cdn.bizible.com/m/ipv?_biz_r=https%3A%2F%2Fwww.google.com%2F&_biz_h=-1801745101&_biz_u=7059e81415f34f7bbaf40fe32fdcba21&_biz_s=8cbeed&_biz_l=https%3A%2F%2Fwww.zendesk.com%2Fservice%2F&_biz_t=1676483822155&_biz_i=Customer%20service%20software%20for%20the%20best%20customer%20experiences%20%7C%20Zendesk&_biz_n=0&rnd=235938&cdn_o=a&_biz_z=1676483822155`

O Marketo Measure coleta os seguintes dados comuns para todos os tipos de solicitações:

<table>
<thead>
  <tr>
    <th>Origem</th>
    <th>Nome</th>
    <th>Tipo de dados</th>
    <th>Finalidade</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Cabeçalho da solicitação</td>
    <td>Endereço IP</td>
    <td>string</td>
    <td>O local do usuário é inferido por meio de pesquisa de GeoIP. Esses dados são temporários e não são armazenados permanentemente.</td>
  </tr>
  <tr>
    <td>Cabeçalho da solicitação</td>
    <td>Sequência agente-usuário</td>
    <td>string</td>
    <td>Determina qual dispositivo o usuário está usando.</td>
  </tr>
  <tr>
    <td>Parâmetro de consulta</td>
    <td>_biz_u</td>
    <td>string</td>
    <td>ID do cookie da Bizible</td>
  </tr>
  <tr>
    <td>Parâmetro de consulta</td>
    <td>_biz_l</td>
    <td>string</td>
    <td>URL da página atual</td>
  </tr>
  <tr>
    <td>Parâmetro de consulta</td>
    <td>_biz_t</td>
    <td>long</td>
    <td>Carimbo de data e hora da atividade</td>
  </tr>
  <tr>
    <td>Parâmetro de consulta</td>
    <td>_biz_i</td>
    <td>string</td>
    <td>Título da página atual</td>
  </tr>
</tbody>
</table>

Além dos dados comuns acima, o bizible.js também anexa dados adicionais, dependendo dos tipos de solicitação, conforme especificado abaixo:

<table>
<thead>
  <tr>
    <th>Tipo de solicitação</th>
    <th>Caminho da solicitação</th>
    <th>Parâmetro de consulta adicional</th>
    <th>Tipo de dados</th>
    <th>Finalidade</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Pageview</td>
    <td>/ipv</td>
    <td>_biz_r</td>
    <td>string</td>
    <td>URL da página de referência.</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td>_biz_h</td>
    <td>string</td>
    <td>Resolução de tela do cliente com hash.</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td>_biz_c</td>
    <td>string</td>
    <td>Parâmetro opcional. Se esse parâmetro estiver presente, ele indicará que o locatário configura o bizible.js para aguardar o consentimento dos usuários antes do rastreamento e que o bizible.js recebeu o consentimento do usuário para ser rastreado.</td>
  </tr>
  <tr>
    <td>Envios de formulário</td>
    <td>/form</td>
    <td>e-mail</td>
    <td>string</td>
    <td>Endereço de email de texto sem formatação.</td>
  </tr>
  <tr>
    <td>Mapeamento de ID de usuário</td>
    <td>/u</td>
    <td>mapType</td>
    <td>enum</td>
    <td>Que tipo de mapeamento de id de usuário o bizible.js detectou (Marketo munchkin id e Adobe ECID)</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td>mapValue</td>
    <td>string</td>
    <td>O valor real da ID de cookie de terceiros da integração acima.</td>
  </tr>
</tbody>
</table>

>[!NOTE]
>
>Bizible é o antigo nome de Marketo Measure.
