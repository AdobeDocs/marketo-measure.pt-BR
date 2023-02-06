---
unique-page-id: 18874594
description: Plataformas de anúncios integradas - [!DNL Marketo Measure] - Documentação do produto
title: Plataformas de anúncios integradas
exl-id: df30ee8a-8b07-4f14-94e8-cc482fca8b18
source-git-commit: b59c79236d3e324e8c8b07c5a6d68bd8176fc8a9
workflow-type: tm+mt
source-wordcount: '1727'
ht-degree: 0%

---

# Plataformas de anúncios integradas {#integrated-ad-platforms}

[!DNL Marketo Measure] tem conexões de API com Google AdWords, Microsoft BingAds, [!DNL Facebook] Anúncios e DoubleClick Campaign Manager. Por meio dessas conexões de API, [!DNL Marketo Measure] O pode obter dados facilmente e enviá-los para o seu CRM junto com o aplicativo do comprador externo. Não é necessário fazer upload manual de custos ou dados. Em vez disso, suas contas precisam apenas estar conectadas e autorizadas ao [!DNL Marketo Measure] aplicativo. [!DNL Marketo Measure] O baixará automaticamente os custos de marketing das plataformas e os carregará no [!DNL Marketo Measure] aplicativo. Se você optar por ativar a marcação automática para AdWords, BingAds ou [!DNL Facebook] Anúncios, [!DNL Marketo Measure] O anexará automaticamente seus parâmetros aos URLs de suas publicidades.

## Como conectar plataformas de anúncios {#how-to-connect-ad-platforms}

Antes de conhecer as especificidades de cada plataforma, abordaremos como conectar qualquer uma dessas contas a [!DNL Marketo Measure]. Primeiro logon na [!DNL Marketo Measure] e navegue até o **[!UICONTROL Configurações]** sob a **[!UICONTROL Minha conta]** na parte superior esquerda da tela. Em seguida, selecione **[!UICONTROL Conexões]** nos termos do **[!UICONTROL Integrações]** à esquerda.

Como mostrado na imagem abaixo, você verá um botão para configurar novas conexões de anúncios.

![](assets/2.png)

Depois de clicar no botão [!UICONTROL Configurar nova conexão de anúncios] , uma janela (mostrada abaixo) será exibida com quatro anúncios [!UICONTROL connect]tipos de íons. Clique em conectar e outra janela será exibida solicitando as credenciais. Insira as credenciais e clique em [!UICONTROL autorizar] para conectar a conta ao [!DNL Marketo Measure].

![](assets/select-account-type.png)

## Google AdWords {#google-adwords}

Ao criar suas publicidades em [!DNL Google AdWords], é recomendável marcar suas campanhas de uma das três formas seguintes: marcação manual, marcação automática ou criação de um Modelo de rastreamento. A marcação manual do URL do AdWords depende da definição e adição dos parâmetros ao final dos URLs dos anúncios. A marcação manual permite que qualquer plataforma que não seja a Google leia facilmente os dados coletados pelos parâmetros.

O Modelo de rastreamento é uma ferramenta fornecida pelo Google para adicionar o que chama de parâmetros ValueTrack. Eles funcionam da mesma maneira que os UTMs e outros parâmetros de marcação.

## O que acontece quando a marcação automática é ativada {#what-happens-when-auto-tagging-is-enabled}

[!DNL Marketo Measure] Pesquisa por modelos de rastreamento no [!DNL AdWords] conta:

* *Opção A*: Modelo de rastreamento encontrado. [!DNL Marketo Measure] adiciona seus parâmetros ao template.
* *Opção B*: O redirecionamento de terceiros foi encontrado. Se um redirecionamento de terceiros for encontrado no Modelo de rastreamento, [!DNL Marketo Measure] não pode tomar nenhuma ação. Será necessário adicionar manualmente a variável [!DNL Marketo Measure] para o sistema de terceiros. Um exemplo de redirecionamento de terceiros seria uma ferramenta de gerenciamento de lances como Kenshoo ou Marin. Saiba mais sobre como [as ferramentas de gerenciamento de lances afetam [!DNL Marketo Measure]](/help/api-connections/utilizing-marketo-measures-api-connections/how-bid-management-tools-affect-marketo-measure.md){target="_blank"}.

