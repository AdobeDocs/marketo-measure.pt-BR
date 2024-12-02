---
unique-page-id: 18874556
description: '[!DNL Marketo Measure] Manutenção - [!DNL Marketo Measure]'
title: Manutenção do [!DNL Marketo Measure]
exl-id: 4e1d53bb-0af8-4774-9f69-6a95516b3d11
feature: Tracking
source-git-commit: fca2db86611d16f4e74467405521a89dd5d825ab
workflow-type: tm+mt
source-wordcount: '629'
ht-degree: 99%

---

# Manutenção do [!DNL Marketo Measure] {#marketo-measure-maintenance}

O [!DNL Marketo Measure] extrai quase tudo o que precisa do seu CRM diariamente, mas é preciso agendar algumas tarefas de manutenção regularmente para manter o [!DNL Marketo Measure] calibrado, a fim de gerar as informações mais precisas possíveis.

**Sincronizar Buyer Touchpoints para novas campanhas offline (2x/mês)**

Conforme você aprendeu durante a integração, o [!DNL Marketo Measure] obtém informações sobre as iniciativas de marketing offline sincronizando com as campanhas do CRM. À medida que a organização inicia novas campanhas, habilite os Buyer Touchpoints para cada campanha, conforme apropriado.

**Gasto de upload para todos os canais (1x/mês)**

Para aproveitar todos os recursos de geração de relatórios sobre receita e ROI do [!DNL Marketo Measure], informe ao [!DNL Marketo Measure] o quanto você está gastando em cada canal e subcanal de marketing. Designe o(a) proprietário(a) de cada canal/subcanal a relatar gastos para uma única pessoa responsável por fazer upload de novas informações de custos mensalmente.

Para refrescar sua memória sobre como fazer upload de informações de custo, leia [este artigo](/help/marketing-spend/spend-management/marketing-channel-costs.md).

**Atualizar lista de domínios a rastrear (1x/mês)**

O Marketo Measure rastreia todas as páginas e subdomínios nos quais o Javascript está ativo, mas somente em domínios conhecidos. Se você introduziu um novo domínio recentemente, expandiu internacionalmente ou alterou seu domínio primário, entre em contato com o [Suporte do Marketo](https://nation.marketo.com/t5/support/ct-p/Support){target="_blank"} para garantir que atualizamos sua conta adequadamente.

**Revisar o mapeamento de canal personalizado para verificar a precisão (1x/mês)**

Durante a integração, é possível configurar o mapeamento de canal personalizado para seus esforços de marketing online e offline. À medida que a estratégia de marketing e uso do Marketo Measure evoluem, você desejará acompanhar essa lógica de mapeamento para garantir que todos os pontos de contato sejam categorizados adequadamente.

Observe que o [!DNL Marketo Measure] reprocessa os dados quando você edita a lógica de mapeamento, portanto, não altere essas regras mais de uma vez a cada sete dias.

Consulte [este artigo](/help/channel-tracking-and-setup/online-channels/online-custom-channel-setup.md) para a configuração online, [este artigo](/help/channel-tracking-and-setup/offline-channels/offline-custom-channel-setup.md) para a configuração offline e esta lista de práticas recomendadas selecionadas de clientes:

* Revise os pontos de contato que atualmente se enquadram em qualquer canal “Outro” ou “NULO” configurado. Se apropriado, atualize a lógica de mapeamento para reclassificar esses pontos de contato, inserindo-os em canais mais precisos.
* Revise os pontos de contato que atualmente se enquadram nos canais diretos. Se algumas de suas campanhas de marketing por email ou outras iniciativas não tiverem os parâmetros UTM, é bem provável que o tráfego esteja sendo inserido incorretamente em um canal direto. Considere atualizar os parâmetros UTM para capturar a fonte de referência.

**Avaliar configurações de supressão do ponto de contato (1x/trimestre)**

Caso veja muitos pontos de contato que você prefere que não sejam considerados em sua história de atribuição (por exemplo, de um [!DNL Login] ou [!DNL Unsubscribe forms], uma página de Carreiras ou um aplicativo interno), talvez queira avaliar suas configurações de supressão de ponto de contato atuais. Uma vez por trimestre, identifique grupos de pontos de contato que estejam gerando informações desnecessárias e atualize a lógica de supressão adequadamente. [Veja este artigo útil](/help/advanced-marketo-measure-features/touchpoint-settings/touchpoint-removal-and-touchpoint-suppression.md) com instruções.

**Revisar o mapeamento de estágio personalizado para verificar a precisão (1x/trimestre) (se aplicável)**

Caso utilize qualquer estágio personalizado de [!UICONTROL Lead], [!UICONTROL Contato] ou [!UICONTROL Oportunidades], também é possível personalizar para qual parte do pipeline esses estágios são mapeados e se eles estão incluídos em um modelo de atribuição personalizado. Uma vez por trimestre, visite [este artigo](/help/advanced-marketo-measure-features/custom-attribution-models/custom-attribution-model-and-setup.md) para refrescar sua memória sobre o mapeamento de estágio personalizado e garantir um rastreamento preciso de estágios personalizados.

**Comparar o modelo de aprendizado de máquina com a ponderação do modelo personalizado (1x/trimestre) (se aplicável)**

Caso possua uma licença para utilizar o modelo personalizado do [!DNL Marketo Measure], você também tem acesso aos dados de MLM (modelo de aprendizado de máquina) em [!UICONTROL Configurações] > [!UICONTROL Configurações de atribuição]. O MLM calcula a importância de cada estágio usando dados de ponto de contato da sua conta, o que pode ajudar você a decidir como alocar o peso de atribuição em seu modelo personalizado. Recomendamos comparar o MLM ao seu modelo personalizado uma vez por trimestre e discutir as implicações de possíveis alterações desse modelo personalizado com o SM.

Para obter mais informações sobre o modelo de aprendizado de máquina do [!DNL Marketo Measure], confira [este artigo](/help/advanced-marketo-measure-features/custom-attribution-models/machine-learning-model-faq.md).
