---
description: Solicitações de privacidade - [!DNL Marketo Measure]
title: Solicitações de privacidade
exl-id: 883e475f-9868-412a-b505-230556f38484
feature: APIs, Tracking
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '249'
ht-degree: 0%

---

# Solicitações de privacidade {#privacy-requests}

Este documento fornece uma visão geral do gerenciamento de solicitações individuais de privacidade de dados que você pode enviar para o [!DNL Marketo Measure] por meio da [!DNL Privacy Service] A interface do usuário e o **[!DNL Privacy Service]API**.

É possível enviar solicitações individuais para acessar e excluir dados do consumidor do [!DNL Marketo Measure] de duas formas:

* Por meio da [[!DNL Privacy Service] IU](https://experienceleague.adobe.com/docs/experience-platform/privacy/ui/overview.html){target="_blank"}.
* Por meio da **[!DNL Privacy Service]API**. Consulte a documentação [aqui](https://experienceleague.adobe.com/docs/experience-platform/privacy/api/overview.html){target="_blank"} and the API reference [here](https://developer.adobe.com/experience-platform-apis/references/privacy-service/){target="_blank"}.

A variável [Privacy Service](https://experienceleague.adobe.com/docs/experience-platform/privacy/home.html){target="_blank"} O oferece suporte a dois tipos de solicitações: acesso aos dados e exclusão de dados.

Saiba como criar solicitações de Acesso e Exclusão.

## Configuração necessária para enviar solicitações para o Marketo Measure {#required-setup-to-send-requests-for-marketo-measure}

Para fazer solicitações de Acesso e Exclusão de dados para [!DNL Marketo Measure], você deve:

1. Identifique o seguinte:

   a. ID de organização IMS

   b. Endereço de e-mail da pessoa sobre a qual deseja agir

   Uma ID de organização IMS é uma sequência de 24 caracteres alfanuméricos anexada com @AdobeOrg. Se a sua equipe de marketing ou o administrador interno do sistema Adobe não souber a ID de organização IMS, entre em contato com o Atendimento ao cliente da Adobe em gdprsupport@adobe.com. Você precisa da ID de organização IMS para enviar solicitações à API de privacidade.

1. Entrada [!DNL Privacy Service], você pode enviar solicitações de Acesso e Exclusão para [!DNL Marketo Measure]e verifique o status das solicitações existentes.

## Valores de campo obrigatórios em [!DNL Marketo Measure] Solicitações JSON {#required-field-values-in-marketo-measure-json-requests}

&quot;companyContexts&quot;:

* &quot;namespace&quot;: **imsOrgID**
* &quot;value&quot;: `<Your IMS Org ID Value>`

&quot;users&quot;:

* &quot;action&quot;: [!UICONTROL acesso] ou excluir
* &quot;userIDs&quot;
   * &quot;namespace&quot;: email
   * &quot;type&quot;: standard
   * &quot;value&quot;: `<Data Subject's Email Address>`

&quot;include&quot;:

* **marketoMeasure** (que é o produto Adobe que se aplica à solicitação)

&quot;Regulamentação&quot;:

* **gdpr**, **ccpa**, **pdpa**, **lgpd_bra** ou **nzpa_nzl** (que é o regulamento de privacidade que se aplica à solicitação)

## Exemplo um: solicitação de exclusão do GDPR {#gdpr-delete-request}

Solicitação JSON

```text
{
  "companyContexts": [
    {
      "namespace": "imsOrgID",
      "value": "1231659F56A68A8B7F000101@AdobeOrg"
    }
  ],
  "users": [
    {
      "action": [
        "delete"
      ],
      "userIDs": [
        {
          "namespace": "email",
          "type": "standard",
          "value": "john.doe@adobe.com"
        }
      ]
    }
  ],
  "include": [
    "marketoMeasure"
  ],
  "regulation": "gdpr",
}
```

Resposta JSON

```text
{
  "requestId": "16331241037112570RX-245",
  "totalRecords": 1,
  "jobs": [
    {
      "jobId": "997b01e3-9568-402c-904b-b4e60a437875",
      "customer": {
        "user": {
          "action": [
            "delete"
          ],
          "userIDs": [
            {
              "namespace": "email",
              "value": "john.doe@adobe.com",
              "type": "standard",
              "namespaceId": 6,
              "isDeletedClientSide": false
            }
          ]
        }
      }
    }
  ]
}
```

## Exemplo dois: solicitação de acesso ao CCPA {#ccpa-access-request}

Solicitação JSON

```text
{
  "companyContexts": [
    {
      "namespace": "imsOrgID",
      "value": "1231659F56A68A8B7F000101@AdobeOrg"
    }
  ],
  "users": [
    {
      "action": [
        "access"
      ],
      "userIDs": [
        {
          "namespace": "email",
          "type": "standard",
          "value": "john.doe@adobe.com"
        }
      ]
    }
  ],
  "include": [
    "marketoMeasure"
  ],
  "regulation": "ccpa",
}
```

Resposta JSON

```text
{
  "requestId": "16329573462631890RX-207",
  "totalRecords": 1,
  "jobs": [
    {
      "jobId": "3115e42d-011b-47ab-a2b0-ed4356af4d3e",
      "customer": {
        "user": {
          "action": [
            "access"
          ],
          "userIDs": [
            {
              "namespace": "email",
              "value": "john.doe@adobe.com",
              "type": "standard",
              "namespaceId": 6,
              "isDeletedClientSide": false
            }
          ]
        }
      }
    }
  ]
}
```
