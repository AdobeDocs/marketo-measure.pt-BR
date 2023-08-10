---
unique-page-id: 18874600
description: Sincronização de campanhas offline - [!DNL Marketo Measure] - Documentação do produto
title: Sincronização de campanhas offline
exl-id: a6f9e217-ff6e-474d-9f14-c6f6238c9e84
feature: Channels
source-git-commit: e01738222e8845112892c0258cb084a4f0ebb257
workflow-type: tm+mt
source-wordcount: '742'
ht-degree: 0%

---

# Sincronização de campanhas offline {#syncing-offline-campaigns}

Pode ser difícil rastrear com precisão as campanhas offline e entender como elas se comparam aos seus esforços de marketing digital. [!DNL Marketo Measure] O permite rastrear e atribuir pontos de contato às campanhas offline no [!DNL Salesforce]mesmo em situações em que um [!DNL Salesforce] a campanha não é criada até algumas semanas após o evento.

>[!NOTE]
>
>Este artigo aborda um processo desatualizado. Recomendamos que os usuários usem o [processo novo e aprimorado no aplicativo](/help/channel-tracking-and-setup/offline-channels/custom-campaign-sync.md){target="_blank"}.

## Antes de sincronizar {#before-you-sync}

Estas são algumas dicas para um processo de sincronização eficiente:

* Campanhas offline se referem a interações de marketing que não ocorrem online. Isso inclui canais de marketing como eventos, webinários e feiras. Inclua somente campanhas de marketing offline.
* Se desejar incluir campanhas que rastrearam atividade online antes de quando você instalou o [!DNL Marketo Measure], certifique-se de definir a Data final do ponto de contato como a data em que nosso JavaScript foi implantado em seu site.
* É útil manter a [!DNL Marketo Measure] O aplicativo é aberto na página Canais offline para que seja fácil identificar os diferentes Tipos de campanha, juntamente com o Canal de marketing em que os Pontos de contato serão classificados.

* Verifique tudo novamente antes de pressionar &quot;[!UICONTROL Salvar]Botão &quot;!

## Atualização em massa da data do ponto de contato {#bulk-update-touchpoint-date}

Entrada [!DNL Salesforce], o campo Created Date no Campaign Member Object anota a data em que o membro da campanha foi adicionado à campanha. Para que o processo de sincronização ocorra sem problemas, verifique se o Campo de data do ponto de contato do comprador tem a mesma data que a data no Objeto Membro da campanha do Salesforce. Esta etapa é executada usando o &quot;[!UICONTROL Botão Atualizar Data do Ponto de Contato em Massa],&quot; _antes_ você seleciona o [!UICONTROL lista de opções] no campo Ativar pontos de contato do comprador.

Por que isso é importante? Imagine por um momento que sua empresa patrocinou um estande em uma conferência em janeiro. Na conferência, 100 pessoas demonstraram interesse no seu produto e forneceram suas informações de contato para receber atualizações por email. Três semanas depois, você finalmente criou uma campanha no [!DNL Salesforce] para acompanhar o resultado da conferência.

A data de upload será três semanas depois da data da conferência. Para corrigir essa diferença, a variável [!UICONTROL Atualização em massa da data do ponto de contato] para definir a data apropriada. O botão é mostrado na imagem abaixo.

![](assets/1-3.png)

Nesse caso, ele preencheria retroativamente a data de upload por três semanas. Esta etapa deve ser realizada antes da configuração do &quot;[!UICONTROL Ativar pontos de contato do comprador]&quot;.

Em resumo, se você usar a variável [!UICONTROL Atualização em massa da data do ponto de contato] e altere a data do ponto de contato para a data do evento, [!DNL Marketo Measure] gerará Pontos de contato para a data real do evento, não a data do upload.

Você também pode atualizar as datas de todos os membros de uma campanha existente. Ao fazer isso, verifique se a data do Touchpoint é a data da interação do membro. Basta clicar na Atualização em massa da data de ponto de contato do comprador, filtrar a lista de membros da campanha conforme apropriado e na &quot;[!UICONTROL Selecionar data]&quot; acima da lista de membros da campanha, adicione a mesma data que a data em que o evento ocorreu.

>[!CAUTION]
>
>Atualize a data do ponto de contato _antes_ ative Touchpoints para todos os membros da campanha.

![](assets/2-3.png)

## Como criar uma campanha e sincronizar pontos de contato do comprador {#how-to-create-a-campaign-and-sync-buyer-touchpoints}

Para criar uma campanha no [!DNL Salesforce], navegue até o [!UICONTROL Campanhas] e selecione &#39;[!UICONTROL Novo]&#39; conforme mostrado na imagem abaixo. Dependendo do [!DNL Salesforce] Para configurar, talvez seja necessário adicionar Campanhas à barra superior clicando no ícone de adição (+).

![](assets/3-3.png)

Ao criar essa campanha, clique no link &quot;[!UICONTROL Ativar pontos de contato do comprador]&quot; e selecione uma das seguintes opções na lista de opções:

![](assets/4-3.png)

* **Incluir todos os membros da campanha**
   * Essa opção permite [!DNL Marketo Measure] para atribuir um Touchpoint a cada membro da campanha.

* **Incluir membros da campanha &quot;Respondidos&quot;.**
   * Essa opção aplica pontos de contato a membros da campanha que têm o status &quot;Respondido&quot;.

* **Excluir todos os membros da campanha.**
   * Essa opção não atribui Pontos de contato a nenhum membro da campanha e atua como um sinalizador do qual a campanha foi deliberadamente excluída [!DNL Marketo Measure]. Se você sincronizar uma campanha com Pontos de contato do comprador acidentalmente, poderá alterar o status para &quot;Excluir todos os membros da campanha&quot; e os Pontos de contato serão removidos.

Depois que uma dessas seleções for escolhida, [!DNL Marketo Measure] atribuirá a cada membro da campanha um Touchpoint, se aplicável. O cliente em potencial ou contato adicionado à campanha _deve_ têm um endereço de email associado ao seu registro para [!DNL Marketo Measure] para criar um ponto de contato. Sem um endereço de email, [!DNL Marketo Measure] não atribuirá um ponto de contato ao membro da campanha.

>[!MORELIKETHIS]
>
>[[!DNL Marketo Measure] Universidade: Mapeamento de Canais Offline](https://universityonline.marketo.com/courses/bizible-fundamentals-channel-management/#/page/5c630eca34d9f0367662b77f)
>
>[[!DNL Marketo Measure] Universidade: campos de objeto de campanha](https://universityonline.marketo.com/courses/bizible-fundamentals-channel-management/#/page/5c63007334d9f0367662b758)
