---
description: Gerenciamento de domínio - [!DNL Marketo Measure] - Documentação do produto
title: Gerenciamento de domínio
exl-id: 4db287a0-0267-463c-a359-266b41f15c59
source-git-commit: 54337a0a65b79d80ebeae6531f5e92f4f48721a7
workflow-type: tm+mt
source-wordcount: '575'
ht-degree: 0%

---

# Gerenciamento de domínio {#domain-management}

Para locatários com IMS habilitado em execução [!DNL Marketo Measure] no shell unificado, [!DNL Marketo Measure] O fornece uma interface que permite aos usuários gerenciar sua própria lista de domínios. [!DNL Marketo Measure] Os usuários devem verificar primeiro os domínios que desejam rastrear na variável [Adobe Admin Console](https://adminconsole.adobe.com/). Depois que os domínios forem verificados no Admin Console, os usuários poderão gerenciar se [!DNL Marketo Measure] O usa esses domínios para rastrear o tráfego do site.

## Adicionar domínios no Admin Console {#adding-domains-in-admin-console}

Usuários do IMS com acesso à Adobe Admin Console podem adicionar e validar domínios de sua propriedade. A validação de domínio envolve adicionar um registro DNS para cada domínio e, subsequentemente, permitir que o Admin Console verifique esse registro.

![](assets/domain-management-1.png)

As instruções para adicionar domínios podem ser encontradas no [Documentação do Admin Console](https://helpx.adobe.com/enterprise/using/set-up-identity.html#setup-domains). Depois que um domínio é adicionado, ele deve ser [vinculado a um diretório](https://helpx.adobe.com/enterprise/using/set-up-identity.html#link-domains-to-directories).

## Gerenciamento de domínios no [!DNL Marketo Measure] {#managing-domains-in-marketo-measure}

Depois que um domínio é adicionado no Admin Console, [!DNL Marketo Measure] O sincronizará esse registro em nosso banco de dados regularmente. Essa sincronização acontece à noite e também toda vez que um usuário visita a **[!UICONTROL Domínios]** na página [!DNL Marketo Measure] IU. Por padrão, todos os registros que [!DNL Marketo Measure] as importações serão desativadas e o locatário deverá ativar manualmente cada domínio.

![](assets/domain-management-2.png)

No **[!UICONTROL Integração]** > **[!UICONTROL Domínios]** , o usuário verá todos os domínios que ele registrou no Admin Console, juntamente com seu status. Cada domínio pode ser ativado ou desativado. Se um domínio estiver ativado, [!DNL Marketo Measure] O rastreamento coletará todo o tráfego visto nesse domínio. Se um domínio estiver desativado, [!DNL Marketo Measure] ignorará qualquer tráfego visto proveniente desse domínio e não criará pontos de contato ou outros dados. [!DNL Marketo Measure] O também confirmará a desativação de um domínio e avisará sobre as ramificações:

![](assets/domain-management-3.png)

O impacto da alternância de um domínio é imediato e as alterações não são retroativas. No futuro, [!DNL Marketo Measure] eliminará dados de domínios desativados após um período de tempo definido.

## Status {#statuses}

Os status de Admin Console são classificados da seguinte maneira:

* **VALIDADO**: Este domínio é verificado no Admin Console
* **NÃO VERIFICADO**: Este domínio não é totalmente verificado no Admin Console e não está qualificado para rastreamento no [!DNL Marketo Measure]
* **INVÁLIDO**: Este domínio pode ter expirado ou sido removido do Admin Console. Rastreamento de dados em [!DNL Marketo Measure] está sinalizada para exclusão
* **LEGADO**: Este domínio foi criado em [!DNL Marketo Measure] e não existe no Admin Console

Os status de rastreamento podem ser os seguintes:

* **ATIVO**: [!DNL Marketo Measure] está recebendo dados desse domínio no momento
* **DESATIVADO**: Este domínio está disponível para rastreamento, mas está desabilitado no momento
* **INDISPONÍVEL**: Este domínio não está disponível para rastreamento porque não foi verificado

Passar o cursor do mouse sobre qualquer item de status individual acionará uma dica de ferramenta que explica ainda mais esse status.

## Perguntas frequentes {#faq}

**O que acontece quando um domínio é removido no Admin Console?**

Quando um domínio é removido no Admin Console, [!DNL Marketo Measure] marcará o domínio como excluído. [!DNL Marketo Measure] O interromperá imediatamente o rastreamento de tráfego nesse domínio, mas não removerá os dados coletados anteriormente.

**Por que não consigo habilitar um domínio?**

Há vários motivos pelos quais um domínio pode não ser permitido para seleção nesta página. Se o domínio não for validado no Admin Console, ele não estará disponível em [!DNL Marketo Measure]. Da mesma forma, se o domínio for de propriedade de uma Org de Adobe diferente do atual [!DNL Marketo Measure] locatário, pode estar indisponível para seleção.

**Como remover um domínio desta lista?**

Se um domínio tiver a opção &quot;ativada&quot; desativada, [!DNL Marketo Measure] o ignorará e será efetivamente removido de [!DNL Marketo Measure]. Para remover permanentemente um domínio de [!DNL Marketo Measure], você deve desativá-lo no [!DNL Marketo Measure]e depois retirá-lo da Admin Console.