* *Opção C*: Nenhum modelo de rastreamento foi encontrado. [!DNL Marketo Measure] O verificará todos os URLs de Destino de anúncio do [!DNL Marketo Measure] parâmetros. Com base na verificação, se:
   * Os parâmetros são encontrados: a configuração foi concluída!
   * Parâmetros não encontrados: [!DNL Marketo Measure] A anexará seus parâmetros ao final dos URLs de destino do anúncio. [!DNL Marketo Measure] anexa novos anúncios em duas horas após sua criação. Lembre-se de que os parâmetros não serão adicionados a um modelo.

Saiba mais sobre nossa [[!DNL AdWords] funcionalidade de marcação automática](/help/api-connections/utilizing-marketo-measures-api-connections/understanding-marketo-measure-adwords-tagging.md){target="_blank"}.

## Como ativar [!DNL Marketo Measure] Marcação automática para palavras adicionais {#how-to-enable-marketo-measure-auto-tagging-for-adwords}

Antes de habilitar [!DNL Marketo Measure] marcação automática, **certifique-se de ter um modelo de rastreamento ativado no nível da Conta, Campanha ou Grupo de anúncios em sua conta do Adwords . Isso é necessário para qualquer conta do Adwords que terá [!DNL Marketo Measure] marcação automática ativada.** Ativar um modelo de rastreamento evita qualquer perda nos dados do histórico de desempenho do anúncio. Observe que ativar modelos de rastreamento no nível de Palavra-chave, Sitelink ou Anúncio fará com que o anúncio passe pelo processo de revisão e aprovação e pode, potencialmente, reiniciar o histórico de desempenho de seus anúncios. Se não houver nenhum modelo de rastreamento ativado, [!DNL Marketo Measure] anexará a variável [!DNL Marketo Measure] parâmetros de rastreamento diretamente para o &quot;URL final&quot; do anúncio, que também pode resultar em perda de dados do histórico de anúncios.

Depois que você tiver um modelo de rastreamento em vigor, siga as instruções abaixo para ativar [!DNL Marketo Measure] Marcação automática. Observação: [!DNL Marketo Measure] A também incluirá tags automáticas de quaisquer anúncios pausados em sua conta.

1. Faça logon em seu [!DNL Marketo Measure] conta em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"}.

1. Ir para [!UICONTROL Minha conta] > [!UICONTROL Configurações] > [!UICONTROL Integrações] > [!UICONTROL Conexões].

   ![](assets/4.png)

1. Clique no ícone de Lápis ao lado da Conta de palavras que terá [!DNL Marketo Measure] marcação automática ativada.

   ![](assets/5.png)

1. No canto superior direito, alterne a opção **[!UICONTROL Marcação automática]** alternar para **[!UICONTROL Sim]**. Na parte inferior da página, clique em **[!UICONTROL Saiba mais]** para expandir a caixa de texto e clicar em **[!UICONTROL Salvar]**. A configuração da marcação automática está concluída.

   ![](assets/6.png)

## Como configurar um modelo de rastreamento no AdWords com [!DNL Marketo Measure] Parâmetros {#how-to-set-up-a-tracking-template-in-adwords-with-marketo-measure-parameters}

