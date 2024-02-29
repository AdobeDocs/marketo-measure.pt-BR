---
unique-page-id: 18874761
description: Logon único - [!DNL Marketo Measure]
title: Single Sign On
exl-id: a328e9cb-8352-4693-8a44-533e08f1a29c
source-git-commit: 915e9c5a968ffd9de713b4308cadb91768613fc5
workflow-type: tm+mt
source-wordcount: '1286'
ht-degree: 0%

---

# Single Sign On {#single-sign-on}

O SAML (security assertion markup language) para SSO (single sign-on) possibilita que os usuários se autentiquem por meio do provedor de identidade de uma empresa ao fazer logon na [!DNL Marketo Measure] aplicativo. O SSO permite que um usuário se autentique apenas uma vez, sem precisar autenticar aplicativos separados. O SAML é uma necessidade para clientes corporativos porque nem todos os usuários terão um [!DNL Salesforce] ou [!DNL Google] conta na organização. Para dimensionar, [!DNL Marketo Measure] A desenvolveu uma solução SAML que pode dar suporte a provedores de identidade da empresa.

>[!CAUTION]
>
>Este artigo descreve o Logon único (SSO) e o Gerenciamento avançado de usuários do CRM. Se sua conta foi provisionada **após 10/9/2020**, ignore este artigo, pois o SSO e o Identity Management serão configurados no [Adobe Admin Console para o seu [!DNL Marketo Measure] integração](/help/configuration-and-setup/getting-started-with-marketo-measure/marketo-measure-quick-start.md).

>[!NOTE]
>
>É provável que as empresas usem diferentes Provedores de identidade (por exemplo, Identidade de ping, Okta). Os termos usados nas instruções de configuração a seguir e na interface do usuário podem não corresponder diretamente aos usados pelo seu Provedor de identidade.

## Requisitos {#requirements}

* Usuário com permissões de AccountAdmin no [!DNL Marketo Measure] Aplicativo
* Usuário com acesso administrativo ao provedor de identidade do cliente

## Introdução {#getting-started}

Para começar, navegue até a página Configurações > Segurança > Autenticação no [!DNL Marketo Measure] aplicação. Em seguida, alterne o Tipo de logon para SSO personalizado para ver as opções de configuração. As alterações não entrarão em vigor até que você teste a autenticação e clique no **[!UICONTROL Salvar]** na parte inferior da página.

![](assets/single-sign-on-1.png)

## Processar {#process}

[!DNL Marketo Measure] O Logon único exige a definição das configurações de Autenticação em uma série de etapas que devem ser seguidas para que você não corra o risco de ficar bloqueado em seu [!DNL Marketo Measure] conta.

Configurar o [!DNL Marketo Measure] Aplicativo no provedor de identidade. Consulte a documentação externa listada abaixo para obter instruções passo a passo.

    a. Quando for solicitado o URL de Logon Único, URL do Destinatário ou URL de Destino, URL do SAML Assertion Customer Service (ACS), use [https://apps.bizible.com/BizibleSAML2/ReceiveSSORequest](https://apps.bizible.com/BizibleSAML2/ReceiveSSORequest)
    
    b. Quando solicitado a fornecer o URL de restrição de público-alvo ou o identificador exclusivo definido pelo aplicativo, use [https://BizibleLPM](https://biziblelpm/)

Alterne para SSO personalizado na [!DNL Marketo Measure] Aplicativo

    a. Depois que o Grupo de cobrança tiver sido ativado para sua Conta, você poderá navegar até [!UICONTROL Configurações] >>[!UICONTROL Segurança] >> [!UICONTROL Autenticação]
    
    b. Por padrão, seu Tipo de login será definido como &quot;Usuários do CRM&quot;.
    
    c. Alterne o Tipo de login para &quot;SSO personalizado&quot; para iniciar o processo de configuração.

Preencha as configurações de conexão para sua configuração do Provedor de identidade

    a. O provedor de identidade pode fornecer um documento .xml de metadados IdP que obterá os campos de configuração necessários. Carregue o conteúdo do documento .xml ou preencha os três campos abaixo da saída obtida durante o processo de configuração do Provedor de identidade. **Não é necessário concluir ambos.**
    
    i. URL IdP: o URL que [!DNL Marketo Measure] precisa apontar para para para autenticar seus usuários na [!DNL Marketo Measure] aplicação. Às vezes, chamado de &quot;URL de redirecionamento&quot;.
    ii) Emissor de IdP: um identificador exclusivo do Provedor de identidade. Algumas vezes chamada de &quot;Chave externa&quot;.
    iii) Certificado IdP: uma chave pública que permite [!DNL Marketo Measure] para verificar e validar a assinatura de todas as respostas do Provedor de identidade.

