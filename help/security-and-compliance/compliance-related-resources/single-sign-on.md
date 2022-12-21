---
unique-page-id: 18874761
description: Logon único - [!DNL Marketo Measure] - Documentação do produto
title: Single Sign On
exl-id: a328e9cb-8352-4693-8a44-533e08f1a29c
source-git-commit: 09ffdbb0b1baeed870a3145268997e63a3707c97
workflow-type: tm+mt
source-wordcount: '1329'
ht-degree: 3%

---

# Single Sign On {#single-sign-on}

O SAML (linguagem de marcação de asserção de segurança) para SSO (logon único) possibilita que os usuários se autenticem por meio de um provedor de identidade da empresa quando fazem logon no [!DNL Marketo Measure] aplicativo. O SSO permite que um usuário se autentique apenas uma vez, sem precisar autenticar aplicativos separados. O SAML é uma necessidade para clientes corporativos porque nem todos os usuários terão uma [!DNL Salesforce] ou [!DNL Google] na organização. Para dimensionar, [!DNL Marketo Measure] O desenvolveu uma solução SAML que pode oferecer suporte aos provedores de identidade da empresa.

>[!CAUTION]
>
>Este artigo descreve o Logon único (SSO) e o Gerenciamento avançado de usuários de CRM. Se sua conta foi provisionada **após 10/9/2020**, desconsidere este artigo, pois o SSO e o Identity Management serão configurados no [Adobe Admin Console para seu [!DNL Marketo Measure] integração](/help/configuration-and-setup/getting-started-with-marketo-measure/marketo-measure-quick-start.md).

>[!NOTE]
>
>É provável que as empresas usem diferentes provedores de identidade (por exemplo, Ping Identity, Okta). Os termos usados nas instruções de configuração a seguir e na interface do usuário podem não corresponder diretamente aos usados pelo seu Provedor de identidade.

## Requisitos {#requirements}

* Usuário com permissões de AccountAdmin na [!DNL Marketo Measure] Aplicativo
* Usuário com acesso administrativo ao Provedor de identidade do cliente

## Introdução {#getting-started}

Para começar, navegue até a página Configurações > Segurança > Autenticação na [!DNL Marketo Measure] aplicativo. Em seguida, alterne o Tipo de logon para SSO personalizado para ver as opções de configuração. As alterações não entrarão em vigor até você testar sua autenticação e clicar no botão **[!UICONTROL Salvar]** na parte inferior da página.

![](assets/single-sign-on-1.png)

## Processar {#process}

[!DNL Marketo Measure] O Logon único requer a configuração das configurações de Autenticação em uma série de etapas importantes a serem seguidas para que você não arrisque ficar bloqueado [!DNL Marketo Measure] conta.

