---
unique-page-id: 18874554
description: Geração e mapeamento de ponto de contato - [!DNL Marketo Measure] - Documentação do produto
title: Geração e mapeamento de ponto de contato
exl-id: bb4988f5-4fbc-43b7-9544-da541b8e1d32
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '351'
ht-degree: 0%

---

# Geração e mapeamento de ponto de contato {#touchpoint-generation-and-mapping}

[!DNL Marketo Measure] as histórias de atribuição dobram em dois processos:

* Geração de ponto de contato, que cria pontos de contato que representam as interações de uma pessoa com seus esforços de marketing e vendas
* Mapeamento de ponto de contato, que credita pontos de contato ao canal e ao subcanal apropriados

Para que você aproveite ao máximo o [!DNL Marketo Measure], você deve trabalhar com [!DNL Marketo Measure] rep para personalizar ambos os processos para atender às necessidades de sua organização.

Métodos de geração de ponto de contato

O processo de geração de pontos de contato responde à pergunta &quot;Como [!DNL Marketo Measure] vai saber que isso ocorreu?&quot; Dependendo do seu conjunto de recursos e dos tipos de interações que seus clientes em potencial podem ter, há até três maneiras [!DNL Marketo Measure] O pode selecionar uma interação e criar um ponto de contato para representá-la.

| **Tipo de interação** | **Exemplo** | **Método de geração de ponto de contato** |
|---|---|---|
| Online, em seu(s) site(s) | Preenchimento do formulário | [!DNL Marketo Measure] JavaScript |
| Offline; Não online em seu(s) site(s) | feiras comerciais; O parceiro de sindicalização de conteúdo fornece uma lista de clientes potenciais envolvidos no seu conteúdo | Associação do CRM Campaign sincronizada com [!DNL Marketo Measure], definindo o Tipo de sincronização de campanha diretamente na campanha ou definindo regras na página Campanhas em [!DNL Marketo Measure] |
| Atividade de vendas | Chamada de saída por SDR | Registro de Atividade do CRM (Tarefa ou Evento) sincronizado com [!DNL Marketo Measure], com base na lógica da [!UICONTROL Atividades] em [!DNL Marketo Measure] |

Métodos de mapeamento de ponto de contato

O processo de mapeamento de pontos de contato responde à pergunta &quot;Depois que esse ponto de contato é criado, como [!DNL Marketo Measure] vai saber a que canal e subcanal pertence?&quot; Cada método de geração de ponto de contato tem seu próprio método de mapeamento de ponto de contato.

| **Tipo de interação** | **Método de geração** | **Método de mapeamento** |
|---|---|---|
| Online, em seu(s) site(s) | [!DNL Marketo Measure] JavaScript | Por meio da [!DNL Online Channels] em [!DNL Marketo Measure], referenciando valores de UTM, página de aterrissagem e informações da página de referência |
| Offline; Online, não em seu(s) site(s) | Sincronização de associação do CRM Campaign | Por meio da [!UICONTROL Canais offline] em [!DNL Marketo Measure]referenciando o Tipo de campanha |
| Atividade de vendas | Sincronização de atividade do CRM | Por meio da [!UICONTROL Canais online] em [!DNL Marketo Measure], referenciando o Nome da campanha atribuído no [!UICONTROL Atividades] página |

>[!MORELIKETHIS]
>
>* [Mapeamento de pontos de contato online para [!DNL Marketo Measure] Canais/Subcanais](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md)
>* [Sincronização de campanhas CRM de dentro do SFDC](/help/channel-tracking-and-setup/offline-channels/syncing-offline-campaigns.md)
>* [Sincronização de campanhas do CRM de dentro [!DNL Marketo Measure]](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md)
>* [Mapeamento de campanhas CRM para [!DNL Marketo Measure] Canais/Subcanais](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md)
>* [Criação de pontos de contato a partir de atividades de vendas](/help/advanced-marketo-measure-features/activities-attribution/salesforce-activities-attribution.md)
>* [Perguntas frequentes sobre atividades e mapeamento de atividades Pontos de contato para canais/subcanais](/help/advanced-marketo-measure-features/activities-attribution/activities-attribution-faq.md)