Defina a expiração do token para seus usuários em minutos.

    a) [!DNL Marketo Measure] permite um número inteiro de 1 a 1440 minutos. Após o tempo de sessão de um usuário ser excedido, ele será desconectado assim que navegar para uma nova página.

Defina e mapeie suas configurações de Atributo do usuário para o respectivo Nome, Sobrenome e Endereço de email.

    a. Ao inserir os atributos SAML, [!DNL Marketo Measure] O poderá reconhecer seus usuários pelas informações transmitidas.
    
    i. Atributo de email: Forneça o nome do atributo que seu Provedor de identidade usa para o endereço de email do usuário.
    ii) Atributo de nome: Forneça o nome do atributo que seu Provedor de identidade usa para o nome do usuário.
    iii) Atributo do sobrenome: Forneça o nome do atributo que seu Provedor de identidade usa para o sobrenome do usuário.
    
    b. Dica: se você testar a configuração do SAML agora, analisaremos os atributos Email, Nome e Sobrenome que você pode usar para esta seção.

![](assets/single-sign-on-2.png)

Defina e mapeie suas configurações de Função do usuário para as respectivas funções ou grupos classificados pelo seu IdP.

    a. Os clientes têm a opção de atribuir [!DNL Marketo Measure] funções de usuário com base em grupos definidos no Provedor de identidade. Ao inserir seus atributos SAML, [!DNL Marketo Measure] poderá mapear as funções e grupos de seu usuário para [!DNL Marketo Measure] permissões do usuário. Recomendamos que você configure essas funções para que seus [!DNL Marketo Measure] o administrador tem direitos suficientes para atualizar sua conta.
    
    b. Se nenhuma função ou grupo for mapeado, a configuração padrão é que todos os funcionários no Provedor de identidade terão acesso de usuário padrão.
    
    i) [!DNL Marketo Measure] Usuário Padrão: Fornece o valor da atribuição ou do grupo (do seu provedor de SSO) para usuários que devem ter acesso somente leitura ao [!DNL Marketo Measure] aplicação.
    ii) [!DNL Marketo Measure] Usuário Admin da Conta: Forneça o valor da função ou do grupo (do seu provedor SSO) para usuários que devem ter acesso administrativo à [!DNL Marketo Measure] aplicação. Isso significa que a função tem acesso para alterar configurações e configurações relacionadas à sua conta.
    iii) Você deve ter um atributo em seu IdP com o nome exato de &quot;grupos&quot; que abriga os valores inseridos nos atributos &quot;Usuário do Bizible Standard&quot; ou &quot;Usuário do Bizible Account Admin&quot;.
    
    c. Se for necessário mapear várias funções ou grupos para uma função, insira cada valor separado por vírgula.

![](assets/single-sign-on-3.png)

Testar a configuração de Logon único

    a. Antes de clicar em Salvar, você deverá clicar no link [!UICONTROL Testar Autenticação SAML] botão para verificar se as configurações foram definidas corretamente.
    
    b. Se você vir um erro de &quot;falha&quot;, siga a mensagem e tente novamente.

![](assets/single-sign-on-4.png)

