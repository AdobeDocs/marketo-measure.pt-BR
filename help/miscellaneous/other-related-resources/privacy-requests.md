---
description: Solicitações de privacidade - [!DNL Marketo Measure] - Documentação do produto
title: Solicitações de privacidade
exl-id: 883e475f-9868-412a-b505-230556f38484
source-git-commit: 09ffdbb0b1baeed870a3145268997e63a3707c97
workflow-type: tm+mt
source-wordcount: '287'
ht-degree: 1%

---

# Solicitações de privacidade {#privacy-requests}

Este documento fornece uma visão geral do gerenciamento de solicitações individuais de privacidade de dados para as quais você pode enviar [!DNL Marketo Measure] através da [!DNL Privacy Service] A interface do usuário e a **[!DNL Privacy Service]API**.

Você pode enviar solicitações individuais para acessar e excluir dados do consumidor de [!DNL Marketo Measure] de duas formas:

* Por meio da [[!DNL Privacy Service] interface](https://experienceleague.adobe.com/docs/experience-platform/privacy/ui/overview.html){target=&quot;_blank&quot;}.
* Por meio da **[!DNL Privacy Service]API**. Veja a documentação [here](https://experienceleague.adobe.com/docs/experience-platform/privacy/api/overview.html){target=&quot;_blank&quot;} e a referência da API [here](https://developer.adobe.com/experience-platform-apis/references/privacy-service/){target=&quot;_blank&quot;}.

O [Privacy Service](https://experienceleague.adobe.com/docs/experience-platform/privacy/home.html){target=&quot;_blank&quot;} oferece suporte a dois tipos de solicitações: acesso aos dados e exclusão dos dados.

Saiba como criar solicitações de acesso e exclusão.

## Configuração necessária para enviar solicitações para a Medida do Marketo {#required-setup-to-send-requests-for-marketo-measure}

Para fazer solicitações de acesso e exclusão de dados para [!DNL Marketo Measure], você deve:

1. Identifique o seguinte:

   a. ID organizacional IMS

   b. Endereço de email da pessoa em quem você deseja agir

   Uma ID de organização IMS é uma sequência de 24 caracteres alfanuméricos anexada com @AdobeOrg. Se a equipe de marketing ou o administrador interno do sistema do Adobe não souber a ID organizacional IMS da organização, entre em contato com o Atendimento ao cliente do Adobe em gdprsupport@adobe.com. Você precisa da ID de organização IMS para enviar solicitações à API de privacidade.

1. Em [!DNL Privacy Service], você pode enviar solicitações de Acesso e Exclusão para [!DNL Marketo Measure]e verificar o status de solicitações existentes.

## Valores de campo obrigatórios em [!DNL Marketo Measure] Solicitações JSON {#required-field-values-in-marketo-measure-json-requests}

&quot;companyContexts&quot;:

* &quot;namespace&quot;: **imsOrgID**
* &quot;Valor&quot;: `<Your IMS Org ID Value>`

&quot;usuários&quot;:

* &quot;Ação&quot;: ou [!UICONTROL access] ou excluir
* &quot;userIDs&quot;:
   * &quot;namespace&quot;: email
   * &quot;type&quot;: padrão
   * &quot;Valor&quot;: `<Data Subject's Email Address>`

&quot;include&quot;:

* **marketoMeasure** (que é o Adobe product que se aplica à solicitação)

&quot;regulamento&quot;:

* **gdpr**, **ccpa**, **pdpa**, **lgpd_bra** ou **nzpa_nzl** (que é o regulamento de privacidade que se aplica à solicitação)

## Exemplo Um: Solicitação de exclusão do RGPD {#gdpr-delete-request}

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

## Exemplo dois: Solicitação de acesso à CCPA {#ccpa-access-request}

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
