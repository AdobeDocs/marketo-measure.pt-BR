---
unique-page-id: 18874761
description: Single Sign On - [!DNL Marketo Measure]
title: Single Sign On
exl-id: a328e9cb-8352-4693-8a44-533e08f1a29c
---
# Single Sign On {#single-sign-on}

SAML (security assertion markup language) for SSO (single sign-on) makes it possible for users to authenticate through a company's identity provider when they log in to the [!DNL Marketo Measure] app. SSO allows a user to authenticate once, without needing to authenticate separate apps. SAML is a necessity for enterprise customers because not all users have a [!DNL Salesforce] or [!DNL Google] account within their organization. To scale, [!DNL Marketo Measure] has developed an SAML solution that can support company identity providers.

>[!CAUTION]
>
>This article outlines Single Sign On (SSO) and advanced CRM User Management. If your account was provisioned **after 9/10/2020**, disregard this article, as SSO and Identity Management will be set up within the [Adobe Admin Console for your [!DNL Marketo Measure] integration](/help/configuration-and-setup/getting-started-with-marketo-measure/marketo-measure-quick-start.md).

>[!NOTE]
>
>It's likely that companies use different Identity Providers (for example, Ping Identity, Okta). The terms used in the following set-up instructions and in the UI may not directly match those used by your Identity Provider.

## Requirements {#requirements}

* User with AccountAdmin permissions in the [!DNL Marketo Measure] App
* User with administrative access to the customer's Identity Provider

## Getting Started {#getting-started}

To get started, navigate to Settings > Security > Authentication page in the [!DNL Marketo Measure] application. Then switch the Login Type to Custom SSO to see the configuration options. Changes will not take effect until you test your authentication and click the **[!UICONTROL Save]** button at the bottom of the page.

![](assets/single-sign-on-1.png)

## Process {#process}

[!DNL Marketo Measure] Single Sign On requires configuring your Authentication settings in a series of steps so that you don't risk getting locked out of your [!DNL Marketo Measure] account.