Lembre-se de que você deve adicionar modelos de rastreamento no [!UICONTROL Conta], [!UICONTROL Campanha] ou Grupo de anúncios no AdWords. Se você adicionar Modelos de rastreamento ao nível de Palavra-chave, Sitelink ou Anúncio, sua publicidade precisará passar pelo processo de revisão e aprovação e você corre o risco de reiniciar o histórico de desempenho de suas publicidades. Saiba mais sobre [criação de modelos de rastreamento](https://support.google.com/adwords/answer/6076199?hl=en#tracking){target="_blank"}.

1. Faça logon no [!DNL Google AdWords] Conta.
1. Vá para o seu [!UICONTROL Campanhas] exibir na barra de navegação à esquerda
1. Navegue até &quot;[!UICONTROL Configurações]&quot;, também na barra de navegação à esquerda
1. Alterne para &quot;[!UICONTROL Configurações da conta]&quot; na parte superior
1. Expanda o &quot;[!UICONTROL Rastreamento]Seção &quot;
1. Cole uma das strings de texto a seguir no modelo de rastreamento para definir o valor do modelo:

   * Se você tiver pontos de interrogação em TODOS os URLs, use o seguinte texto de URL:

   `{lpurl}&_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`

   * Se você não tiver pontos de interrogação em nenhum dos URLs, adicione o seguinte texto de URL:

   `{lpurl}?_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}*`

   Para evitar erros quando você marca manualmente os URLs, geralmente é recomendável gerar os parâmetros de UTM automaticamente. Isso não precisa significar a marcação automática com o AdWords ou [!DNL Marketo Measure] , há várias ferramentas que simplificam o processo, gerando automaticamente os parâmetros do URL com base nas informações fornecidas.

   >[!TIP]
   >
   >Se você estiver recebendo um erro informando que o Modelo de rastreamento é inválido, tente limpar o cache do navegador e tente novamente - isso geralmente resolve o problema.

## Como gerar tags de UTM automaticamente para [!DNL Google AdWords] {#how-to-automatically-generate-utm-tags-for-google-adwords}

As tags de UTM podem parecer difíceis de criar no início, mas há muitas ferramentas disponíveis para criar URLs facilmente com parâmetros de UTM. Você pode usar qualquer um dos seguintes recursos ou pesquisar na Web por mais ferramentas. Lembre-se [!DNL Marketo Measure] não endossa nem garante nada com essas plataformas e ferramentas.

**[!DNL Google URL]Criador**

O Google URL Builder é uma ferramenta padrão para criar URLs formatados corretamente com tags de UTM. Basta inserir o URL e o valor desejado de cada parâmetro e clicar em &quot;[!UICONTROL Gerar URL]&quot;. Essa é uma ferramenta ideal a ser usada se você tiver apenas alguns URLs para marcar. Acessar a ferramenta [here](https://support.google.com/analytics/answer/1033867?hl=en){target="_blank"}.

**Planilha do Google gerada pelo EpikOne**

Esta planilha tem uma fórmula que gerará automaticamente URLs de destino marcados. Essa é uma excelente ferramenta a ser usada se um grande número de links precisar ser marcados. Acessar a planilha [here](https://spreadsheets.google.com/ccc?key=p7c_HKcmspSUfEYSO0gskKw&amp;hl=en){target="_blank"}.

**Ferramenta Marcação de link do Rafflecopter**

A planilha criada pelo Rafflecopter é uma versão modificada de [!DNL EpikOne's] planilha. Ela também contém uma fórmula que gerará automaticamente links de destino marcados para você usar.

Cada uma dessas ferramentas tem instruções detalhadas sobre como usá-las e modificá-las de acordo com suas necessidades. A ferramenta está disponível [here](https://docs.google.com/spreadsheets/d/1QCIr1WUJQHE68cA4VTks2XE7nxuryaUymCEy_23-Oew/edit#gid=0){target="_blank"}.

**Effin Incrível Construtor de UTM**

Essa ferramenta é uma extensão do Chrome que permite gerar tags de UTM rapidamente. Localizar [here](https://chrome.google.com/webstore/detail/effin-amazing-utm-builder/eoaapiimcaimddnfhfnifgkinmpcbccp?hl=en){target="_blank"}.

## Bing Ads {#bing-ads}

O Bing Ads é uma plataforma integrada que permite ativar a marcação automática de URLs ou usar uma ferramenta de terceiros, como [!DNL Marketo Measure], para marcar anúncios. [!DNL Bing Ads] O também depende de parâmetros do UTM.

O recurso de marcação automática do Bing Ads adiciona os seguintes parâmetros de UTM:

* Utm_source
* Utm_medium
* Utm_term

A marcação automática do Bing Ads também adiciona o seguinte parâmetro personalizado:

`_bt={adid}`

A sequência seria semelhante a esta:

`{lpurl}?_bt={adid}&utm_term={keyword}&utm_source=Bing_Yahoo&utm_medium=CPC`

É importante observar que [!DNL Bing Ads] O permite adicionar ainda mais parâmetros usando as tags personalizadas nos URLs finais para obter mais granularidade, se desejar.

Um modelo de rastreamento pode ser usado se desejar, mas não é necessário para [!DNL Bing Ads] e [!DNL Marketo Measure] para integrar. Isso ocorre porque [!DNL Bing] permite que anúncios sejam editados sem alterar o histórico, portanto [!DNL Marketo Measure] O pode atualizar o URL de destino.

A marcação automática deve ser ativada por meio de [!DNL Marketo Measure] para que o [!DNL Marketo Measure] os parâmetros podem ser anexados automaticamente. Não há risco de perder o histórico de desempenho de anúncios anteriores com o Bing Ads.

Visite o [[!DNL Bing Ads]](https://advertise.bingads.microsoft.com/en-us/blog/post/august-2016/upgraded-urls-now-available-in-bing-ads-an-easier-way-to-manage-your-tracking-urls){target="_blank"} para obter mais informações sobre como adicionar tags em sua plataforma.

## Anúncios do Facebook {#facebook-ads}

O [!DNL Marketo Measure] integração com [!DNL Facebook] permite baixar automaticamente as informações da publicidade e marcar o URL com seus parâmetros. [!DNL Marketo Measure] O obterá as informações da Campanha e do Conjunto de anúncios por meio da marcação automática. O Conjunto de anúncios preencherá o campo Nome do grupo de anúncios. Para obter mais informações sobre como configurar tags de URL no [!DNL Facebook] visita a [!DNL Facebook] [empresa](https://www.facebook.com/business/help/1016122818401732/?ref=u2u){target="_blank"} página.

Antes de ativar a marcação automática com [!DNL Facebook Ads], é importante exportar o histórico de desempenho anterior como CSV. Nesse momento, quando [!DNL Marketo Measure] tags [!DNL Facebook Ads] com seu parâmetro _bf, [!DNL Facebook] O lê os anúncios como novos e apaga o histórico de desempenho. Portanto, é importante exportar um registro do desempenho anterior, se isso for um valor para você e sua organização.

Observe que você pode conectar seu [!DNL Facebook] a qualquer momento da [!DNL Marketo Measure] aplicativo e nenhum dado será perdido — somente quando a marcação automática estiver ativada é que o histórico de desempenho é apagado.

[Consulte este artigo](https://www.facebook.com/business/help/393890194130036){target="_blank"} do Facebook para obter mais informações sobre exportação [!DNL Facebook] Relatórios de anúncios.

## Conteúdo patrocinado pela linkedIn {#linkedin-sponsored-content}

A integração do LinkedIn permite [!DNL Marketo Measure] para adicionar tags a URLs de destino em [!DNL LinkedIn] Conteúdo patrocinado, que em última análise permite [!DNL Marketo Measure] para seguir um usuário em toda a jornada do ponto de contato e mapear a atividade de volta para o [!DNL LinkedIn] Campanha e criação. Isso fornece aos clientes insights sobre o ROI de seus [!DNL LinkedIn] atividade . [!DNL Marketo Measure] procurará criações com uma [!DNL LinkedIn] Compartilhar e adicionar um `?_bl={creativeId}` ao final.

Porque [!DNL LinkedIn] Os compartilhamentos podem ser usados em várias Campanhas e anúncios, pedimos que os clientes não copiem/clonem/dupliquem os anúncios existentes para que possam manter sua exclusividade. Se os Compartilhamentos forem encontrados e forem detectados para serem usados somente em uma Creative, [!DNL Marketo Measure] O pode adicionar uma tag ao Compartilhar como está sem precisar recriar quaisquer Criações ou Compartilhamentos e o histórico de todos os anúncios (impressões, cliques, compartilhamentos) permanecerá.

Assim que um Compartilhamento for encontrado para ser compartilhado em vários Creative, [!DNL Marketo Measure] O precisará executar um processo de pausa, cópia e remarcação para criar um conjunto exclusivo. [!DNL Marketo Measure] O pausará e arquivará criações em tempo real, o que significa que o anúncio contendo as impressões, os cliques e os compartilhamentos sociais também são arquivados.

## Plataformas não integradas {#non-integrated-platforms}

Para plataformas que não estão integradas com [!DNL Marketo Measure], o [!DNL Marketo Measure] a funcionalidade de marcação automática não pode ser usada. Os parâmetros precisarão ser adicionados manualmente.
