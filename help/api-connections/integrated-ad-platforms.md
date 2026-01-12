---
description: Plataformas de publicidade integradas - [!DNL Marketo Measure]
title: Plataformas de anúncios integradas
exl-id: df30ee8a-8b07-4f14-94e8-cc482fca8b18
feature: APIs, Integration
source-git-commit: c6090ce0c3ac60cd68b1057c369ce0b3b20aeeee
workflow-type: tm+mt
source-wordcount: '1712'
ht-degree: 0%

---


# Plataformas de anúncios integradas {#integrated-ad-platforms}

[!DNL Marketo Measure] tem conexões de API com o Google AdWords, Microsoft BingAds, [!DNL Facebook] Ads e DoubleClick Campaign Manager. Por meio dessas conexões de API, o [!DNL Marketo Measure] pode obter dados facilmente e enviá-los para o seu CRM, juntamente com o aplicativo Comprador externo. Não é necessário fazer upload manual de custos ou dados. Em vez disso, suas contas precisam apenas estar conectadas e autorizadas ao aplicativo [!DNL Marketo Measure]. O [!DNL Marketo Measure] baixará automaticamente seus custos de marketing das plataformas e os carregará no aplicativo [!DNL Marketo Measure]. Se você optar por habilitar a marcação automática para AdWords, BingAds ou [!DNL Facebook] Anúncios, [!DNL Marketo Measure] anexará automaticamente seus parâmetros às URLs de seus anúncios.

## Como conectar plataformas de publicidade {#how-to-connect-ad-platforms}

Antes de entrar em detalhes específicos de cada plataforma, veremos como conectar qualquer uma dessas contas ao [!DNL Marketo Measure]. Primeiro, faça logon no aplicativo [!DNL Marketo Measure] e navegue até a opção **[!UICONTROL Configurações]** na guia **[!UICONTROL Minha conta]**, na parte superior esquerda da tela. Em seguida, selecione **[!UICONTROL Conexões]** na seção **[!UICONTROL Integrações]**, à esquerda.

Como mostrado na imagem abaixo, você verá um botão para configurar novas conexões de anúncios.

![Página Conexões com o botão Configurar nova conexão de anúncios](assets/2.png)

Depois de clicar no botão [!UICONTROL Configurar nova conexão com anúncios], uma janela (mostrada abaixo) será exibida com quatro tipos de ícone de anúncio [!UICONTROL conectar]. Clique em conectar e outra janela será exibida solicitando credenciais. Insira as credenciais e clique em [!UICONTROL autorizar] para conectar a conta a [!DNL Marketo Measure].

![O Marketo Measure adiciona o modal de conexão com os tipos de conta disponíveis](assets/select-account-type.png)

## Google AdWords {#google-adwords}

Ao criar seus anúncios no [!DNL Google AdWords], é recomendável marcar suas campanhas de uma das três formas a seguir: marcação manual, marcação automática ou criação de um Modelo de Rastreamento. Marcar manualmente o URL do AdWords depende de você definir e adicionar os parâmetros ao final dos URLs dos anúncios. A marcação manual permite que qualquer plataforma que não seja da Google leia facilmente os dados coletados pelos parâmetros.

O modelo de rastreamento é uma ferramenta que a Google fornece para adicionar o que chama de parâmetros ValueTrack. Elas funcionam da mesma maneira que as UTMs e outros parâmetros de marcação.

## O que acontece quando a marcação automática está ativada {#what-happens-when-auto-tagging-is-enabled}

[!DNL Marketo Measure] Pesquisa por Modelos de Rastreamento na sua conta [!DNL AdWords]:

* *Opção A*: modelo de rastreamento encontrado. [!DNL Marketo Measure] adiciona seus parâmetros ao modelo.
* *Opção B*: redirecionamento de terceiros encontrado. Se um redirecionamento de terceiros for encontrado no Modelo de Rastreamento, [!DNL Marketo Measure] não poderá realizar nenhuma ação. Será necessário adicionar manualmente as [!DNL Marketo Measure] tags ao sistema de terceiros. Um exemplo de redirecionamento por terceiros seria uma ferramenta de gerenciamento de ofertas, como Kenshoo ou Marin. Saiba mais sobre como as [ferramentas de gerenciamento de ofertas afetam [!DNL Marketo Measure]](/help/api-connections/how-bid-management-tools-affect-marketo-measure.md){target="_blank"}.

