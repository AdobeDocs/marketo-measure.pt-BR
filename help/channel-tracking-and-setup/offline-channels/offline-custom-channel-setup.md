---
unique-page-id: 18874598
description: Configuração de canal personalizado offline - [!DNL Marketo Measure] - Documentação do produto
title: Configuração de canal personalizado offline
exl-id: c5697714-1a79-40bd-8b7c-e10768f4ef67
source-git-commit: 02f686645e942089df92800d8d14c76215ae558f
workflow-type: tm+mt
source-wordcount: '893'
ht-degree: 0%

---

# Configuração de canal personalizado offline {#offline-custom-channel-setup}

## Introdução {#getting-started}

Comparado a como [!DNL Marketo Measure] lida com regras de canal online, você observará que as regras de canal offline não exigem o uso de uma planilha. No entanto, ainda há uma planilha fornecida no plano de implementação, pois isso pode ser útil para pensar na maneira como você deseja organizar seus canais offline.

A planilha tem três colunas:

![](assets/1-2.png)

**[!UICONTROL Salesforce] Tipo de campanha** - adicionar Tipos de campanha identificados em [!DNL Salesforce] here

* Por exemplo, pode ser um email, webinar, conferência ou qualquer valor criado para esse campo ao qual você deseja atribuir Pontos de contato.

**[!UICONTROL Canal]** - adicione seus vários canais de marketing aqui

**[!UICONTROL Subcanal]** - adicione quaisquer subcanais correspondentes aqui

## Lógica do canal offline {#offline-channel-logic}

[!DNL Marketo Measure] a lógica de canal offline é determinada pelo objeto Campaign, especificamente o [!DNL Salesforce] Tipo de campanha. Cada esforço offline deve ter uma [!DNL Salesforce] Tipo de campanha, como jantar ou apresentação comercial, porque [!DNL Marketo Measure] O depende desse campo para entender para qual canal e subcanal serão mapeados.

Os tipos de campanha SFDC aparecerão na guia Canal offline, listada em [!DNL Salesforce] Tipo de campanha. Observe que [!DNL Marketo Measure] O só pode importar Tipos de campanha SFDC para campanhas que tenham pontos de contato de comprador associados a eles.

![](assets/2-2.png)

É aqui que você pode criar o mapeamento de Canal/Subcanal no [!DNL Marketo Measure] aplicativo. Isso provavelmente envolverá a criação de novos Canais e Subcanais no [!DNL Marketo Measure] aplicativo, que é feito na seção Criar canais do aplicativo, mostrada na imagem abaixo. Novos canais e subcanais precisam ser criados para [!DNL Marketo Measure] para entender onde enviar pontos de contato por push. Você pode decidir como deseja que os tipos de campanha sejam mapeados.

![](assets/3-2.png)

## Exemplo de mapeamento de canal {#channel-mapping-example}

Por exemplo, imagine que você participe de dois [!DNL Salesforce] conferências por ano. Cada conferência, no entanto, é muito diferente e tem um público-alvo exclusivo. Você quer saber qual dos dois traz mais valor. Em seu [!DNL Salesforce] ambiente, você pode dar ao evento de janeiro o tipo de campanha &quot;Conferência&quot;, nomear seu canal &quot;[!DNL Salesforce],&quot; e seu subcanal &quot;Conferência de janeiro&quot;.

Agora você quer fazer o mesmo para a conferência de junho. Como vocês imaginam que esta é uma conferência também, ela pode receber o mesmo Tipo de campanha, neste caso, &quot;Conferência&quot;. O canal é o mesmo, [!DNL Salesforce], e o subcanal para esta segunda conferência é &quot;Conferência de junho&quot;. Isso faz sentido do ponto de vista organizacional. No entanto, é muito confuso para a [!DNL Marketo Measure] lógica para ler e aplicar essas regras, pois ambas as campanhas têm o mesmo Tipo de campanha. [!DNL Marketo Measure] O script não pode mapear dados de um tipo para dois subcanais diferentes. Isso significa que seria necessário criar um novo Tipo de campanha para cada subcanal, mas os subcanais podem ter o mesmo canal.

Abaixo está um exemplo de lógica que [!DNL Marketo Measure] não pode ler:

![](assets/4-2.png)

