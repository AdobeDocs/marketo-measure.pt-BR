-- By downloading and using the SQL Script below (the “Assets”) made available by Adobe Inc. (“Adobe”) hereto,
-- you hereby agree to the terms and conditions set forth below. All references to “you” shall mean,
-- as applicable, either (A) an individual if downloading the Assets in an individual capacity,
-- or (B) a business entity if downloading the Assets as an individual contractor or employee
-- representing such business entity.

-- Subject to the terms and conditions set forth herein, Adobe grants to you for your direct
-- beneficial business purposes, a non-transferable, non-exclusive license to download and use
-- the Assets in connection with the applicable on-demand software service to which the Assets
-- pertain, solely during the term that you have valid and legal access to such service from Adobe.
-- The Assets are provided “AS-IS.” To the maximum extent permitted by law, Adobe disclaims all
-- warranties, express or implied, including the implied warranties of non-infringement,
-- merchantability, and fitness for a particular purpose. Adobe makes no commitments about the
-- content within the Assets. Adobe further disclaims any warranty that (A) the Assets will meet
-- your requirements or will be constantly available, uninterrupted, timely, secure, or error-free; (B)
-- the results obtained from the use of the Assets will be effective, accurate, or reliable; (C) the
-- quality of the Assets will meet your expectations; or (D) any errors or defects in the Assets will
-- be corrected.

-- Adobe is making the Assets available to you as a tool that may guide your use of the applicable
-- on-demand software service to which the Assets pertain, and you may be able to download,
-- copy, and customize the Assets to build further code, metrics, and other reporting capabilities in
-- such service. Adobe is specifically not responsible for any such customizations you make to the
-- Assets, including, without limitation, any defects, failures, or latency in the Assets (or any
-- service that leverages the Assets) caused by your customizations. Except to the extent
-- expressly permitted herein, you agree that as a condition of the license to use the Assets, you
-- shall not (A) use the Assets in violation of any applicable laws or regulations, or in connection
-- with unlawful material (such as material that violates any obscenity, defamation, harassment,
-- privacy, publicity or intellectual property laws); (B) copy, use, republish, distribute, transmit, sell,
-- rent, lease, host, or license the Assets; and (C) attempt to reverse engineer, decompile, or
-- discover the source code, data representations, underlying algorithms, processes, and methods
-- within any Adobe intellectual property or proprietary information.

-- Adobe specifically disclaims all liability for any actions resulting from your use of the Assets.
-- You may use and access the Assets at your own discretion and risk, and you are solely
-- responsible for any damage to your computer system or loss of data that results from the use of
-- and access to any Asset. Adobe is not liable to you or anyone else for any special, incidental,
-- indirect, consequential, moral, exemplary or punitive damages whatsoever, regardless of cause,
-- including losses and damages (A) resulting from loss of use, data, reputation, revenue, or
-- profits; (B) based on any theory of liability, including breach of contract or warranty, negligence,
-- or other tortious action; or (C) arising out of or in connection with your use of or access to the
-- Assets. The foregoing does not exclude Adobe’s liability for gross negligence, intentional
-- misconduct of Adobe or its employees, or death or personal injury.