* *Opção C*: nenhum modelo de rastreamento foi encontrado. O [!DNL Marketo Measure] verificará todas as URLs de Destino de Anúncios em busca dos parâmetros [!DNL Marketo Measure]. Com base na verificação, se:
   * Parâmetros encontrados: a configuração está concluída!
   * Parâmetros não encontrados: [!DNL Marketo Measure] anexará seus parâmetros ao final das URLs de Destino de Anúncio. [!DNL Marketo Measure] anexa novos anúncios dentro de duas horas após sua criação. Lembre-se de que os parâmetros não serão adicionados a um modelo.

Saiba mais sobre nossa [[!DNL AdWords] funcionalidade de marcação automática](/help/api-connections/understanding-marketo-measure-adwords-tagging.md){target="_blank"}.

## Como Habilitar a Marcação Automática do [!DNL Marketo Measure] para o Adwords {#how-to-enable-marketo-measure-auto-tagging-for-adwords}

Antes de habilitar a marcação automática [!DNL Marketo Measure], **verifique se você tem um modelo de rastreamento habilitado no nível de Conta, Campanha ou Grupo de Anúncios em sua conta do Adwords. Isso é necessário para qualquer conta do Adwords que terá a marcação automática [!DNL Marketo Measure] habilitada.** A habilitação de um modelo de rastreamento evita qualquer perda nos dados do histórico de desempenho do anúncio. Observe que ativar os modelos de rastreamento no nível de Palavra-chave, Link do site ou Anúncio fará com que o anúncio passe pelo processo de revisão e aprovação e poderá reiniciar o histórico de desempenho dos seus anúncios. Se não houver nenhum modelo de rastreamento habilitado, o [!DNL Marketo Measure] anexará os parâmetros de rastreamento [!DNL Marketo Measure] diretamente à &quot;URL final&quot; do anúncio, o que também pode resultar na perda de dados do histórico do anúncio.

Depois que você tiver um modelo de rastreamento em vigor, siga as instruções abaixo para habilitar a marcação automática [!DNL Marketo Measure]. Observação: [!DNL Marketo Measure] também marcará automaticamente todos os anúncios pausados em sua conta.

