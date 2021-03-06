# SmoochApi::IntegrationCreate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The integration type. See [**IntegrationTypeEnum**](Enums.md#IntegrationTypeEnum) for available values. | 
**displayName** | **String** | The integration display name. Used to map a human-friendly name to an integration.  | [optional] 
**pageAccessToken** | **String** | Facebook Page Access Token. Required for *messenger* integrations.  | [optional] 
**appId** | **String** | Facebook App ID OR WeChat App ID. Required for *messenger* and *wechat* integrations.  | [optional] 
**appSecret** | **String** | Facebook Page App Secret OR WeChat App Secret. Required for *messenger* and *wechat* integrations.  | [optional] 
**accountSid** | **String** | Twilio Account SID. Required for *twilio* integrations.  | [optional] 
**authToken** | **String** | Twilio Auth Token. Required for *twilio* integrations.  | [optional] 
**baseUrl** | **String** | Your WhatsApp API client&#39;s URL. Required for *WhatsApp* integrations. (this usage is deprecated)  | [optional] 
**hsmFallbackLanguage** | **String** | Specification of a fallback language. (Optional) Used for *WhatsApp* integrations.  | [optional] 
**phoneNumberSid** | **String** | SID for specific phone number. Required for *twilio* integrations.  | [optional] 
**token** | **String** | Telegram Bot Token OR Viber Public Account token. Required for *twilio* and *viber* integrations.  | [optional] 
**channelId** | **String** | LINE Channel ID. Required for *line* integrations.  | [optional] 
**channelSecret** | **String** | LINE Channel Secret. Required for *line* integrations.  | [optional] 
**channelAccessToken** | **String** | LINE Channel Access Token. Required for *line* integrations.  | [optional] 
**deploymentId** | **String** | Your WhatsApp deployment ID. Required for *WhatsApp* integrations.  | [optional] 
**serviceCode** | **String** | LINE Service Code.  | [optional] 
**switcherSecret** | **String** | LINE Switcher Secret.  | [optional] 
**encodingAesKey** | **String** | AES Encoding Key. (Optional) Used for *wechat* integrations.  | [optional] 
**fromAddress** | **String** | Email address to use as the &#x60;From&#x60; and &#x60;Reply-To&#x60; address if it must be different from &#x60;incomingAddress&#x60;. Only use this option if the address that you supply is configured to forward emails to the &#x60;incomingAddress&#x60;, otherwise user replies will be lost. You must also make sure that the domain is properly configured as a mail provider so as to not be flagged as spam by the user&#39;s email client.  (Optional) Used for *mailgun* integrations.  | [optional] 
**certificate** | **String** | The binary of your APN certificate base64 encoded. Required for *apn* integrations.  | [optional] 
**password** | **String** | The password for your APN certificate or WhatsApp API client. Required for *WhatsApp* integrations. (this usage is deprecated) (Optional) Used for *apn* integrations.  | [optional] 
**username** | **String** | The username for the account. Returned on successful *twitter* and *telegram* integrations. Required for *WhatsApp* integrations. (this usage is deprecated)  | [optional] 
**autoUpdateBadge** | **BOOLEAN** | Use the unread count of the conversation as the application badge. (Optional) Used for *apn* integrations.  | [optional] 
**production** | **BOOLEAN** | Flag specifying the APN environment to connect to (&#x60;production&#x60; if true, &#x60;sandbox&#x60; otherwise). Defaults to value inferred from certificate if not specified. (Optional) Used for *apn* integrations.  | [optional] 
**serverKey** | **String** | Your server key from the fcm console. Required for *fcm* integrations.  | [optional] 
**senderId** | **String** | Your sender id from the fcm console. Required for *fcm* integrations.  | [optional] 
**tier** | **String** | Your Twitter app’s tier. Accepted values are enterprise or premium.  | [optional] 
**envName** | **String** | The Twitter environment name, e.g.: env-beta. Required for *twitter* integrations with *premium* tier.  | [optional] 
**consumerKey** | **String** | The consumer key for your Twitter app. Required for *twitter* integrations.  | [optional] 
**consumerSecret** | **String** | The consumer secret for your Twitter app. Required for *twitter* integrations.  | [optional] 
**accessTokenKey** | **String** | The access token key obtained from your user via oauth. Required for *twitter* integrations.  | [optional] 
**accessTokenSecret** | **String** | The access token secret obtained from your user via oauth. Required for *twitter* integrations.  | [optional] 
**accessTokenUrl** | **String** | Optional endpoint to generate access tokens for WeChat. Used to coordinate API access with third party systems.  | [optional] 
**accessKey** | **String** | The public API key of your MessageBird account. Required for *messagebird* integrations.  | [optional] 
**originator** | **String** | Smooch will receive all messages sent to this phone number. Required for *messagebird* integrations.  | [optional] 
**brandColor** | **String** | This color will be used in the messenger header and the button or tab in idle state. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**fixedIntroPane** | **BOOLEAN** | When &#x60;true&#x60;, the introduction pane will be pinned at the top of the conversation instead of scrolling with it. The default value is &#x60;false&#x60;. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**conversationColor** | **String** | This color will be used for customer messages, quick replies and actions in the footer. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**actionColor** | **String** | This color will be used for call-to-actions inside your messages. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**displayStyle** | **String** | Choose how the messenger will appear on your website. Must be either button or tab. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**buttonIconUrl** | **String** | With the button style Web Messenger, you have the option of selecting your own button icon. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**buttonWidth** | **String** | With the button style Web Messenger, you have the option of specifying its width. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**buttonHeight** | **String** | With the button style Web Messenger, you have the option of specifying its height. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**integrationOrder** | **Array&lt;String&gt;** | Array of integration IDs, order will be reflected in the Web Messenger. When set, only integrations from this list will be displayed in the Web Messenger. If unset, all integrations will be displayed (Optional) Used for *Web Messenger* integrations.  | [optional] 
**businessName** | **String** | A custom business name for the Web Messenger. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**businessIconUrl** | **String** | A custom business icon url for the Web Messenger. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**backgroundImageUrl** | **String** | A custom background url for the Web Messenger. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**originWhitelist** | **Array&lt;String&gt;** | A list of origins to whitelist. When set, only the origins from this list will be able to initialize the Web Messenger. If unset, all origins are whitelisted. The elements in the list should follow the serialized-origin format from RFC 6454 &#x60;scheme \&quot;://\&quot; host [ \&quot;:\&quot; port ]&#x60;, where scheme is &#x60;http&#x60; or &#x60;https&#x60;. (Optional) Used for *Web Messenger* integrations.  | [optional] 
**qrCodeUrl** | **String** | URL provided by LINE in the [Developer Console](https://developers.line.biz/console/).  | [optional] 
**hideUnsubscribeLink** | **BOOLEAN** | When &#x60;true&#x60;, unsubscribe links will not be included in outbound emails. If this setting is enabled, it is expected that the business is providing the user a way to unsubscribe by some other means. (Optional) Used for *mailgun* integrations.  | [optional] 
**signingKey** | **String** | The signing key of your MessageBird account. Used to validate the webhooks&#39; origin. (Optional) Used for *messagebird* integrations.  | [optional] 
**apiKey** | **String** | The public API key of your Mailgun account. Required for *mailgun* integrations.  | [optional] 
**domain** | **String** | The domain used to relay email. Required for *mailgun* integrations.  | [optional] 
**incomingAddress** | **String** | Smooch will receive all emails sent to this address. Required for *mailgun* integrations.  | [optional] 