Salve as configurações e direcione seus colegas para usar [!UICONTROL Logon único] com seu novo URL de entrada personalizado.

    a. Importante: depois de salvar as novas configurações de Autenticação, é possível que a sessão termine quando você navegar para uma nova página, pois você desabilitou o logon dos Usuários do CRM e habilitou o SSO personalizado.

![](assets/single-sign-on-5.png)

Experimente!

    a. Use seu novo URL de entrada personalizado e tente fazer logon novamente na [!DNL Marketo Measure] Aplicativo com suas credenciais do Provedor de Identidade.
    
    b. O formato será semelhante a &quot;https://apps.adobe.com/business/[accountName]&quot;
    
    c. Parabéns! Você configurou com sucesso o Logon único na [!DNL Marketo Measure] Aplicativo para sua conta!

![](assets/single-sign-on-6.png)

>[!NOTE]
>
>Após configurar o SSO, não será mais necessário adicionar usuários dentro do [!DNL Marketo Measure] aplicação. O provisionamento do usuário deve ser tratado diretamente no provedor de identidade.

## Usuários do CRM (Configuração Avançada) {#crm-users-advanced-setup}

Por padrão, todas as contas podem acessar a variável [!DNL Marketo Measure] aplicativo usando suas credenciais do CRM. Às vezes, os proprietários de conta precisam limitar o acesso a determinadas funções e não abri-lo para todos os usuários com uma licença de CRM ativa. A Configuração avançada permitirá mapear suas funções e grupos do CRM para [!DNL Marketo Measure] permissões do usuário.

Se nenhuma função ou grupo for mapeado, a configuração padrão será que todas as licenças ativas no seu CRM terão acesso de usuário padrão.

* [!DNL Marketo Measure] Usuário Padrão: Fornece o valor da função ou do grupo para usuários que devem ter acesso somente leitura ao [!DNL Marketo Measure] aplicação.
* [!DNL Marketo Measure] Usuário administrador da conta: forneça o valor da função ou do grupo para os usuários que devem ter acesso administrativo à [!DNL Marketo Measure] aplicação. Isso significa que a função tem acesso para alterar configurações e configurações relacionadas à sua conta.

Se for necessário mapear várias funções ou grupos para uma função, insira cada valor separado por vírgula.

**Funções do Salesforce**

Para [!DNL Salesforce] Funções, use o nome de cada Função. Todas as funções podem ser encontradas na [!UICONTROL Configuração] >[!UICONTROL Gerenciar usuários] >[!UICONTROL Funções] menu.

![](assets/6.png)

**Funções do Dynamics**

Para [!DNL Dynamics] Atribuições, use o nome de cada Atribuição de Segurança. Todas as Funções de Segurança podem ser encontradas no [!UICONTROL Configurações] >[!UICONTROL Segurança] >[!UICONTROL Funções de segurança] menu.

![](assets/7.png)

![](assets/8.png)

**Usuários do Google**

Depois que o SSO personalizado for configurado, a variável [!UICONTROL Usuários] A página será atualizada para mostrar apenas usuários externos que foram adicionados com logons da Google. Como todos os usuários com acesso são definidos por meio da configuração de SSO, os usuários externos adicionais são listados aqui.

![](assets/9.png)

Somente válido [!DNL Google] As contas do podem ser adicionadas e devem ter uma Função de usuário definida.

## Links externos {#external-links}

* [Okta](http://developer.okta.com/standards/SAML/setting_up_a_saml_application_in_okta)
* [Identidade do ping](http://docs.pingidentity.com/bundle/p1_enterpriseConfigSsoSaml_cas/page/enableAppWithoutURL.html)
* [OneLogin](http://onelogin.service-now.com/support?id=kb_article&amp;sys_id=b2c91143db109700d5505eea4b9619d5)
* [Ative Diretory](http://docs.microsoft.com/en-us/azure/active-directory/active-directory-saas-custom-apps)
