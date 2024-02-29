---
unique-page-id: 18874554
description: Geração e mapeamento de pontos de contato - [!DNL Marketo Measure]
title: Geração e mapeamento de pontos de contato
exl-id: bb4988f5-4fbc-43b7-9544-da541b8e1d32
feature: Touchpoints
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '365'
ht-degree: 78%

---

# Geração e mapeamento de pontos de contato {#touchpoint-generation-and-mapping}

 As histórias de atribuição do [!DNL Marketo Measure] dependem de dois processos:

* Geração de pontos de contato, que cria pontos de contato que representam as interações de uma pessoa com seus esforços de marketing e vendas
* Mapeamento de pontos de contato, que atribui pontos de contato ao canal e subcanal apropriados

Para aproveitar ao máximo o [!DNL Marketo Measure], você deve trabalhar com o [!DNL Marketo Measure] rep para personalizar ambos os processos de acordo com as necessidades da sua organização.

Métodos de geração de pontos de contato

O processo de geração de pontos de contato responde à pergunta: “Como o [!DNL Marketo Measure] saberá que isso ocorreu?” Dependendo do seu conjunto de recursos e dos tipos de interações que seus clientes potenciais podem ter, há até três maneiras que o [!DNL Marketo Measure] pode captar uma interação e criar um ponto de contato para representá-la.

>[!IMPORTANT]
>
>O [!DNL Marketo Measure] gera apenas um ponto de contato por sessão. Se mais de um formulário tiver sido preenchido, somente o primeiro preenchimento será capturado.

| **Tipo de interação** | **Exemplo** | **Método de geração de pontos de contato** |
|---|---|---|
| Online, em seus sites | Preenchimento de formulários | JavaScript do [!DNL Marketo Measure] |
| Offline; Online não nos seus sites | Feiras de negócios; o parceiro de associação de conteúdo fornece uma lista de clientes potenciais que se envolveram com seu conteúdo | Associação à campanha de CRM sincronizada com o [!DNL Marketo Measure], seja por meio da definição do Tipo de sincronização de campanha diretamente na campanha ou da definição das regras na página Campanhas no [!DNL Marketo Measure] |
| Atividade de vendas | Chamada de saída por SDR | Registro de atividade de CRM (tarefa ou evento) sincronizado com o [!DNL Marketo Measure], por meio da lógica na página [!UICONTROL Atividades] no [!DNL Marketo Measure] |

Métodos de mapeamento de pontos de contato

O processo de mapeamento de pontos de contato responde à pergunta: “Após a criação desse ponto de contato, como o [!DNL Marketo Measure] saberá a que canal e subcanal ele pertence?” Cada método de geração de pontos de contato tem seu próprio método de mapeamento.

| **Tipo de interação** | **Método de geração** | **Método de mapeamento** |
|---|---|---|
| Online, em seus sites | JavaScript do [!DNL Marketo Measure] | Por meio da página [!DNL Online Channels] no [!DNL Marketo Measure], referenciando valores de UTM, a página de destino e informações da página de referência |
| Offline; Online, não em seus sites | Sincronização da associação à campanha de CRM | Por meio da página [!UICONTROL Canais offline] no [!DNL Marketo Measure], referenciando o Tipo de campanha |
| Atividade de vendas | Sincronização de atividade do CRM | Por meio da página [!UICONTROL Canais online] no [!DNL Marketo Measure], referenciando o Nome da campanha atribuído na página [!UICONTROL Atividades] |

>[!MORELIKETHIS]
>
>* [Mapeamento de pontos de contato online para  [!DNL Marketo Measure] canais/subcanais](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md)
>* [Sincronização de campanhas de CRM no SFDC](/help/channel-tracking-and-setup/offline-channels/legacy-processes/syncing-offline-campaigns.md)
>* [Sincronização de campanhas de CRM no  [!DNL Marketo Measure]](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md)
>* [Mapeamento de campanhas de CRM para canais/subcanais do  [!DNL Marketo Measure] ](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md)
>* [Criação de pontos de contato a partir de Atividades de vendas](/help/advanced-marketo-measure-features/activities-attribution/salesforce-activities-attribution.md)
>* [Perguntas frequentes sobre atividades e mapeamento de pontos de contato de atividades para canais/subcanais](/help/advanced-marketo-measure-features/activities-attribution/activities-attribution-faq.md)