1. Entre na sua conta do [!DNL Marketo Measure] em [experience.adobe.com/marketo-measure](https://experience.adobe.com/marketo-measure){target="_blank"}.

1. Vá para [!UICONTROL Minha Conta] > [!UICONTROL Configurações] > [!UICONTROL Integrações] > [!UICONTROL Conexões].

   ![Lista de conexões com contas de anúncios existentes](assets/4.png)

1. Clique no ícone de Lápis ao lado da conta do AdWords que terá a marcação automática [!DNL Marketo Measure] habilitada.

   ![Painel de configurações da conta de anúncio com alternância automática](assets/5.png)

1. No canto superior direito, alterne a **[!UICONTROL Marcação automática]** para **[!UICONTROL Sim]**. Na parte inferior da página, clique em **[!UICONTROL Saiba mais]** para expandir a caixa de texto e clique em **[!UICONTROL Salvar]**. A configuração de marcação automática foi concluída.

   ![Modal de confirmação da marcação automática no Marketo Measure](assets/6.png)

## Como configurar um modelo de rastreamento no AdWords com [!DNL Marketo Measure] parâmetros {#how-to-set-up-a-tracking-template-in-adwords-with-marketo-measure-parameters}

Lembre-se de que você deve adicionar modelos de rastreamento no nível da [!UICONTROL Conta], [!UICONTROL Campanha] ou Grupo de publicidade no AdWords. Se você adicionar Modelos de rastreamento ao nível de Palavra-chave, Link do site ou Anúncio, seu anúncio precisará passar pelo processo de revisão e aprovação e você corre o risco de reiniciar o histórico de desempenho de seus anúncios. Saiba mais sobre [criação de modelos de rastreamento](https://support.google.com/adwords/answer/6076199?hl=en#tracking){target="_blank"}.

1. Faça logon em sua Conta [!DNL Google AdWords].
1. Vá para a exibição [!UICONTROL Campanhas] na barra de navegação à esquerda
1. Navegue até &quot;[!UICONTROL Configurações]&quot;, também na barra de navegação à esquerda
1. Alterne para a exibição &quot;[!UICONTROL Configurações da conta]&quot; na parte superior
1. Expanda a seção &quot;[!UICONTROL Rastreamento]&quot;
1. Cole uma das seguintes cadeias de caracteres de texto no modelo de rastreamento para definir o valor do modelo:

   * Se você tiver pontos de interrogação em TODOS os URLs, use o seguinte texto de URL:

   `{lpurl}&_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}`

   * Se você não tiver pontos de interrogação em nenhum dos URLs, adicione o seguinte texto de URL:

   `{lpurl}?_bt={creative}&_bk={keyword}&_bm={matchtype}&_bn={network}&_bg={adgroupid}*`

   Para evitar que erros ocorram ao marcar manualmente os URLs, geralmente é recomendável gerar os parâmetros de UTM automaticamente. Isso não precisa significar marcação automática com AdWords ou parâmetros [!DNL Marketo Measure]. Há várias ferramentas que simplificam o processo gerando automaticamente os parâmetros para a URL com base nas informações fornecidas.

   >[!TIP]
   >Se você estiver recebendo um erro informando que o modelo de rastreamento é inválido, tente limpar o cache do navegador e tentar novamente. Isso geralmente resolve o problema.

## Como gerar tags UTM automaticamente para [!DNL Google AdWords] {#how-to-automatically-generate-utm-tags-for-google-adwords}

As tags UTM podem parecer difíceis de criar no início, mas há muitas ferramentas disponíveis para criar URLs facilmente com parâmetros UTM. Você pode usar qualquer um dos recursos a seguir ou pesquisar mais ferramentas na Web. Lembre-se de que o [!DNL Marketo Measure] não endossa nem garante nada com essas plataformas e ferramentas.

**[!DNL Google URL]Construtor**

O Google URL Builder é uma ferramenta padrão para criar URLs formatados corretamente com tags UTM. Insira a URL e o valor desejado de cada parâmetro e clique em &quot;[!UICONTROL Gerar URL]&quot;. Essa é uma ferramenta ideal para usar se você só tiver alguns URLs para marcar. Acesse a ferramenta [aqui](https://support.google.com/analytics/answer/1033867?hl=pt-BR){target="_blank"}.

**Planilha do Google gerada por EpikOne**

Esta planilha tem uma fórmula que gerará automaticamente URLs de destino marcados. Essa é uma ótima ferramenta para ser usada se um grande número de links precisar ser marcado. Acesse a planilha [aqui](https://spreadsheets.google.com/ccc?key=p7c_HKcmspSUfEYSO0gskKw&hl=en){target="_blank"}.

**Ferramenta De Marcação De Link Rafflecopter**

A planilha criada por Rafflecopter é uma versão modificada da planilha [!DNL EpikOne's]. Ela também contém uma fórmula que gerará automaticamente links de destino marcados para você usar.

Cada uma dessas ferramentas tem instruções detalhadas sobre como usá-la e modificá-la para atender às suas necessidades. A ferramenta está disponível [aqui](https://docs.google.com/spreadsheets/d/1QCIr1WUJQHE68cA4VTks2XE7nxuryaUymCEy_23-Oew/edit#gid=0){target="_blank"}.

**Construtor de UTM Incrível Effin**

Essa ferramenta é uma extensão do Chrome que permite gerar tags UTM rapidamente. Encontre [aqui](https://chrome.google.com/webstore/detail/effin-amazing-utm-builder/eoaapiimcaimddnfhfnifgkinmpcbccp?hl=en){target="_blank"}.

## Bing Ads {#bing-ads}

O Bing Ads é uma plataforma integrada que permite habilitar a marcação automática de URLs ou usar uma ferramenta de terceiros, como o [!DNL Marketo Measure], para marcar anúncios. [!DNL Bing Ads] também depende dos parâmetros UTM.

Nossa integração é compatível com os tipos de anúncios abaixo:

* Anúncio de texto
* Anúncio móvel
* Anúncio de texto expandido

O recurso de marcação automática do Bing Ads adiciona os seguintes parâmetros UTM:

* Utm_source
* Utm_medium
* Utm_term

A marcação automática do Bing Ads também adiciona o seguinte parâmetro personalizado:

`_bt={adid}`

A sequência de caracteres seria semelhante a:

`{lpurl}?_bt={adid}&utm_term={keyword}&utm_source=Bing_Yahoo&utm_medium=CPC`

É importante observar que o [!DNL Bing Ads] permite adicionar ainda mais parâmetros usando as tags personalizadas nas URLs finais para obter mais granularidade, se desejar.

Um modelo de rastreamento pode ser usado se desejado, mas não é necessário para a integração de [!DNL Bing Ads] e [!DNL Marketo Measure]. Isso ocorre porque [!DNL Bing] permite que anúncios sejam editados sem alterar o histórico, portanto [!DNL Marketo Measure] pode atualizar a URL de Destino.

A marcação automática deve ser habilitada por meio de [!DNL Marketo Measure] para que os parâmetros [!DNL Marketo Measure] personalizados possam ser anexados automaticamente. Não há risco de perder o histórico de desempenho de anúncios anteriores com o Bing Ads.

Visite o site [[!DNL Bing Ads]](https://advertise.bingads.microsoft.com/en-us/blog/post/august-2016/upgraded-urls-now-available-in-bing-ads-an-easier-way-to-manage-your-tracking-urls){target="_blank"} para obter mais informações sobre como adicionar tags à sua plataforma.

## Anúncios do Facebook {#facebook-ads}

A integração do [!DNL Marketo Measure] com o [!DNL Facebook] permite que ele baixe automaticamente informações de publicidade e marque a URL com seus parâmetros. O [!DNL Marketo Measure] obtém as informações da Campanha e do Conjunto de Anúncios por meio de nossa marcação automática. O Conjunto de anúncios preencherá o campo Nome do grupo de anúncios. Para obter mais informações sobre como configurar tags de URL na plataforma [!DNL Facebook], visite a página [!DNL Facebook] [negócios](https://www.facebook.com/business/help/1016122818401732/?ref=u2u){target="_blank"}.

Antes de habilitar a marcação automática com [!DNL Facebook Ads], é importante exportar o histórico de desempenho anterior como um CSV. Neste ponto, quando [!DNL Marketo Measure] marca [!DNL Facebook Ads] com seu parâmetro _bf, [!DNL Facebook] lê os anúncios como totalmente novos e apaga o histórico de desempenho. Portanto, é importante exportar um registro do desempenho anterior se isso for importante para você e para sua organização.

Observe que você pode conectar sua conta do [!DNL Facebook] a qualquer momento ao aplicativo [!DNL Marketo Measure] e nenhum dado será perdido; somente quando a marcação automática estiver habilitada, o histórico de desempenho será apagado.

Consulte [este artigo](https://www.facebook.com/business/help/393890194130036){target="_blank"} do Facebook para obter mais informações sobre como exportar [!DNL Facebook] relatórios de anúncios.

## Conteúdo patrocinado pelo LinkedIn {#linkedin-sponsored-content}

A integração do LinkedIn permite que [!DNL Marketo Measure] marque URLs de destino em [!DNL LinkedIn] Conteúdo Patrocinado, o que permite que [!DNL Marketo Measure] acompanhe um usuário em toda a sua jornada de ponto de contato e mapeie a atividade de volta para a Campanha [!DNL LinkedIn] e Creative específicas. Isso fornece informações aos clientes sobre o ROI da atividade [!DNL LinkedIn]. [!DNL Marketo Measure] pesquisará por criações com um Compartilhamento [!DNL LinkedIn] exclusivo e adicionará um parâmetro `?_bl={creativeId}` ao final dele.

Como os compartilhamentos do [!DNL LinkedIn] podem ser usados em várias campanhas e criações, pedimos que os clientes não copiem/clonem/dupliquem criações existentes para que possam manter sua exclusividade. Se compartilhamentos forem encontrados e detectados para serem usados apenas em uma Creative, o [!DNL Marketo Measure] poderá marcar o compartilhamento como está sem precisar recriar Criações ou Compartilhamentos, e todo o histórico de anúncios (impressões, cliques, compartilhamentos) permanecerá.

Assim que for detectado que um Compartilhamento está compartilhado em várias criações, o [!DNL Marketo Measure] terá que executar um processo de pausa, cópia e marcação novamente para criar um conjunto exclusivo. O [!DNL Marketo Measure] pausará e arquivará os trabalhos de criação ao vivo, o que significa que o criativo que contém as impressões, cliques e compartilhamentos sociais também será arquivado.

## Plataformas não integradas {#non-integrated-platforms}

Para plataformas que não estão integradas com [!DNL Marketo Measure], a funcionalidade de marcação automática [!DNL Marketo Measure] não pode ser usada. Os parâmetros precisarão ser adicionados manualmente.
