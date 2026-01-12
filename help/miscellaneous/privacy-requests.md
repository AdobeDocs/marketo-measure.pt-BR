---
description: Solicitações de Privacidade - [!DNL Marketo Measure]
title: Solicitações de privacidade
exl-id: 883e475f-9868-412a-b505-230556f38484
feature: APIs, Tracking
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '255'
ht-degree: 25%

---


# Solicitações de privacidade {#privacy-requests}

Este documento fornece uma visão geral do gerenciamento de solicitações individuais de privacidade de dados que você pode enviar para [!DNL Marketo Measure] por meio da interface do usuário do [!DNL Privacy Service] e da API do **[!DNL Privacy Service]**.

Você pode enviar solicitações individuais para acessar e excluir dados do consumidor de [!DNL Marketo Measure] de duas maneiras:

* Por meio da [[!DNL Privacy Service] interface](https://experienceleague.adobe.com/docs/experience-platform/privacy/ui/overview.html?lang=pt-BR){target="_blank"}.
* Por meio da API **[!DNL Privacy Service]**. Consulte a documentação [aqui](https://experienceleague.adobe.com/docs/experience-platform/privacy/api/overview.html?lang=pt-BR){target="_blank"} e a referência da API [aqui](https://developer.adobe.com/experience-platform-apis/references/privacy-service/){target="_blank"}.

O [Privacy Service](https://experienceleague.adobe.com/docs/experience-platform/privacy/home.html?lang=pt-BR){target="_blank"} oferece suporte a dois tipos de solicitações: acesso e exclusão de dados.

Saiba como criar solicitações de Acesso e Exclusão.

## Configuração necessária para enviar solicitações para o Marketo Measure {#required-setup-to-send-requests-for-marketo-measure}

Para fazer solicitações de Acesso e Exclusão de dados para [!DNL Marketo Measure], você deve:

1. Identificar o seguinte:

   a. ID de organização IMS

   b. Endereço de e-mail da pessoa sobre a qual deseja agir

   Uma ID de organização IMS é uma string de 24 caracteres alfanuméricos anexada com @AdobeOrg. Se a sua equipe de marketing ou o administrador interno do sistema da Adobe não souber a ID de organização IMS, entre em contato com o Atendimento ao cliente da Adobe em gdprsupport@adobe.com. Você precisará da ID de organização IMS para enviar solicitações à API de privacidade.

1. Em [!DNL Privacy Service], você pode enviar solicitações de Acesso e Exclusão para [!DNL Marketo Measure] e verificar o status das solicitações existentes.

## Valores de campo obrigatórios em solicitações JSON de [!DNL Marketo Measure] {#required-field-values-in-marketo-measure-json-requests}

&quot;companyContexts&quot;:

* &quot;namespace&quot;: **imsOrgID**
* &quot;value&quot;: `<Your IMS Org ID Value>`

&quot;users&quot;:

* &quot;ação&quot;: [!UICONTROL acessar] ou excluir
* &quot;userIDs&quot;
   * &quot;namespace&quot;: email
   * &quot;type&quot;: standard
   * &quot;value&quot;: `<Data Subject's Email Address>`

&quot;include&quot;:

* **marketoMeasure** (que é o produto do Adobe que se aplica à solicitação)

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
