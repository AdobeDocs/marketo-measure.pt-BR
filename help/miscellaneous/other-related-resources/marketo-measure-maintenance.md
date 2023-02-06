---
unique-page-id: 18874556
description: "[!DNL Marketo Measure] Manutenção - [!DNL Marketo Measure] - Documentação do produto"
title: "[!DNL Marketo Measure] Manutenção"
exl-id: 4e1d53bb-0af8-4774-9f69-6a95516b3d11
source-git-commit: 09ffdbb0b1baeed870a3145268997e63a3707c97
workflow-type: tm+mt
source-wordcount: '644'
ht-degree: 0%

---

# [!DNL Marketo Measure] Manutenção {#marketo-measure-maintenance}

[!DNL Marketo Measure] extrai quase tudo o que precisa do seu CRM diariamente, mas há algumas tarefas de manutenção que você desejará agendar regularmente para manter [!DNL Marketo Measure] humedecendo e criando as informações mais precisas possíveis.

**Sincronizar pontos de contato do comprador para novas campanhas offline (2x/mês)**

Como você aprendeu durante a integração, [!DNL Marketo Measure] O obtém informações sobre seus esforços de marketing offline ao sincronizar com as campanhas do CRM. À medida que sua organização inicia novas campanhas, ative os Pontos de contato do comprador para cada campanha, conforme apropriado. Veja [este artigo](/help/channel-tracking-and-setup/offline-channels/syncing-offline-campaigns.md)para obter mais informações.

**Fazer upload dos gastos de todos os canais (1x/mês)**

Para aproveitar os recursos completos de relatório de receita e ROI para[!DNL Marketo Measure], você precisa dizer [!DNL Marketo Measure] quanto você está gastando em cada um dos canais e subcanais de marketing. Recomendamos designar o proprietário de cada canal/subcanal e fazer com que o relatório de pessoas seja gasto para uma única parte responsável por fazer upload de novas informações de custo mensalmente.

Atualize sua memória sobre como fazer upload de informações de custo lendo [este artigo](/help/marketing-spend/spend-management/marketing-channel-costs.md).

**Atualizar lista de domínios a serem rastreados (1x/mês)**

O Marketo Measure rastreia todas as páginas e subdomínios em que o Javascript está ativo, mas somente para domínios que conhecemos. Se você depurou recentemente um novo domínio, expandiu internacionalmente ou alterou seu domínio principal, entre em contato com o [Suporte Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} para garantir que atualizemos sua conta adequadamente.

**Analise o mapeamento de canal personalizado para obter precisão (1x/mês)**

Durante a integração, você configura o mapeamento de canal personalizado para seus esforços de marketing online e offline. Conforme sua estratégia de marketing e uso do Marketo Measure evoluem, você deve manter a atenção nessa lógica de mapeamento para garantir que todos os seus pontos de contato estejam sendo categorizados adequadamente.

Lembre-se, [!DNL Marketo Measure] O reprocessa seus dados ao editar a lógica de mapeamento, de modo que não seja possível alterar essas regras mais de uma vez a cada 7 dias.

Referência [este artigo](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md) para configuração online, [este artigo](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md) para configuração offline e esta lista de práticas recomendadas elaboradas com nossos clientes:

* Analise os Pontos de contato que estão atualmente sendo incluídos em qualquer canal &quot;Outro&quot; ou &quot;NULL&quot; que tenha sido configurado. Se apropriado, atualize sua lógica de mapeamento para categorizar novamente esses pontos de contato em canais mais precisos.
* Analise os Pontos de contato que estão atualmente caindo em seus Canais diretos. Se algumas de suas campanhas de marketing por email ou outros esforços não tiverem parâmetros de UTM, há uma boa chance de o tráfego estar sendo incluído inadequadamente em um canal Direto. Considere a atualização dos parâmetros de UTM para capturar a fonte de referência.

**Avaliar configurações de supressão de ponto de contato (1x/trimestre)**

Se você estiver vendo muitos pontos de contato que preferiria que não fossem considerados em sua história de atribuição (de um [!DNL Login] ou [!DNL Unsubscribe forms], uma página de Carreiras ou um aplicativo interno, por exemplo), talvez você queira avaliar as configurações de supressão de pontos de contato existentes. Uma vez por trimestre, identifique quaisquer grupos de pontos de contato que estejam criando ruídos desnecessários e atualize sua lógica de supressão adequadamente. [Aqui está um artigo útil](/help/advanced-marketo-measure-features/touchpoint-settings/touchpoint-removal-and-touchpoint-suppression.md)  com o passo a passo.

**Analisar o mapeamento de estágio personalizado para precisão (1x/trimestre) (se aplicável)**

Se você estiver usando qualquer [!UICONTROL Líder], [!UICONTROL Contato]ou [!UICONTROL Oportunidades] em etapas, também é possível ter personalizado qual parte do pipeline esses estágios mapeiam e se esses estágios estão ou não incluídos em um modelo de atribuição personalizado. Uma vez por trimestre, visite [este artigo](/help/advanced-marketo-measure-features/custom-attribution-models/custom-attribution-model-and-setup.md) para atualizar a memória no mapeamento de estágio personalizado e garantir que você esteja rastreando com precisão seus estágios personalizados.

**Comparar o Modelo de Aprendizagem de Máquina à ponderação do Modelo Personalizado (1x/trimestre) (se aplicável)**

Se você tiver licença do [!DNL Marketo Measure] Modelo personalizado, você também tem dados disponíveis em nosso Modelo de aprendizado de máquina (MLM) em [!UICONTROL Configurações] > [!UICONTROL Configurações de atribuição]. O MLM calcula a importância de cada estágio usando dados de ponto de contato da sua conta e pode ajudá-lo a decidir como alocar peso de atribuição no Modelo personalizado. Recomendamos comparar o MLM ao seu Modelo personalizado uma vez por trimestre e discutir as implicações de possíveis alterações no seu Modelo personalizado com seu SM.

Para obter mais informações sobre o [!DNL Marketo Measure] Modelo de aprendizado de máquina, confira [este artigo](/help/advanced-marketo-measure-features/custom-attribution-models/machine-learning-model-faq.md).
