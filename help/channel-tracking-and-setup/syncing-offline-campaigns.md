---
description: Diretrizes de sincronização de campanhas offline para usuários do Marketo Measure
title: Sincronização de campanhas offline
exl-id: a6f9e217-ff6e-474d-9f14-c6f6238c9e84
feature: Channels
source-git-commit: fcd8e276c85669ddf12bd7404fb12d3e99b2642a
workflow-type: tm+mt
source-wordcount: '772'
ht-degree: 5%

---

# Sincronização de campanhas offline {#syncing-offline-campaigns}

Pode ser difícil rastrear com precisão as campanhas offline e entender como elas se comparam aos seus esforços de marketing digital. O [!DNL Marketo Measure] permite que você rastreie e atribua Pontos de Contato às suas campanhas offline no [!DNL Salesforce], mesmo em situações em que a campanha [!DNL Salesforce] não é criada até algumas semanas após o evento.

>[!NOTE]
>
>Este artigo aborda um processo desatualizado. Recomendamos que os usuários usem o [processo novo e aprimorado do aplicativo](/help/channel-tracking-and-setup/custom-campaign-sync.md){target="_blank"}.

## Antes de sincronizar {#before-you-sync}

Estas são algumas dicas para um processo de sincronização eficiente:

* Campanhas offline se referem a interações de marketing que não ocorrem online. Isso inclui canais de marketing como eventos, webinários e feiras. Inclua somente campanhas de marketing offline.
* Se você quiser incluir campanhas que rastrearam atividade online antes de quando você instalou o [!DNL Marketo Measure], certifique-se de definir a Data de Término do Ponto de Contato como a data em que nosso JavaScript foi implantado em seu site.
* É útil manter o aplicativo [!DNL Marketo Measure] aberto na página Canais offline para que seja fácil identificar os diferentes Tipos de Campanha, juntamente com o Canal de marketing em que os Pontos de contato serão classificados.

* Verifique tudo novamente antes de clicar no botão &quot;[!UICONTROL Salvar]&quot;!

## Atualização em massa da data do ponto de contato {#bulk-update-touchpoint-date}

Em [!DNL Salesforce], o campo Data de Criação no Objeto Membro da Campanha observa a data em que o Membro da Campanha foi adicionado à campanha. Para que o processo de sincronização ocorra sem problemas, verifique se o Campo de data do Buyer Touchpoint tem a mesma data que a data no Objeto membro do Salesforce Campaign. Esta etapa é executada usando o &quot;[!UICONTROL Botão de Data do Ponto de Contato da Atualização em Massa],&quot; _antes_, selecione a opção [!UICONTROL lista de opções] no campo Habilitar Pontos de Contato do Comprador.

Por que isso é importante? Imagine por um momento que sua empresa patrocinou um estande em uma conferência em janeiro. Na conferência, 100 pessoas demonstraram interesse no seu produto e forneceram suas informações de contato para receber atualizações por email. Três semanas depois, você finalmente criou uma campanha em [!DNL Salesforce] para acompanhar o resultado da conferência.

A data de upload será três semanas depois da data da conferência. Para corrigir essa diferença, o botão [!UICONTROL Atualização em Massa da Data do Ponto de Contato] pode ser usado para definir a data apropriada. O botão é mostrado na imagem abaixo.

![A data de carregamento será três semanas depois da data da conferência.](assets/dynamics-lists-1.png)

Nesse caso, ele preencheria retroativamente a data de upload por três semanas. Esta etapa deve ser realizada antes da configuração do campo &quot;[!UICONTROL Habilitar Pontos de Contato do Comprador]&quot;.

Em resumo, se você usar o botão [!UICONTROL Atualizar data do ponto de contato em massa] e alterar a data do ponto de contato para a data do evento, [!DNL Marketo Measure] gerará pontos de contato para a data real do evento, não para a data do upload.

Você também pode atualizar as datas de todos os membros de uma campanha existente. Ao fazer isso, verifique se a data do Touchpoint é a data da interação do membro. Clique na Data de Atualização em Massa do Buyer Touchpoint, filtre a lista de membros da campanha conforme apropriado e, na opção &quot;[!UICONTROL Selecionar Data]&quot; acima da lista de membros da campanha, adicione a mesma data que a data em que o evento ocorreu.

>[!CAUTION]
>
>Atualize a data do ponto de contato _antes_ de habilitar os pontos de contato para todos os membros da campanha.

![Atualize a data do Ponto de Contato antes de habilitar os Pontos de Contato para](assets/dynamics-lists-10.png)

## Como criar uma campanha e sincronizar pontos de contato do comprador {#how-to-create-a-campaign-and-sync-buyer-touchpoints}

Para criar uma Campanha em [!DNL Salesforce], navegue até a guia [!UICONTROL Campanhas] e selecione &#39;[!UICONTROL Novo]&#39; conforme mostrado na imagem abaixo. Dependendo da configuração do [!DNL Salesforce], talvez seja necessário adicionar Campanhas à barra superior clicando no ícone de adição (+).

![Para criar uma Campanha no Salesforce, navegue até Campanhas](assets/dynamics-lists-2.png)

Ao criar esta campanha, clique no campo &quot;[!UICONTROL Habilitar pontos de contato do comprador]&quot; e selecione uma das seguintes opções na lista de opções:

![Ao criar esta campanha, clique em &quot;Habilitar Pontos de Contato do Comprador&quot;](assets/dynamics-lists-3.png)

* **Incluir todos os membros da campanha**
   * Esta opção permite que [!DNL Marketo Measure] atribua um Touchpoint a cada membro da campanha.

* **Incluir membros da campanha &quot;Respondidos&quot;.**
   * Essa opção aplica pontos de contato a membros da campanha que têm o status &quot;Respondido&quot;.

* **Excluir todos os membros da campanha.**
   * Essa opção não atribui pontos de contato a nenhum membro da campanha e atua como um sinalizador de que a campanha foi deliberadamente excluída de [!DNL Marketo Measure]. Se você sincronizar uma campanha com Pontos de contato do comprador acidentalmente, poderá alterar o status para &quot;Excluir todos os membros da campanha&quot; e os Pontos de contato serão removidos.

Depois que uma dessas seleções for escolhida, [!DNL Marketo Measure] atribuirá a cada membro da campanha um ponto de contato, se aplicável. O Cliente Potencial ou Contato adicionado à campanha _deve_ ter um endereço de email associado ao seu registro para que [!DNL Marketo Measure] crie um ponto de contato. Sem um endereço de email, o [!DNL Marketo Measure] não atribuirá um ponto de contato ao membro da campanha.

>[!MORELIKETHIS]
>
>[[!DNL Marketo Measure] Tutoriais: Mapeando Canais Offline](https://experienceleague.adobe.com/pt-br/docs/marketo-measure-learn/tutorials/onboarding/marketo-measure-salesforce/mapping-offline-channels){target="_blank"}
>
>[[!DNL Marketo Measure] Tutoriais: Campos de Objeto de Campanha](https://experienceleague.adobe.com/pt-br/docs/marketo-measure-learn/tutorials/onboarding/marketo-measure-salesforce/campaign-object-fields){target="_blank"}
