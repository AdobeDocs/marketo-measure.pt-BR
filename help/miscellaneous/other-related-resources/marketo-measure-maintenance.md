---
unique-page-id: 18874556
description: "[!DNL Marketo Measure] Manutenção - [!DNL Marketo Measure]"
title: "[!DNL Marketo Measure] Manutenção"
exl-id: 4e1d53bb-0af8-4774-9f69-6a95516b3d11
feature: Tracking
source-git-commit: fca2db86611d16f4e74467405521a89dd5d825ab
workflow-type: tm+mt
source-wordcount: '629'
ht-degree: 0%

---

# [!DNL Marketo Measure] Manutenção {#marketo-measure-maintenance}

[!DNL Marketo Measure] O extrai quase tudo o que precisa do seu CRM diariamente, mas há algumas tarefas de manutenção que você deve agendar regularmente para manter [!DNL Marketo Measure] cantarolando e gerando as informações mais precisas possíveis.

**Sincronizar pontos de contato do comprador para novas campanhas offline (2x/mês)**

Conforme você aprendeu durante a integração, [!DNL Marketo Measure] O obtém informações sobre suas iniciativas de marketing offline sincronizando com as campanhas do seu CRM. À medida que sua organização inicia novas campanhas, ative os Pontos de contato do comprador para cada campanha, conforme apropriado.

**Gasto de upload para todos os canais (1x/mês)**

Aproveitar todos os recursos de geração de relatórios sobre receita e ROI para[!DNL Marketo Measure], você deve informar [!DNL Marketo Measure] quanto você está gastando em cada canal e subcanal de marketing. Designar o proprietário de cada canal/subcanal e fazer com que essas pessoas relatem gastos a um único responsável por fazer upload de novas informações de custos mensalmente.

Atualize sua memória sobre como carregar informações de custo lendo [este artigo](/help/marketing-spend/spend-management/marketing-channel-costs.md).

**Atualizar lista de domínios para rastrear (1x/mês)**

O Marketo Measure rastreia todas as páginas e subdomínios em que nosso Javascript está ativo, mas somente para domínios que conhecemos. Se você estreou recentemente um novo domínio, expandiu internacionalmente ou alterou seu domínio primário, entre em contato com [Suporte ao Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} para ter certeza de que atualizamos sua conta adequadamente.

**Revise o mapeamento de canal personalizado para verificar a precisão (1x/mês)**

Durante a integração, é possível configurar o mapeamento de canal personalizado para seus esforços de marketing online e offline. À medida que sua estratégia de marketing e uso do Marketo Measure evoluem, você deseja acompanhar essa lógica de mapeamento para garantir que todos os pontos de contato sejam categorizados adequadamente.

Lembre-se: [!DNL Marketo Measure] O reprocessa seus dados ao editar a lógica de mapeamento, de modo que você não poderá alterar essas regras mais de uma vez a cada sete dias.

Referência [este artigo](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md) para configuração online, [este artigo](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md) para configuração offline e esta lista de práticas recomendadas selecionadas de nossos clientes:

* Revise os Pontos de contato que estão atualmente se encaixando em qualquer canal &quot;Outro&quot; ou &quot;NULO&quot; que você tenha configurado. Se apropriado, atualize sua lógica de mapeamento para reclassificar esses Pontos de contato em canais mais precisos.
* Analise os Pontos de contato que estão no momento se enquadrando nos canais diretos. Se algumas de suas campanhas de marketing por email ou outras iniciativas não tiverem os parâmetros UTM, há uma boa chance de o tráfego estar sendo inserido incorretamente em um canal Direto. Considere atualizar os parâmetros UTM para capturar a fonte de referência.

**Avaliar configurações de supressão do ponto de contato (1x/trimestre)**

Se você estiver vendo muitos pontos de contato que preferiria que não fossem considerados em sua história de atribuição (de uma [!DNL Login] ou [!DNL Unsubscribe forms], uma página de Carreiras ou um aplicativo interno, por exemplo), talvez você queira avaliar suas configurações de supressão de ponto de contato existentes. Uma vez por trimestre, aponte quaisquer grupos de pontos de contato que estejam criando ruídos desnecessários e atualize sua lógica de supressão adequadamente. [Veja um artigo útil](/help/advanced-marketo-measure-features/touchpoint-settings/touchpoint-removal-and-touchpoint-suppression.md)  com a instrução.

**Revisar o mapeamento de estágio personalizado para verificar a precisão (1x/trimestre) (se aplicável)**

Se você estiver usando qualquer [!UICONTROL Lead], [!UICONTROL Contato]ou [!UICONTROL Oportunidades] estágios, você também pode ter personalizado para qual parte do pipeline esses estágios são mapeados e se esses estágios estão incluídos em um modelo de atribuição personalizado. Uma vez por trimestre, visite [este artigo](/help/advanced-marketo-measure-features/custom-attribution-models/custom-attribution-model-and-setup.md) para atualizar a memória no mapeamento de estágio personalizado e garantir que você esteja rastreando com precisão seus estágios personalizados.

**Comparar o modelo de aprendizado de máquina com a ponderação do modelo personalizado (1x/trimestre) (se aplicável)**

Se você estiver licenciado para o [!DNL Marketo Measure] Custom Model, você também tem dados disponíveis em nosso Machine Learning Model (MLM) no [!UICONTROL Configurações] > [!UICONTROL Configurações de atribuição]. O MLM calcula a importância de cada estágio usando dados de ponto de contato da sua conta e pode ajudá-lo a decidir como alocar peso de atribuição em seu Modelo personalizado. Recomendamos comparar o MLM ao seu modelo personalizado uma vez por trimestre e discutir as implicações de possíveis alterações no seu modelo personalizado com o seu SM.

Para obter mais informações sobre o [!DNL Marketo Measure] Modelo de aprendizado de máquina, check-out [este artigo](/help/advanced-marketo-measure-features/custom-attribution-models/machine-learning-model-faq.md).