Na situação acima, é necessário criar um Tipo de campanha exclusivo, pois não é possível mapear o mesmo Tipo de campanha para dois subcanais diferentes. Em vez disso, você deseja configurar tipos exclusivos como os seguintes:

![](assets/5-2.png)

Qualquer tipo de campanha existente deve ser incluído no mapa de canal e &quot;NULL&quot; deve ser adicionado como canal.

Reserve tempo para acessar [!DNL Salesforce] para determinar o número e a natureza dos tipos de registro existentes, que você deseja incluir, e se é necessário criar campanhas adicionais com base nas informações acima. Depois de preencher todas as informações necessárias, você está pronto para fazer upload.

Saiba mais sobre [sincronização offline [!DNL Salesforce] Campanhas com [!DNL Marketo Measure]](/help/channel-tracking-and-setup/offline-channels/syncing-offline-campaigns.md).

## Manipular campanhas SFDC para esforços de marketing online {#handling-sfdc-campaigns-for-online-marketing-efforts}

É comum que as equipes de marketing criem [!DNL Salesforce] campanhas para rastrear vários esforços de marketing digital. Não há qualquer problema com esta prática; no entanto, é importante tratar essas campanhas de maneira diferente das campanhas offline verdadeiras, como mala direta ou conferências, por exemplo. As campanhas relacionadas a eventos digitais (interações que ocorrem em seu site) não devem ser sincronizadas com [!DNL Marketo Measure]. Sincronizar essas campanhas resultaria na duplicação de pontos de contato, pois a variável [!DNL Marketo Measure] O JavaScript já está acompanhando os esforços online.

Outra dica para lidar com campanhas de atividades online é mapear a variável [!DNL Salesforce] Tipo de campanha como NULL. Para fazer isso, primeiro crie um canal na função [!DNL Marketo Measure] aplicativo chamado NULL, como mostrado na imagem abaixo. Isso é encontrado no [!DNL Marketo Measure] no aplicativo **Criar canais** seção. Isso será útil no caso de uma campanha que não deve ser sincronizada ser sincronizada acidentalmente. É fácil encontrar a campanha e corrigir o status de sincronização, observando tudo relacionado em NULL.

![](assets/6-2.png)

## Inserir suas regras de canal offline no aplicativo {#entering-your-offline-channel-rules-to-the-app}

Depois de editar e atualizar a planilha com suas regras personalizadas, a próxima etapa é recriar o mapeamento de canal na [!DNL Marketo Measure] aplicativo — você não fará upload de uma planilha para canais offline. Em vez disso, você inserirá as informações nas caixas da lista de seleção, conforme exibido na imagem abaixo. Isso é encontrado clicando em **[!UICONTROL Canais offline]** nos termos do **[!UICONTROL Canais]** seção.

![](assets/7-2.png)

>[!TIP]
>
>Deseja determinar _when_ a [!DNL Salesforce] Tipo de campanha é extraído para baixo [!DNL Marketo Measure] mapeamento de canal? Basta ir para **[!UICONTROL Configuração]** > **[!UICONTROL Campanhas]** > **[!UICONTROL Campos]** > **[!UICONTROL Tipo]**. Você pode então ver quais valores estão na lista de seleção e quais estão inativos. Os inativos não serão exibidos como um tipo selecionável em nosso &quot;[!UICONTROL Canais offline]seção &quot;. Observe que esse processo pode levar de alguns minutos a 48 horas.

Clique em **[!UICONTROL Salvar]** quando terminar e [!DNL Marketo Measure] O fará upload das alterações e reprocessará os dados.

>[!MORELIKETHIS]
>
>* [[!DNL Marketo Measure] Universidade: Mapeamento de canais offline](https://universityonline.marketo.com/courses/bizible-fundamentals-channel-management/#/page/5c630eca34d9f0367662b77f)
>
>* [[!DNL Marketo Measure] Universidade: Sincronização de campanhas offline](https://universityonline.marketo.com/courses/bizible-fundamentals-channel-management/#/page/5c63286e34d9f0367662b78b)
>
>* [Integração de programas Marketo Engage](/help/marketo-measure-and-marketo/marketo-measure-integrations-with-marketo/marketo-engage-programs-integration.md#channel-mapping)

