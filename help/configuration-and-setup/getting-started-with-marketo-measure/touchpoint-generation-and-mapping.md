---
unique-page-id: 18874554
description: Geração e mapeamento de pontos de contato - [!DNL Marketo Measure] - Documentação do produto
title: Geração e mapeamento de touchpoint
exl-id: bb4988f5-4fbc-43b7-9544-da541b8e1d32
feature: Touchpoints
source-git-commit: 8ac315e7c4110d14811e77ef0586bd663ea1f8ab
workflow-type: tm+mt
source-wordcount: '374'
ht-degree: 2%

---

# Geração e mapeamento de touchpoint {#touchpoint-generation-and-mapping}

[!DNL Marketo Measure] as histórias de atribuição dependem de dois processos:

* Geração de pontos de contato, que cria pontos de contato que representam as interações de uma pessoa com seus esforços de marketing e vendas
* Mapeamento de ponto de contato, que credita pontos de contato ao canal e subcanal apropriados

Para aproveitar ao máximo o [!DNL Marketo Measure], você deve trabalhar com o [!DNL Marketo Measure] rep para personalizar ambos os processos de acordo com as necessidades da sua organização.

Métodos de geração de Touchpoint

O processo de geração de pontos de contato responde à pergunta &quot;Como o é [!DNL Marketo Measure] vai saber que isso ocorreu?&quot; Dependendo do seu conjunto de recursos e dos tipos de interações que seus clientes potenciais podem ter, há até três maneiras [!DNL Marketo Measure] pode pegar uma interação e criar um ponto de contato para representá-la.

>[!IMPORTANT]
>
>[!DNL Marketo Measure] gera apenas um Touchpoint por sessão. Se mais de um formulário tiver sido preenchido, somente o primeiro preenchimento será capturado.

| **Tipo de interação** | **Exemplo** | **Método de geração de ponto de contato** |
|---|---|---|
| Online, em seu(s) site(s) | Preenchimento de formulário | [!DNL Marketo Measure] JavaScript |
| Offline; online não disponível em seu(s) site(s) | Feiras de negócios; o parceiro de associação de conteúdo fornece uma lista de Líderes que se envolveram com seu conteúdo | Associação de campanha do CRM sincronizada com [!DNL Marketo Measure], definindo o Tipo de sincronização de campanha diretamente na campanha ou definindo as regras na página Campanhas no [!DNL Marketo Measure] |
| Atividade de vendas | Chamada de saída por SDR | Registro de Atividade CRM (Tarefa ou Evento) sincronizado com [!DNL Marketo Measure], por meio da lógica no [!UICONTROL Atividades] página em [!DNL Marketo Measure] |

Métodos de mapeamento de ponto de contato

O processo de mapeamento do ponto de contato responde à pergunta: &quot;Depois que esse ponto de contato é criado, como o [!DNL Marketo Measure] vai saber a que canal e subcanal ele pertence?&quot; Cada método de geração de ponto de contato tem seu próprio método de mapeamento de ponto de contato.

| **Tipo de interação** | **Método de geração** | **Método de mapeamento** |
|---|---|---|
| Online, em seu(s) site(s) | [!DNL Marketo Measure] JavaScript | Por meio da [!DNL Online Channels] página em [!DNL Marketo Measure], fazendo referência a valores UTM, página de aterrissagem e informações da página de referência |
| Offline; Online, não em seu(s) site(s) | Sincronização de associação da campanha do CRM | Por meio da [!UICONTROL Canais offline] página em [!DNL Marketo Measure], fazendo referência ao Tipo de campanha |
| Atividade de vendas | Sincronização de atividade do CRM | Por meio da [!UICONTROL Canais on-line] página em [!DNL Marketo Measure], referenciando o Nome da campanha atribuído no [!UICONTROL Atividades] página |

>[!MORELIKETHIS]
>
>* [Mapeamento de pontos de contato online para [!DNL Marketo Measure] Canais/Subcanais](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md)
>* [Sincronização de campanhas do CRM no SFDC](/help/channel-tracking-and-setup/offline-channels/syncing-offline-campaigns.md)
>* [Sincronizando campanhas do CRM em [!DNL Marketo Measure]](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md)
>* [Mapear campanhas do CRM para [!DNL Marketo Measure] Canais/Subcanais](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md)
>* [Criação de pontos de contato a partir de atividades de vendas](/help/advanced-marketo-measure-features/activities-attribution/salesforce-activities-attribution.md)
>* [Perguntas frequentes de atividades e atividades de mapeamento Pontos de contato para canais/subcanais](/help/advanced-marketo-measure-features/activities-attribution/activities-attribution-faq.md)