Set up the [!DNL Marketo Measure] Application in your Identity Provider. See external documentation listed below for walkthroughs.

    a. When prompted for the Single Sign On URL or Recipient URL or Destination URL, SAML Assertion Customer Service (ACS) URL, use [https://apps.bizible.com/BizibleSAML2/ReceiveSSORequest](https://apps.bizible.com/BizibleSAML2/ReceiveSSORequest)
    
    b. When prompted for the Audience Restriction URL or application-defined unique identifier, use [https://BizibleLPM](https://biziblelpm/)

Switch to Custom SSO in the [!DNL Marketo Measure] Application

    a. Once the Billing Group has been enabled for your Account, you can now navigate to [!UICONTROL Settings] >>[!UICONTROL Security] >> [!UICONTROL Authentication]
    
    b. By default, your Login Type will be set to "CRM Users."
    
    c. Switch the Login Type to "Custom SSO" to begin the configuration process.

Fill in the connection settings for your Identity Provider configuration

    a. Your Identity Provider might give an IdP metadata .xml document which will pull out the required configuration fields. Either load in the content of the .xml document or fill out the three fields below from the output obtained during the Identity Provider configuration process. **You do not need to complete both.**
    
    i. IdP URL: The URL that [!DNL Marketo Measure] needs to point to in order to authenticate your users into the [!DNL Marketo Measure] application. Sometimes referred to as the "Redirect URL."
    ii. IdP Issuer: A unique identifier of the Identity Provider. Sometimes referred to as the "External Key."
    iii. IdP Certificate: A public key that allows [!DNL Marketo Measure] to verify and validate the signature of all Identity Provider responses.

Set the token expiration for your users in minutes.

    a. [!DNL Marketo Measure] allows a whole number from 1 to 1440 minutes. After a user's session time has been exceeded, the user will get logged off once they navigate to a new page.

Set up and map your User Attribute settings to the respective First Name, Last Name, and Email Address.

    a. By entering the SAML attributes, [!DNL Marketo Measure] will be able to recognize your users by the information passed through.
    
    i. Email Attribute: Provide the attribute name that your Identity Provider uses for the user's email address.
    ii. First Name Attribute: Provide the attribute name that your Identity Provider uses for the user's first name.
    iii. Last Name Attribute: Provide the attribute name that your Identity Provider uses for the user's last name.
    
    b. Hint: If you test your SAML configuration now, we will parse out the Email, First Name, and Last Name attributes that you can use for this section.

![](assets/single-sign-on-2.png)

Set up and map your User Role settings to the respective roles or groups classified from your IdP.

    a. Customers have the option of assigning [!DNL Marketo Measure] user roles based on groups defined in their Identity Provider. By entering your SAML attributes, [!DNL Marketo Measure] will be able to map your user's roles and groups to [!DNL Marketo Measure] user permissions. We highly recommend that you set up these roles so that your [!DNL Marketo Measure] administrator has sufficient rights to update your account.
    
    b. If no roles or groups are mapped, the default setting is that all employees in the Identity Provider will have Standard user access.
    
    i. [!DNL Marketo Measure] Standard User: Provide the role or group value (from your SSO provider) for users that should have read-only access to the [!DNL Marketo Measure] application.
    ii. [!DNL Marketo Measure] Account Admin User: Provide the role or group value (from your SSO provider) for users that should have administrative access to the [!DNL Marketo Measure] application. This means that the role has access to change configurations and settings related to your Account.
    iii. You must have an attribute in your IdP with the exact name of "groups" that houses the values you put in the "Bizible Standard User" or "Bizible Account Admin User" attributes.
    
    c. If multiple roles or groups should be mapped to a role, enter each value separated by a comma.

![](assets/single-sign-on-3.png)

Test the Single Sign On configuration

    a. Before you can hit Save, you will be required to click the [!UICONTROL Test SAML Authentication] button to verify that your settings were configured properly.
    
    b. If you see a "failure" error, follow the message and attempt again.

![](assets/single-sign-on-4.png)

Save your settings and direct your colleagues to use [!UICONTROL Single Sign On] with your new custom Sign In URL.

    a. Important: Once you Save your new Authentication settings, it is possible your session will end once you navigate to a new page because you have disabled login by CRM Users and enabled Custom SSO.

![](assets/single-sign-on-5.png)

Try it out!

    a. Use your new custom Sign In URL and attempt to log back in to the [!DNL Marketo Measure] Application with your Identity Provider credentials.
    
    b. The format will look like `https://apps.adobe.com/business/[accountName]`
    
    c. Congratulations! You've successfully set up Single Sign On into the [!DNL Marketo Measure] Application for your account!

![](assets/single-sign-on-6.png)

>[!NOTE]
>
>After you configure SSO, you will no longer need to add users within the [!DNL Marketo Measure] application. User provisioning should be handled directly within your Identity Provider.

## CRM Users (Advanced Setup) {#crm-users-advanced-setup}

By default, all accounts can access the [!DNL Marketo Measure] application using their CRM credentials. Sometimes, account owners need to limit access to certain roles and not open it to all users with an active CRM license. The Advanced setup allows you to map your CRM roles and groups to [!DNL Marketo Measure] user permissions.

If no roles or groups are mapped, the default setting is that all active licenses in your CRM have Standard user access.

* [!DNL Marketo Measure] Standard User: Provide the role or group value for users that should have read-only access to the [!DNL Marketo Measure] application.
* [!DNL Marketo Measure] Account Admin User: Provide the role or group value for users that should have administrative access to the [!DNL Marketo Measure] application. This means that the role has access to change configurations and settings related to your Account.

If multiple roles or groups should be mapped to a role, enter each value separated by a comma.

**Salesforce Roles**

For [!DNL Salesforce] Roles, use the name of each Role. All Roles can be found under the [!UICONTROL Setup] >[!UICONTROL Manage Users] >[!UICONTROL Roles] menu.

![](assets/6.png)

**Dynamics Roles**

For [!DNL Dynamics] Roles, use the name of each Security Role. All Security Roles can be found under the [!UICONTROL Settings] >[!UICONTROL Security] >[!UICONTROL Security Roles] menu.

![](assets/7.png)

![](assets/8.png)

**Google Users**

Once Custom SSO has been set up, the [!UICONTROL Users] page is updated to only show external users that have been added with Google logins. Because all users with access are defined through the SSO configuration, additional external users are listed here.

![](assets/9.png)

Only valid [!DNL Google] accounts can be added and must have a User Role defined.

## External Links {#external-links}

* [Okta](https://developer.okta.com/standards/SAML/setting_up_a_saml_application_in_okta)
* [Ping Identity](https://docs.pingidentity.com:443/bundle/p1_enterpriseConfigSsoSaml_cas/page/enableAppWithoutURL.html)
* [OneLogin](https://onelogin.service-now.com/support?id=kb_article&sys_id=b2c91143db109700d5505eea4b9619d5)
* [Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-saas-custom-apps)