create or replace secure view BIZ_FACTS(
	COST_KEY,
	ATP_KEY,
	TP_KEY,
	PAGE_VIEW_KEY,
	SESSION_KEY,
	VISITOR_ID,
	COOKIE_ID,
	FORM_SUBMIT_KEY,
	IMPRESSION_KEY,
	CURRENT_PAGE_KEY,
	REFERRER_PAGE_KEY,
	FORM_PAGE_KEY,
	AD_PROVIDER_KEY,
	CHANNEL_KEY,
	CAMPAIGN_KEY,
	KEYWORD_KEY,
	AD_KEY,
	AD_GROUP_KEY,
	CREATIVE_KEY,
	SITE_KEY,
	ADVERTISER_KEY,
	AD_ACCOUNT_KEY,
	PLACEMENT_KEY,
	CATEGORY_01_KEY,
	CATEGORY_02_KEY,
	CATEGORY_03_KEY,
	CATEGORY_04_KEY,
	CATEGORY_05_KEY,
	CATEGORY_06_KEY,
	CATEGORY_07_KEY,
	CATEGORY_08_KEY,
	CATEGORY_09_KEY,
	CATEGORY_10_KEY,
	CATEGORY_11_KEY,
	CATEGORY_12_KEY,
	CATEGORY_13_KEY,
	CATEGORY_14_KEY,
	CATEGORY_15_KEY,
	TYPE,
	DATE,
	TIMESTAMP,
	MODIFIED_DATE,
	COST_IN_MICRO,
	IMPRESSIONS,
	CLICKS,
	FIRST_CLICK_PERCENTAGE,
	LAST_ANON_CLICK_PERCENTAGE,
	U_SHAPE_PERCENTAGE,
	W_SHAPE_PERCENTAGE,
	FULL_PATH_PERCENTAGE,
	CUSTOM_MODEL_PERCENTAGE,
	AMOUNT,
	IS_WON,
	IS_OPP_CLOSED,
	OPPORTUNITY_ID,
	OPP_CREATED_DATE,
	OPP_CLOSE_DATE,
	CONTACT_CREATED_DATE,
	CONTACT_ID,
	EMAIL,
	LEAD_CREATED_DATE,
	LEAD_ID,
	IS_AGGREGATABLE_COST_AD,
	IS_AGGREGATABLE_COST_ADVERTISER,
	IS_AGGREGATABLE_COST_AD_ACCOUNT,
	IS_AGGREGATABLE_COST_AD_GROUP,
	IS_AGGREGATABLE_COST_CAMPAIGN,
	IS_AGGREGATABLE_COST_CHANNEL,
	IS_AGGREGATABLE_COST_CREATIVE,
	IS_AGGREGATABLE_COST_KEYWORD,
	IS_AGGREGATABLE_COST_PLACEMENT,
	IS_AGGREGATABLE_COST_SITE,
	IS_DELETED,
	CURRENCY_ID,
	_CREATED_DATE,
	_MODIFIED_DATE,
	_DELETED_DATE
) as (select 
null as Cost_Key
,mainAttribution_Touchpoints.Row_Key as ATP_Key
,null as TP_Key
,null as Page_View_Key
,null as Session_Key
,mainAttribution_Touchpoints.Visitor_Id as Visitor_Id
,null as Cookie_Id
,null as Form_Submit_Key
,null as Impression_Key
,mainAttribution_Touchpoints.Landing_Page_Key as Current_Page_Key
,mainAttribution_Touchpoints.Referrer_Page_Key as Referrer_Page_Key
,mainAttribution_Touchpoints.Form_Page_Key as Form_Page_Key
,HASH(mainAttribution_Touchpoints.Ad_Provider) as Ad_Provider_Key
,HASH(mainAttribution_Touchpoints.Channel) as Channel_Key
,HASH(mainAttribution_Touchpoints.Campaign_Unique_Id) as Campaign_Key
,HASH(mainAttribution_Touchpoints.Keyword_Unique_Id) as Keyword_Key
,HASH(mainAttribution_Touchpoints.Ad_Unique_Id) as Ad_Key
,HASH(mainAttribution_Touchpoints.Ad_Group_Unique_Id) as Ad_Group_Key
,HASH(mainAttribution_Touchpoints.Creative_Unique_Id) as Creative_Key
,HASH(mainAttribution_Touchpoints.Site_Unique_Id) as Site_Key
,HASH(mainAttribution_Touchpoints.Advertiser_Unique_Id) as Advertiser_Key
,HASH(mainAttribution_Touchpoints.Account_Unique_Id) as Ad_Account_Key
,HASH(mainAttribution_Touchpoints.Placement_Unique_Id) as Placement_Key
,HASH(mainAttribution_Touchpoints.Category1) as Category_01_Key
,HASH(mainAttribution_Touchpoints.Category2) as Category_02_Key
,HASH(mainAttribution_Touchpoints.Category3) as Category_03_Key
,HASH(mainAttribution_Touchpoints.Category4) as Category_04_Key
,HASH(mainAttribution_Touchpoints.Category5) as Category_05_Key
,HASH(mainAttribution_Touchpoints.Category6) as Category_06_Key
,HASH(mainAttribution_Touchpoints.Category7) as Category_07_Key
,HASH(mainAttribution_Touchpoints.Category8) as Category_08_Key
,HASH(mainAttribution_Touchpoints.Category9) as Category_09_Key
,HASH(mainAttribution_Touchpoints.Category10) as Category_10_Key
,HASH(mainAttribution_Touchpoints.Category11) as Category_11_Key
,HASH(mainAttribution_Touchpoints.Category12) as Category_12_Key
,HASH(mainAttribution_Touchpoints.Category13) as Category_13_Key
,HASH(mainAttribution_Touchpoints.Category14) as Category_14_Key
,HASH(mainAttribution_Touchpoints.Category15) as Category_15_Key
,1 as Type
,TO_DATE(mainAttribution_Touchpoints.Touchpoint_Date) as Date
,mainAttribution_Touchpoints.Touchpoint_Date as Timestamp
,mainAttribution_Touchpoints.Modified_Date as Modified_Date
,null as Cost_In_Micro
,null as Impressions
,null as Clicks
,mainAttribution_Touchpoints.First_Click_Percentage as First_Click_Percentage
,mainAttribution_Touchpoints.Last_Anon_Click_Percentage as Last_Anon_Click_Percentage
,mainAttribution_Touchpoints.U_Shape_Percentage as U_Shape_Percentage
,mainAttribution_Touchpoints.W_Shape_Percentage as W_Shape_Percentage
,mainAttribution_Touchpoints.Full_Path_Percentage as Full_Path_Percentage
,mainAttribution_Touchpoints.Custom_Model_Percentage as Custom_Model_Percentage
,supportOpportunities.Amount as Amount
,supportOpportunities.Is_Won as Is_Won
,supportOpportunities.Is_Closed as Is_Opp_Closed
,mainAttribution_Touchpoints.Opportunity_Id as Opportunity_Id
,supportOpportunities.Created_Date as Opp_Created_Date
,supportOpportunities.Close_Date as Opp_Close_Date
,null as Contact_Created_Date
,null as Contact_Id
,mainAttribution_Touchpoints.Email as Email
,null as Lead_Created_Date
,null as Lead_Id
,null as Is_Aggregatable_Cost_Ad
,null as Is_Aggregatable_Cost_Advertiser
,null as Is_Aggregatable_Cost_Ad_Account
,null as Is_Aggregatable_Cost_Ad_Group
,null as Is_Aggregatable_Cost_Campaign
,null as Is_Aggregatable_Cost_Channel
,null as Is_Aggregatable_Cost_Creative
,null as Is_Aggregatable_Cost_Keyword
,null as Is_Aggregatable_Cost_Placement
,null as Is_Aggregatable_Cost_Site
,mainAttribution_Touchpoints.Is_Deleted as Is_Deleted
,HASH(supportOpportunities.Currency_Iso_Code) as Currency_Id
,null as _created_date
,null as _modified_date
,null as _deleted_date
 from BIZ_Attribution_Touchpoints mainAttribution_Touchpoints
 left outer join BIZ_Opportunities supportOpportunities on supportOpportunities.Id = mainAttribution_Touchpoints.Opportunity_Id
 union all 
 select 
null as Cost_Key
,null as ATP_Key
,mainTouchpoints.Row_Key as TP_Key
,null as Page_View_Key
,null as Session_Key
,mainTouchpoints.Visitor_Id as Visitor_Id
,null as Cookie_Id
,null as Form_Submit_Key
,null as Impression_Key
,mainTouchpoints.Landing_Page_Key as Current_Page_Key
,mainTouchpoints.Referrer_Page_Key as Referrer_Page_Key
,mainTouchpoints.Form_Page_Key as Form_Page_Key
,HASH(mainTouchpoints.Ad_Provider) as Ad_Provider_Key
,HASH(mainTouchpoints.Channel) as Channel_Key
,HASH(mainTouchpoints.Campaign_Unique_Id) as Campaign_Key
,HASH(mainTouchpoints.Keyword_Unique_Id) as Keyword_Key
,HASH(mainTouchpoints.Ad_Unique_Id) as Ad_Key
,HASH(mainTouchpoints.Ad_Group_Unique_Id) as Ad_Group_Key
,HASH(mainTouchpoints.Creative_Unique_Id) as Creative_Key
,HASH(mainTouchpoints.Site_Unique_Id) as Site_Key
,HASH(mainTouchpoints.Advertiser_Unique_Id) as Advertiser_Key
,HASH(mainTouchpoints.Account_Unique_Id) as Ad_Account_Key
,HASH(mainTouchpoints.Placement_Unique_Id) as Placement_Key
,HASH(mainTouchpoints.Category1) as Category_01_Key
,HASH(mainTouchpoints.Category2) as Category_02_Key
,HASH(mainTouchpoints.Category3) as Category_03_Key
,HASH(mainTouchpoints.Category4) as Category_04_Key
,HASH(mainTouchpoints.Category5) as Category_05_Key
,HASH(mainTouchpoints.Category6) as Category_06_Key
,HASH(mainTouchpoints.Category7) as Category_07_Key
,HASH(mainTouchpoints.Category8) as Category_08_Key
,HASH(mainTouchpoints.Category9) as Category_09_Key
,HASH(mainTouchpoints.Category10) as Category_10_Key
,HASH(mainTouchpoints.Category11) as Category_11_Key
,HASH(mainTouchpoints.Category12) as Category_12_Key
,HASH(mainTouchpoints.Category13) as Category_13_Key
,HASH(mainTouchpoints.Category14) as Category_14_Key
,HASH(mainTouchpoints.Category15) as Category_15_Key
,3 as Type
,TO_DATE(mainTouchpoints.Touchpoint_Date) as Date
,mainTouchpoints.Touchpoint_Date as Timestamp
,mainTouchpoints.Modified_Date as Modified_Date
,null as Cost_In_Micro
,null as Impressions
,null as Clicks
,mainTouchpoints.First_Click_Percentage as First_Click_Percentage
,mainTouchpoints.Last_Anon_Click_Percentage as Last_Anon_Click_Percentage
,mainTouchpoints.U_Shape_Percentage as U_Shape_Percentage
,mainTouchpoints.W_Shape_Percentage as W_Shape_Percentage
,mainTouchpoints.Full_Path_Percentage as Full_Path_Percentage
,mainTouchpoints.Custom_Model_Percentage as Custom_Model_Percentage
,null as Amount
,null as Is_Won
,null as Is_Opp_Closed
,null as Opportunity_Id
,null as Opp_Created_Date
,null as Opp_Close_Date
,supportContacts.Created_Date as Contact_Created_Date
,mainTouchpoints.Contact_Id as Contact_Id
,mainTouchpoints.Email as Email
,supportLeads.Created_Date as Lead_Created_Date
,mainTouchpoints.Lead_Id as Lead_Id
,null as Is_Aggregatable_Cost_Ad
,null as Is_Aggregatable_Cost_Advertiser
,null as Is_Aggregatable_Cost_Ad_Account
,null as Is_Aggregatable_Cost_Ad_Group
,null as Is_Aggregatable_Cost_Campaign
,null as Is_Aggregatable_Cost_Channel
,null as Is_Aggregatable_Cost_Creative
,null as Is_Aggregatable_Cost_Keyword
,null as Is_Aggregatable_Cost_Placement
,null as Is_Aggregatable_Cost_Site
,mainTouchpoints.Is_Deleted as Is_Deleted
,null as Currency_Id
,null as _created_date
,null as _modified_date
,null as _deleted_date
 from BIZ_Touchpoints mainTouchpoints
 left outer join BIZ_Leads supportLeads on supportLeads.Id = mainTouchpoints.Lead_Id
 left outer join BIZ_Contacts supportContacts on supportContacts.Id = mainTouchpoints.Contact_Id
 union all 
 select 
null as Cost_Key
,null as ATP_Key
,mainUser_Touchpoints.Row_Key as TP_Key
,null as Page_View_Key
,HASH(mainUser_Touchpoints.Session_Id) as Session_Key
,mainUser_Touchpoints.Visitor_Id as Visitor_Id
,null as Cookie_Id
,null as Form_Submit_Key
,HASH(mainUser_Touchpoints.Impression_Id) as Impression_Key
,mainUser_Touchpoints.Landing_Page_Key as Current_Page_Key
,mainUser_Touchpoints.Referrer_Page_Key as Referrer_Page_Key
,mainUser_Touchpoints.Form_Page_Key as Form_Page_Key
,HASH(mainUser_Touchpoints.Ad_Provider) as Ad_Provider_Key
,HASH(mainUser_Touchpoints.Channel) as Channel_Key
,HASH(mainUser_Touchpoints.Campaign_Unique_Id) as Campaign_Key
,HASH(mainUser_Touchpoints.Keyword_Unique_Id) as Keyword_Key
,HASH(mainUser_Touchpoints.Ad_Unique_Id) as Ad_Key
,HASH(mainUser_Touchpoints.Ad_Group_Unique_Id) as Ad_Group_Key
,HASH(mainUser_Touchpoints.Creative_Unique_Id) as Creative_Key
,HASH(mainUser_Touchpoints.Site_Unique_Id) as Site_Key
,HASH(mainUser_Touchpoints.Advertiser_Unique_Id) as Advertiser_Key
,HASH(mainUser_Touchpoints.Account_Unique_Id) as Ad_Account_Key
,HASH(mainUser_Touchpoints.Placement_Unique_Id) as Placement_Key
,null as Category_01_Key
,null as Category_02_Key
,null as Category_03_Key
,null as Category_04_Key
,null as Category_05_Key
,null as Category_06_Key
,null as Category_07_Key
,null as Category_08_Key
,null as Category_09_Key
,null as Category_10_Key
,null as Category_11_Key
,null as Category_12_Key
,null as Category_13_Key
,null as Category_14_Key
,null as Category_15_Key
,4 as Type
,TO_DATE(mainUser_Touchpoints.Touchpoint_Date) as Date
,mainUser_Touchpoints.Touchpoint_Date as Timestamp
,mainUser_Touchpoints.Modified_Date as Modified_Date
,null as Cost_In_Micro
,null as Impressions
,null as Clicks
,0 as First_Click_Percentage
,0 as Last_Anon_Click_Percentage
,0 as U_Shape_Percentage
,0 as W_Shape_Percentage
,0 as Full_Path_Percentage
,0 as Custom_Model_Percentage
,null as Amount
,null as Is_Won
,null as Is_Opp_Closed
,null as Opportunity_Id
,null as Opp_Created_Date
,null as Opp_Close_Date
,null as Contact_Created_Date
,null as Contact_Id
,mainUser_Touchpoints.Email as Email
,null as Lead_Created_Date
,null as Lead_Id
,null as Is_Aggregatable_Cost_Ad
,null as Is_Aggregatable_Cost_Advertiser
,null as Is_Aggregatable_Cost_Ad_Account
,null as Is_Aggregatable_Cost_Ad_Group
,null as Is_Aggregatable_Cost_Campaign
,null as Is_Aggregatable_Cost_Channel
,null as Is_Aggregatable_Cost_Creative
,null as Is_Aggregatable_Cost_Keyword
,null as Is_Aggregatable_Cost_Placement
,null as Is_Aggregatable_Cost_Site
,mainUser_Touchpoints.Is_Deleted as Is_Deleted
,null as Currency_Id
,null as _created_date
,null as _modified_date
,null as _deleted_date
 from BIZ_User_Touchpoints mainUser_Touchpoints
 union all 
 select 
mainCosts.Row_Key as Cost_Key
,null as ATP_Key
,null as TP_Key
,null as Page_View_Key
,null as Session_Key
,null as Visitor_Id
,null as Cookie_Id
,null as Form_Submit_Key
,null as Impression_Key
,null as Current_Page_Key
,null as Referrer_Page_Key
,null as Form_Page_Key
,null as Ad_Provider_Key
,HASH(mainCosts.Channel_Unique_Id) as Channel_Key
,HASH(mainCosts.Campaign_Unique_Id) as Campaign_Key
,HASH(mainCosts.Keyword_Unique_Id) as Keyword_Key
,HASH(mainCosts.Ad_Unique_Id) as Ad_Key
,HASH(mainCosts.Ad_Group_Unique_Id) as Ad_Group_Key
,HASH(mainCosts.Creative_Unique_Id) as Creative_Key
,HASH(mainCosts.Site_Unique_Id) as Site_Key
,HASH(mainCosts.Advertiser_Unique_Id) as Advertiser_Key
,HASH(mainCosts.Account_Unique_Id) as Ad_Account_Key
,HASH(mainCosts.Placement_Unique_Id) as Placement_Key
,null as Category_01_Key
,null as Category_02_Key
,null as Category_03_Key
,null as Category_04_Key
,null as Category_05_Key
,null as Category_06_Key
,null as Category_07_Key
,null as Category_08_Key
,null as Category_09_Key
,null as Category_10_Key
,null as Category_11_Key
,null as Category_12_Key
,null as Category_13_Key
,null as Category_14_Key
,null as Category_15_Key
,2 as Type
,TO_DATE(mainCosts.Cost_Date) as Date
,mainCosts.Cost_Date as Timestamp
,mainCosts.Modified_Date as Modified_Date
,mainCosts.Cost_In_Micro as Cost_In_Micro
,mainCosts.Impressions as Impressions
,mainCosts.Clicks as Clicks
,null as First_Click_Percentage
,null as Last_Anon_Click_Percentage
,null as U_Shape_Percentage
,null as W_Shape_Percentage
,null as Full_Path_Percentage
,null as Custom_Model_Percentage
,null as Amount
,null as Is_Won
,null as Is_Opp_Closed
,null as Opportunity_Id
,null as Opp_Created_Date
,null as Opp_Close_Date
,null as Contact_Created_Date
,null as Contact_Id
,null as Email
,null as Lead_Created_Date
,null as Lead_Id
,mainCosts.Ad_Is_Aggregatable_Cost as Is_Aggregatable_Cost_Ad
,mainCosts.Advertiser_Is_Aggregatable_Cost as Is_Aggregatable_Cost_Advertiser
,mainCosts.Account_Is_Aggregatable_Cost as Is_Aggregatable_Cost_Ad_Account
,mainCosts.Ad_Group_Is_Aggregatable_Cost as Is_Aggregatable_Cost_Ad_Group
,mainCosts.Campaign_Is_Aggregatable_Cost as Is_Aggregatable_Cost_Campaign
,mainCosts.Channel_Is_Aggregatable_Cost as Is_Aggregatable_Cost_Channel
,mainCosts.Creative_Is_Aggregatable_Cost as Is_Aggregatable_Cost_Creative
,mainCosts.Keyword_Is_Aggregatable_Cost as Is_Aggregatable_Cost_Keyword
,mainCosts.Placement_Is_Aggregatable_Cost as Is_Aggregatable_Cost_Placement
,mainCosts.Site_Is_Aggregatable_Cost as Is_Aggregatable_Cost_Site
,mainCosts.Is_Deleted as Is_Deleted
,HASH(mainCosts.ISO_Currency_Code) as Currency_Id
,null as _created_date
,null as _modified_date
,null as _deleted_date
 from BIZ_Costs mainCosts
 union all 
 select 
null as Cost_Key
,null as ATP_Key
,null as TP_Key
,mainPage_Views.Row_Key as Page_View_Key
,HASH(mainPage_Views.Session_Id) as Session_Key
,mainPage_Views.Visitor_Id as Visitor_Id
,mainPage_Views.Cookie_Id as Cookie_Id
,null as Form_Submit_Key
,null as Impression_Key
,mainPage_Views.Current_Page_Key as Current_Page_Key
,mainPage_Views.Referrer_Page_Key as Referrer_Page_Key
,null as Form_Page_Key
,HASH(supportSessions.Ad_Provider) as Ad_Provider_Key
,HASH(supportSessions.Channel) as Channel_Key
,HASH(supportSessions.Campaign_Unique_Id) as Campaign_Key
,HASH(supportSessions.Keyword_Unique_Id) as Keyword_Key
,HASH(supportSessions.Ad_Unique_Id) as Ad_Key
,HASH(supportSessions.Ad_Group_Unique_Id) as Ad_Group_Key
,HASH(supportSessions.Creative_Unique_Id) as Creative_Key
,HASH(supportSessions.Site_Unique_Id) as Site_Key
,HASH(supportSessions.Advertiser_Unique_Id) as Advertiser_Key
,HASH(supportSessions.Account_Unique_Id) as Ad_Account_Key
,HASH(supportSessions.Placement_Unique_Id) as Placement_Key
,null as Category_01_Key
,null as Category_02_Key
,null as Category_03_Key
,null as Category_04_Key
,null as Category_05_Key
,null as Category_06_Key
,null as Category_07_Key
,null as Category_08_Key
,null as Category_09_Key
,null as Category_10_Key
,null as Category_11_Key
,null as Category_12_Key
,null as Category_13_Key
,null as Category_14_Key
,null as Category_15_Key
,5 as Type
,TO_DATE(mainPage_Views.Event_Date) as Date
,mainPage_Views.Event_Date as Timestamp
,mainPage_Views.Modified_Date as Modified_Date
,null as Cost_In_Micro
,null as Impressions
,null as Clicks
,null as First_Click_Percentage
,null as Last_Anon_Click_Percentage
,null as U_Shape_Percentage
,null as W_Shape_Percentage
,null as Full_Path_Percentage
,null as Custom_Model_Percentage
,null as Amount
,null as Is_Won
,null as Is_Opp_Closed
,null as Opportunity_Id
,null as Opp_Created_Date
,null as Opp_Close_Date
,null as Contact_Created_Date
,null as Contact_Id
,null as Email
,null as Lead_Created_Date
,null as Lead_Id
,null as Is_Aggregatable_Cost_Ad
,null as Is_Aggregatable_Cost_Advertiser
,null as Is_Aggregatable_Cost_Ad_Account
,null as Is_Aggregatable_Cost_Ad_Group
,null as Is_Aggregatable_Cost_Campaign
,null as Is_Aggregatable_Cost_Channel
,null as Is_Aggregatable_Cost_Creative
,null as Is_Aggregatable_Cost_Keyword
,null as Is_Aggregatable_Cost_Placement
,null as Is_Aggregatable_Cost_Site
,null as Is_Deleted
,null as Currency_Id
,null as _created_date
,null as _modified_date
,null as _deleted_date
 from BIZ_Page_Views mainPage_Views
 left outer join BIZ_Sessions supportSessions on supportSessions.Id = mainPage_Views.Session_Id
 union all 
 select 
null as Cost_Key
,null as ATP_Key
,null as TP_Key
,null as Page_View_Key
,mainSessions.Row_Key as Session_Key
,mainSessions.Visitor_Id as Visitor_Id
,mainSessions.Cookie_Id as Cookie_Id
,null as Form_Submit_Key
,null as Impression_Key
,mainSessions.Landing_Page_Key as Current_Page_Key
,mainSessions.Referrer_Page_Key as Referrer_Page_Key
,null as Form_Page_Key
,HASH(mainSessions.Ad_Provider) as Ad_Provider_Key
,HASH(mainSessions.Channel) as Channel_Key
,HASH(mainSessions.Campaign_Unique_Id) as Campaign_Key
,HASH(mainSessions.Keyword_Unique_Id) as Keyword_Key
,HASH(mainSessions.Ad_Unique_Id) as Ad_Key
,HASH(mainSessions.Ad_Group_Unique_Id) as Ad_Group_Key
,HASH(mainSessions.Creative_Unique_Id) as Creative_Key
,HASH(mainSessions.Site_Unique_Id) as Site_Key
,HASH(mainSessions.Advertiser_Unique_Id) as Advertiser_Key
,HASH(mainSessions.Account_Unique_Id) as Ad_Account_Key
,HASH(mainSessions.Placement_Unique_Id) as Placement_Key
,null as Category_01_Key
,null as Category_02_Key
,null as Category_03_Key
,null as Category_04_Key
,null as Category_05_Key
,null as Category_06_Key
,null as Category_07_Key
,null as Category_08_Key
,null as Category_09_Key
,null as Category_10_Key
,null as Category_11_Key
,null as Category_12_Key
,null as Category_13_Key
,null as Category_14_Key
,null as Category_15_Key
,6 as Type
,TO_DATE(mainSessions.Event_Date) as Date
,mainSessions.Event_Date as Timestamp
,mainSessions.Modified_Date as Modified_Date
,null as Cost_In_Micro
,null as Impressions
,null as Clicks
,null as First_Click_Percentage
,null as Last_Anon_Click_Percentage
,null as U_Shape_Percentage
,null as W_Shape_Percentage
,null as Full_Path_Percentage
,null as Custom_Model_Percentage
,null as Amount
,null as Is_Won
,null as Is_Opp_Closed
,null as Opportunity_Id
,null as Opp_Created_Date
,null as Opp_Close_Date
,null as Contact_Created_Date
,null as Contact_Id
,null as Email
,null as Lead_Created_Date
,null as Lead_Id
,null as Is_Aggregatable_Cost_Ad
,null as Is_Aggregatable_Cost_Advertiser
,null as Is_Aggregatable_Cost_Ad_Account
,null as Is_Aggregatable_Cost_Ad_Group
,null as Is_Aggregatable_Cost_Campaign
,null as Is_Aggregatable_Cost_Channel
,null as Is_Aggregatable_Cost_Creative
,null as Is_Aggregatable_Cost_Keyword
,null as Is_Aggregatable_Cost_Placement
,null as Is_Aggregatable_Cost_Site
,mainSessions.Is_Deleted as Is_Deleted
,null as Currency_Id
,null as _created_date
,null as _modified_date
,null as _deleted_date
 from BIZ_Sessions mainSessions
 union all 
 select 
null as Cost_Key
,null as ATP_Key
,null as TP_Key
,null as Page_View_Key
,HASH(mainForm_Submits.Session_Id) as Session_Key
,mainForm_Submits.Visitor_Id as Visitor_Id
,mainForm_Submits.Cookie_Id as Cookie_Id
,mainForm_Submits.Row_Key as Form_Submit_Key
,null as Impression_Key
,mainForm_Submits.Current_Page_key as Current_Page_Key
,null as Referrer_Page_Key
,null as Form_Page_Key
,HASH(supportSessions.Ad_Provider) as Ad_Provider_Key
,HASH(supportSessions.Channel) as Channel_Key
,HASH(supportSessions.Campaign_Unique_Id) as Campaign_Key
,HASH(supportSessions.Keyword_Unique_Id) as Keyword_Key
,HASH(supportSessions.Ad_Unique_Id) as Ad_Key
,HASH(supportSessions.Ad_Group_Unique_Id) as Ad_Group_Key
,HASH(supportSessions.Creative_Unique_Id) as Creative_Key
,HASH(supportSessions.Site_Unique_Id) as Site_Key
,HASH(supportSessions.Advertiser_Unique_Id) as Advertiser_Key
,HASH(supportSessions.Account_Unique_Id) as Ad_Account_Key
,HASH(supportSessions.Placement_Unique_Id) as Placement_Key
,null as Category_01_Key
,null as Category_02_Key
,null as Category_03_Key
,null as Category_04_Key
,null as Category_05_Key
,null as Category_06_Key
,null as Category_07_Key
,null as Category_08_Key
,null as Category_09_Key
,null as Category_10_Key
,null as Category_11_Key
,null as Category_12_Key
,null as Category_13_Key
,null as Category_14_Key
,null as Category_15_Key
,7 as Type
,TO_DATE(mainForm_Submits.Event_Date) as Date
,mainForm_Submits.Event_Date as Timestamp
,mainForm_Submits.Modified_Date as Modified_Date
,null as Cost_In_Micro
,null as Impressions
,null as Clicks
,null as First_Click_Percentage
,null as Last_Anon_Click_Percentage
,null as U_Shape_Percentage
,null as W_Shape_Percentage
,null as Full_Path_Percentage
,null as Custom_Model_Percentage
,null as Amount
,null as Is_Won
,null as Is_Opp_Closed
,null as Opportunity_Id
,null as Opp_Created_Date
,null as Opp_Close_Date
,null as Contact_Created_Date
,null as Contact_Id
,null as Email
,null as Lead_Created_Date
,null as Lead_Id
,null as Is_Aggregatable_Cost_Ad
,null as Is_Aggregatable_Cost_Advertiser
,null as Is_Aggregatable_Cost_Ad_Account
,null as Is_Aggregatable_Cost_Ad_Group
,null as Is_Aggregatable_Cost_Campaign
,null as Is_Aggregatable_Cost_Channel
,null as Is_Aggregatable_Cost_Creative
,null as Is_Aggregatable_Cost_Keyword
,null as Is_Aggregatable_Cost_Placement
,null as Is_Aggregatable_Cost_Site
,null as Is_Deleted
,null as Currency_Id
,null as _created_date
,null as _modified_date
,null as _deleted_date
 from BIZ_Form_Submits mainForm_Submits
 left outer join BIZ_Sessions supportSessions on supportSessions.Id = mainForm_Submits.Session_Id
 union all 
 select 
null as Cost_Key
,null as ATP_Key
,null as TP_Key
,null as Page_View_Key
,null as Session_Key
,mainImpressions.Visitor_Id as Visitor_Id
,mainImpressions.Cookie_Id as Cookie_Id
,null as Form_Submit_Key
,mainImpressions.Row_Key as Impression_Key
,mainImpressions.Current_Page_Key as Current_Page_Key
,mainImpressions.Referrer_Page_Key as Referrer_Page_Key
,null as Form_Page_Key
,HASH(mainImpressions.Ad_Provider) as Ad_Provider_Key
,null as Channel_Key
,HASH(mainImpressions.Campaign_Unique_Id) as Campaign_Key
,HASH(mainImpressions.Keyword_Unique_Id) as Keyword_Key
,HASH(mainImpressions.Ad_Unique_Id) as Ad_Key
,HASH(mainImpressions.Ad_Group_Unique_Id) as Ad_Group_Key
,HASH(mainImpressions.Creative_Unique_Id) as Creative_Key
,HASH(mainImpressions.Site_Unique_Id) as Site_Key
,HASH(mainImpressions.Advertiser_Unique_Id) as Advertiser_Key
,HASH(mainImpressions.Account_Unique_Id) as Ad_Account_Key
,HASH(mainImpressions.Placement_Unique_Id) as Placement_Key
,null as Category_01_Key
,null as Category_02_Key
,null as Category_03_Key
,null as Category_04_Key
,null as Category_05_Key
,null as Category_06_Key
,null as Category_07_Key
,null as Category_08_Key
,null as Category_09_Key
,null as Category_10_Key
,null as Category_11_Key
,null as Category_12_Key
,null as Category_13_Key
,null as Category_14_Key
,null as Category_15_Key
,8 as Type
,TO_DATE(mainImpressions.Event_Date) as Date
,mainImpressions.Event_Date as Timestamp
,mainImpressions.Modified_Date as Modified_Date
,null as Cost_In_Micro
,null as Impressions
,null as Clicks
,null as First_Click_Percentage
,null as Last_Anon_Click_Percentage
,null as U_Shape_Percentage
,null as W_Shape_Percentage
,null as Full_Path_Percentage
,null as Custom_Model_Percentage
,null as Amount
,null as Is_Won
,null as Is_Opp_Closed
,null as Opportunity_Id
,null as Opp_Created_Date
,null as Opp_Close_Date
,null as Contact_Created_Date
,null as Contact_Id
,null as Email
,null as Lead_Created_Date
,null as Lead_Id
,null as Is_Aggregatable_Cost_Ad
,null as Is_Aggregatable_Cost_Advertiser
,null as Is_Aggregatable_Cost_Ad_Account
,null as Is_Aggregatable_Cost_Ad_Group
,null as Is_Aggregatable_Cost_Campaign
,null as Is_Aggregatable_Cost_Channel
,null as Is_Aggregatable_Cost_Creative
,null as Is_Aggregatable_Cost_Keyword
,null as Is_Aggregatable_Cost_Placement
,null as Is_Aggregatable_Cost_Site
,null as Is_Deleted
,null as Currency_Id
,null as _created_date
,null as _modified_date
,null as _deleted_date
 from BIZ_Impressions mainImpressions
 );