Configure o [!DNL Marketo Measure] Aplicativo em seu Provedor de identidade. Consulte a documentação externa listada abaixo para obter instruções.

    a. Quando solicitado para o URL de logon único ou URL de destinatário ou URL de destino, SAML Assertion Customer Service (ACS) URL, use [https://apps.bizible.com/BizibleSAML2/ReceiveSSORequest](https://apps.bizible.com/BizibleSAML2/ReceiveSSORequest)
    
    b. Quando solicitado para o URL de restrição de público-alvo ou identificador exclusivo definido pelo aplicativo, use [https://BizibleLPM](https://biziblelpm/)

Alterne para SSO personalizado na [!DNL Marketo Measure] Aplicativo

    a. Depois que o Grupo de Faturamento tiver sido ativado para sua Conta, você poderá navegar para [!UICONTROL Configurações] >>[!UICONTROL Segurança] >> [!UICONTROL Autenticação]
    
    b. Por padrão, seu Tipo de logon será definido como &quot;Usuários de CRM&quot;.
    
    c. Alterne o Tipo de Logon para &quot;SSO Personalizado&quot; para iniciar o processo de configuração.

Preencha as configurações de conexão para sua configuração do Provedor de identidade

    a. Seu Provedor de identidade pode fornecer um documento .xml de metadados IdP que extrairá os campos de configuração necessários. Você pode carregar o conteúdo do documento .xml ou preencher os três campos abaixo com base no resultado obtido durante o processo de configuração do provedor de identidade. **Não é preciso fazer as duas coisas.**
    
    i. URL de IdP: O URL que [!DNL Marketo Measure] O precisa apontar para para para autenticar seus usuários no [!DNL Marketo Measure] aplicativo. Às vezes chamada de &quot;URL de redirecionamento&quot;.
    ii. Emissor do IdP: Um identificador exclusivo do Provedor de identidade. Às vezes chamada de &quot;Chave externa&quot;.
    iii. Certificado IdP: Uma chave pública que permite [!DNL Marketo Measure] para verificar e validar a assinatura de todas as respostas do Provedor de identidade.

Defina a expiração do token para seus usuários em minutos.

    a. [!DNL Marketo Measure] permite um número inteiro de 1 a 1440 minutos. Após o tempo de sessão de um usuário ter sido excedido, ele será desconectado assim que navegar para uma nova página.

Defina e mapeie suas configurações de Atributo do usuário para o Nome, Sobrenome e Endereço de email respectivos.

    a. Inserindo os atributos SAML, [!DNL Marketo Measure] O será capaz de reconhecer os usuários pelas informações transmitidas.
    
    i. Atributo de email: Forneça o nome do atributo que seu Provedor de identidade usa para o endereço de email do usuário.
    ii. Atributo do primeiro nome: Forneça o nome do atributo que seu Provedor de identidade usa para o nome do usuário.
    iii. Atributo de sobrenome: Forneça o nome do atributo que seu Provedor de identidade usa para o sobrenome do usuário.
    
    b. Dica: Se você testar a configuração do SAML agora, analisaremos os atributos Email, Nome e Sobrenome que você pode usar para esta seção.

![](assets/single-sign-on-2.png)

Defina e mapeie suas configurações de Função de usuário para as respectivas funções ou grupos classificados de seu IdP.

    a. Os clientes têm a opção de atribuir [!DNL Marketo Measure] funções de usuário com base em grupos definidos em seu Provedor de identidade. Inserindo seus atributos SAML, [!DNL Marketo Measure] poderá mapear as funções e os grupos do usuário para [!DNL Marketo Measure] permissões do usuário. Recomendamos que você configure essas funções para que [!DNL Marketo Measure] o administrador tem direitos suficientes para atualizar sua conta.
    
    b. Se nenhuma função ou grupo for mapeado, a configuração padrão é que todos os funcionários no Provedor de identidade terão acesso de usuário padrão.
    
    i. [!DNL Marketo Measure] Usuário padrão: Forneça a função ou o valor do grupo (do seu provedor SSO) para usuários que devem ter acesso somente leitura ao [!DNL Marketo Measure] aplicativo.
    ii. [!DNL Marketo Measure] Usuário administrador da conta: Forneça a função ou o valor do grupo (do seu provedor SSO) para os usuários que devem ter acesso administrativo ao [!DNL Marketo Measure] aplicativo. Isso significa que a função tem acesso para alterar configurações e configurações relacionadas à sua conta.
    iii. Você deve ter um atributo em seu IdP com o nome exato de &quot;grupos&quot; que contém os valores inseridos nos atributos &quot;Usuário padrão da Bizible&quot; ou &quot;Usuário administrador da conta da Bizible&quot;.
    
    c. Se várias funções ou grupos devem ser mapeados para uma função, insira cada valor separado por vírgula.

![](assets/single-sign-on-3.png)

Testar a configuração de logon único

    a. Antes de clicar em Salvar, será necessário clicar no botão [!UICONTROL Testar autenticação SAML] para verificar se as configurações foram definidas corretamente.
    
    b. Se aparecer um erro de &quot;falha&quot;, siga a mensagem e tente novamente.

![](assets/single-sign-on-4.png)

Salve as configurações e direcione seus colegas para usar [!UICONTROL Logon único] com seu novo URL de logon personalizado.

    a. Importante: Depois de Salvar suas novas configurações de Autenticação, é possível que sua sessão termine assim que você navegar para uma nova página, pois desativou o logon por usuários do CRM e ativou o SSO personalizado.

![](assets/single-sign-on-5.png)

Experimente!

    a. Use seu novo URL de logon personalizado e tente fazer logon novamente no [!DNL Marketo Measure] Aplicativo com suas credenciais do Provedor de identidade.
    
    b. O formato terá a aparência de &quot;https://apps.adobe.com/business/[accountName]&quot;
    
    c. Parabéns! Você configurou o Logon único com êxito no [!DNL Marketo Measure] Aplicativo para sua conta!

![](assets/single-sign-on-6.png)

>[!NOTE]
>
>Depois de configurar o SSO, não será mais necessário adicionar usuários no [!DNL Marketo Measure] aplicativo. O provisionamento do usuário deve ser manipulado diretamente no Provedor de identidade.

## Usuários do CRM (Configuração avançada) {#crm-users-advanced-setup}

Por padrão, todas as contas podem acessar a variável [!DNL Marketo Measure] aplicativo usando suas credenciais do CRM. Às vezes, os proprietários da conta precisam limitar o acesso a determinadas funções e não abri-la a todos os usuários com uma licença CRM ativa. A Configuração avançada permitirá mapear as funções e os grupos do CRM para [!DNL Marketo Measure] permissões do usuário.

Se nenhuma função ou grupo for mapeado, a configuração padrão é que todas as licenças ativas em seu CRM terão acesso de usuário padrão.

* [!DNL Marketo Measure] Usuário padrão: Forneça a função ou o valor do grupo para os usuários que devem ter acesso somente leitura à variável [!DNL Marketo Measure] aplicativo.
* [!DNL Marketo Measure] Usuário administrador da conta: Forneça a função ou o valor do grupo para os usuários que devem ter acesso administrativo à [!DNL Marketo Measure] aplicativo. Isso significa que a função tem acesso para alterar configurações e configurações relacionadas à sua conta.

Se várias funções ou grupos devem ser mapeados para uma função, insira cada valor separado por vírgula.

**Funções do Salesforce**

Para [!DNL Salesforce] Funções, use o nome de cada Função. Todas as funções podem ser encontradas no [!UICONTROL Configuração] >[!UICONTROL Gerenciar usuários] >[!UICONTROL Funções] menu.

![](assets/6.png)

**Funções do Dynamics**

Para [!DNL Dynamics] Funções, use o nome de cada Função de Segurança. Todas as funções de segurança podem ser encontradas na seção [!UICONTROL Configurações] >[!UICONTROL Segurança] >[!UICONTROL Funções de segurança] menu.

![](assets/7.png)

![](assets/8.png)

**Usuários do Google**

Depois que o SSO personalizado for configurado, a variável [!UICONTROL Usuários] será atualizada para mostrar somente usuários externos que foram adicionados com logons do Google. Como todos os usuários com acesso são definidos por meio da configuração de SSO, outros usuários externos são listados aqui.

![](assets/9.png)

Somente válido [!DNL Google] contas podem ser adicionadas e devem ter uma Função de usuário definida.

## Links externos {#external-links}

* [Okta](http://developer.okta.com/standards/SAML/setting_up_a_saml_application_in_okta)
* [Identidade do Ping](http://docs.pingidentity.com/bundle/p1_enterpriseConfigSsoSaml_cas/page/enableAppWithoutURL.html)
* [OneLogin](http://onelogin.service-now.com/support?id=kb_article&amp;sys_id=b2c91143db109700d5505eea4b9619d5)
* [Ative Diretory](http://docs.microsoft.com/en-us/azure/active-directory/active-directory-saas-custom-apps)
