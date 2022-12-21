---
unique-page-id: 18874600
description: Sincronização de campanhas offline - [!DNL Marketo Measure] - Documentação do produto
title: Sincronização de campanhas offline
exl-id: a6f9e217-ff6e-474d-9f14-c6f6238c9e84
source-git-commit: 02f686645e942089df92800d8d14c76215ae558f
workflow-type: tm+mt
source-wordcount: '726'
ht-degree: 0%

---

# Sincronização de campanhas offline {#syncing-offline-campaigns}

Pode ser difícil rastrear com precisão as campanhas offline e entender como elas se comparam aos seus esforços de marketing digital. [!DNL Marketo Measure] permite que você acompanhe e atribua pontos de contato às suas campanhas offline em [!DNL Salesforce], mesmo em situações em que uma [!DNL Salesforce] a campanha não é criada até algumas semanas após o evento.

## Antes de sincronizar {#before-you-sync}

Estas são algumas dicas para um processo de sincronização eficiente:

* As campanhas offline se referem a interações de marketing que não ocorrem online. Isso inclui canais de marketing como eventos, webinars e shows de vendas. Inclua somente campanhas de marketing offline.
* Se desejar incluir campanhas que acompanharam a atividade online antes de quando a instalação [!DNL Marketo Measure], certifique-se de definir a Data final do ponto de contato como a data em que seu JavaScript foi implantado em seu site.
* É útil manter a variável [!DNL Marketo Measure] aplicativo aberto na página Canais offline , para que seja fácil identificar os diferentes Tipos de campanha, juntamente com o canal de marketing em que os pontos de contato serão agrupados.

* Verifique tudo antes de pressionar &quot;[!UICONTROL Salvar]Botão!

## Data do ponto de contato de atualização em massa {#bulk-update-touchpoint-date}

Em [!DNL Salesforce], o campo Data de criação no Objeto de membro da campanha anota a data em que o Membro da campanha foi adicionado à campanha. Para que o processo de sincronização decorra sem problemas, verifique se o campo Data do ponto de contato do comprador tem a mesma data do objeto membro da campanha do Salesforce. Esta etapa é executada usando o &quot;[!UICONTROL Botão Atualização em massa de data do ponto de contato],&quot; _before_ você seleciona a variável [!UICONTROL lista de opções] no campo Ativar pontos de contato do comprador .

Por que isso é importante? Imagine por um momento que sua empresa patrocinou uma cabine em uma conferência em janeiro. Na conferência, 100 indivíduos mostraram interesse no seu produto e forneceram as informações de contato para receber atualizações por email. Três semanas depois, você finalmente criou uma campanha em [!DNL Salesforce] acompanhar o resultado da conferência.

Sua data de upload seria três semanas depois da data da conferência. Para corrigir essa diferença, a variável [!UICONTROL Data do ponto de contato de atualização em massa] pode ser usada para definir a data apropriada. O botão é mostrado na imagem abaixo.

![](assets/1-3.png)

Nesse caso, o preenchimento retroativo da data de upload ocorreria em três semanas. Esta etapa deve ser realizada antes da definição do &quot;[!UICONTROL Ativar pontos de contato do comprador]&quot;.

Em resumo, se você usar a variável [!UICONTROL Data do ponto de contato de atualização em massa] e alterar a data do ponto de contato para a data do evento, [!DNL Marketo Measure] O gerará pontos de contato para a data real do evento, não para a data do upload.

Você também pode atualizar as datas de todos os membros da campanha em uma campanha existente. Ao fazer isso, verifique se a data do ponto de contato é a data da interação do membro. Basta clicar na Data do ponto de contato do comprador para atualização em massa, filtrar a lista de membros da campanha conforme apropriado e no &quot;[!UICONTROL Selecionar Data]&quot; acima da lista de membros da campanha, adicione a mesma data em que o evento ocorreu.

>[!CAUTION]
>
>Certifique-se de atualizar a data do ponto de contato _before_ ativar Pontos de contato para todos os membros da campanha.

![](assets/2-3.png)

## Como criar uma campanha e sincronizar pontos de contato do comprador {#how-to-create-a-campaign-and-sync-buyer-touchpoints}

Para criar uma campanha no [!DNL Salesforce], navegue até o [!UICONTROL Campanhas] e selecione &#39;[!UICONTROL Novo]&#39; como mostrado na imagem abaixo. Dependendo do [!DNL Salesforce] Para configurar, talvez seja necessário adicionar Campanhas à barra superior clicando no ícone de adição (+).

![](assets/3-3.png)

Ao criar esta campanha, clique no botão[!UICONTROL Ativar pontos de contato do comprador]&quot; e selecione uma das seguintes opções na lista de opções:

![](assets/4-3.png)

* **Incluir todos os membros da campanha**
   * Essa opção ativa [!DNL Marketo Measure] para atribuir um ponto de contato a cada membro da campanha.

* **Inclua membros da campanha &quot;Respondido&quot;.**
   * Essa opção aplica pontos de contato a membros da campanha com status &quot;Respondido&quot;.

* **Excluir todos os membros da campanha.**
   * Essa opção não atribui pontos de contato a nenhum membro da campanha e atua como um sinalizador de que a campanha foi deliberadamente excluída de [!DNL Marketo Measure]. Se você sincronizar uma campanha com pontos de contato de comprador acidentalmente, poderá alterar o status para &quot;Excluir todos os membros da campanha&quot; e os pontos de contato serão removidos.

Uma vez que uma dessas seleções é escolhida, [!DNL Marketo Measure] atribuirá a cada membro da campanha um ponto de contato, se aplicável. O lead ou contato adicionado à campanha _must_ ter um endereço de email associado ao registro para [!DNL Marketo Measure] para criar um ponto de contato. Sem um endereço de email, [!DNL Marketo Measure] não atribuirá um ponto de contato ao membro da campanha.

>[!MORELIKETHIS]
>
>[[!DNL Marketo Measure] Universidade: Mapeamento de canais offline](https://universityonline.marketo.com/courses/bizible-fundamentals-channel-management/#/page/5c630eca34d9f0367662b77f)
>
>[[!DNL Marketo Measure] Universidade: Campos de objeto da campanha](https://universityonline.marketo.com/courses/bizible-fundamentals-channel-management/#/page/5c63007334d9f0367662b758)
