=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module SmoochApi

  class Integration
    # The integration ID, generated automatically.
    attr_accessor :id

    # The integration type. See [**IntegrationTypeEnum**](Enums.md#IntegrationTypeEnum) for available values.
    attr_accessor :type

    # The integration display name. Used to map a human-friendly name to an integration. 
    attr_accessor :displayName

    # Facebook Page Access Token. Required for *messenger* integrations. 
    attr_accessor :pageAccessToken

    # Facebook App ID OR WeChat App ID. Required for *messenger* and *wechat* integrations. 
    attr_accessor :appId

    # Facebook Page App Secret OR WeChat App Secret. Required for *messenger* and *wechat* integrations. 
    attr_accessor :appSecret

    # Optional endpoint to generate access tokens for WeChat. Used to coordinate API access with third party systems. 
    attr_accessor :accessTokenUrl

    # Secret to verify webhooks. Returned on successful *wechat* and *messagebird* integrations. 
    attr_accessor :webhookSecret

    # Facebook Page App ID. Returned on successful *messenger* integrations. 
    attr_accessor :pageId

    # Twilio Account SID. Required for *twilio* integrations. 
    attr_accessor :accountSid

    # Twilio Auth Token. Required for *twilio* integrations. 
    attr_accessor :authToken

    # SID for specific phone number. Required for *twilio* integrations. 
    attr_accessor :phoneNumberSid

    # Smooch will receive all messages sent to this phone number. Returned on successful *twilio* integrations. 
    attr_accessor :phoneNumber

    # Name on the account. Returned on successful *twilio* integrations. 
    attr_accessor :name

    # Telegram Bot Token OR Viber Public Account token. Required for *twilio* and *viber* integrations. 
    attr_accessor :token

    # The viber URI to find the account. Returned on successful *viber* integrations. 
    attr_accessor :uri

    # LINE Channel ID. Required for *line* integrations. 
    attr_accessor :channelId

    # LINE Channel Secret. Required for *line* integrations. 
    attr_accessor :channelSecret

    # LINE Channel Access Token. Required for *line* integrations. 
    attr_accessor :channelAccessToken

    # LINE Service Code. 
    attr_accessor :serviceCode

    # LINE Switcher Secret. 
    attr_accessor :switcherSecret

    # URL provided by LINE in the [Developer Console](https://developers.line.biz/console/). 
    attr_accessor :qrCodeUrl

    # LINE Basic ID. Generated automatically when a `qrCodeUrl` is updated. 
    attr_accessor :lineId

    # The bot's name. Returned on successful *line* integrations. 
    attr_accessor :botName

    # AES Encoding Key. (Optional) Used for *wechat* integrations. 
    attr_accessor :encodingAesKey

    # Email address to use as the `From` and `Reply-To` address if it must be different from `incomingAddress`. Only use this option if the address that you supply is configured to forward emails to the `incomingAddress`, otherwise user replies will be lost. You must also make sure that the domain is properly configured as a mail provider so as to not be flagged as spam by the user's email client.  (Optional) Used for *mailgun* integrations. 
    attr_accessor :fromAddress

    # The binary of your APN certificate base64 encoded. Required for *apn* integrations. 
    attr_accessor :certificate

    # Your WhatsApp deployment ID. Required for *WhatsApp* integrations. 
    attr_accessor :deploymentId

    # Your WhatsApp API client's URL. Required for *WhatsApp* integrations. (this usage is deprecated) 
    attr_accessor :baseUrl

    # Specification of a fallback language. (Optional) Used for *WhatsApp* integrations. 
    attr_accessor :hsmFallbackLanguage

    # The password for your APN certificate or WhatsApp API client. Required for *WhatsApp* integrations. (this usage is deprecated) (Optional) Used for *apn* integrations. 
    attr_accessor :password

    # Use the unread count of the conversation as the application badge. (Optional) Used for *apn* integrations. 
    attr_accessor :autoUpdateBadge

    # Flag specifying the APN environment to connect to (`production` if true, `sandbox` otherwise). Defaults to value inferred from certificate if not specified. (Optional) Used for *apn* integrations. 
    attr_accessor :production

    # Your server key from the fcm console. Required for *fcm* integrations. 
    attr_accessor :serverKey

    # Your sender id from the fcm console. Required for *fcm* integrations. 
    attr_accessor :senderId

    # Your Twitter app’s tier. Accepted values are enterprise or premium. 
    attr_accessor :tier

    # The Twitter environment name, e.g.: env-beta. Required for *twitter* integrations with *premium* tier. 
    attr_accessor :envName

    # The consumer key for your Twitter app. Required for *twitter* integrations. 
    attr_accessor :consumerKey

    # The consumer secret for your Twitter app. Required for *twitter* integrations. 
    attr_accessor :consumerSecret

    # The access token key obtained from your user via oauth. Required for *twitter* integrations. 
    attr_accessor :accessTokenKey

    # The access token secret obtained from your user via oauth. Required for *twitter* integrations. 
    attr_accessor :accessTokenSecret

    # The twitter userId. Returned on successful *twitter* integrations. 
    attr_accessor :userId

    # The username for the account. Returned on successful *twitter* and *telegram* integrations. Required for *WhatsApp* integrations. (this usage is deprecated) 
    attr_accessor :username

    # The public API key of your Mailgun account. Required for *mailgun* integrations. 
    attr_accessor :apiKey

    # The domain used to relay email. Required for *mailgun* integrations. 
    attr_accessor :domain

    # Smooch will receive all emails sent to this address. Required for *mailgun* integrations. 
    attr_accessor :incomingAddress

    # The public API key of your MessageBird account. Required for *messagebird* integrations. 
    attr_accessor :accessKey

    # Smooch will receive all messages sent to this phone number. Required for *messagebird* integrations. 
    attr_accessor :originator

    # The signing key of your MessageBird account. Used to validate the webhooks' origin. (Optional) Used for *messagebird* integrations. 
    attr_accessor :signingKey

    # This color will be used in the messenger header and the button or tab in idle state. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :brandColor

    # When `true`, the introduction pane will be pinned at the top of the conversation instead of scrolling with it. The default value is `false`. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :fixedIntroPane

    # This color will be used for customer messages, quick replies and actions in the footer. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :conversationColor

    # This color will be used for call-to-actions inside your messages. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :actionColor

    # Choose how the messenger will appear on your website. Must be either button or tab. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :displayStyle

    # With the button style Web Messenger, you have the option of selecting your own button icon. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :buttonIconUrl

    # With the button style Web Messenger, you have the option of specifying its width. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :buttonWidth

    # With the button style Web Messenger, you have the option of specifying its height. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :buttonHeight

    # Array of integration IDs, order will be reflected in the Web Messenger. When set, only integrations from this list will be displayed in the Web Messenger. If unset, all integrations will be displayed (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :integrationOrder

    # A custom business name for the Web Messenger. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :businessName

    # A custom business icon url for the Web Messenger. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :businessIconUrl

    # A custom background url for the Web Messenger. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :backgroundImageUrl

    # A list of origins to whitelist. When set, only the origins from this list will be able to initialize the Web Messenger. If unset, all origins are whitelisted. The elements in the list should follow the serialized-origin format from RFC 6454 `scheme \"://\" host [ \":\" port ]`, where scheme is `http` or `https`. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :originWhitelist

    # When `true`, unsubscribe links will not be included in outbound emails. If this setting is enabled, it is expected that the business is providing the user a way to unsubscribe by some other means. (Optional) Used for *mailgun* integrations. 
    attr_accessor :hideUnsubscribeLink

    # The integration status. See [**IntegrationStatusEnum**](Enums.md#IntegrationStatusEnum) for available values. [More info](https://docs.smooch.io/#integration-status).
    attr_accessor :status

    # The error causing the integration to fail. Will be present when `status` is 'error'.
    attr_accessor :error


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'_id',
        :'type' => :'type',
        :'displayName' => :'displayName',
        :'pageAccessToken' => :'pageAccessToken',
        :'appId' => :'appId',
        :'appSecret' => :'appSecret',
        :'accessTokenUrl' => :'accessTokenUrl',
        :'webhookSecret' => :'webhookSecret',
        :'pageId' => :'pageId',
        :'accountSid' => :'accountSid',
        :'authToken' => :'authToken',
        :'phoneNumberSid' => :'phoneNumberSid',
        :'phoneNumber' => :'phoneNumber',
        :'name' => :'name',
        :'token' => :'token',
        :'uri' => :'uri',
        :'channelId' => :'channelId',
        :'channelSecret' => :'channelSecret',
        :'channelAccessToken' => :'channelAccessToken',
        :'serviceCode' => :'serviceCode',
        :'switcherSecret' => :'switcherSecret',
        :'qrCodeUrl' => :'qrCodeUrl',
        :'lineId' => :'lineId',
        :'botName' => :'botName',
        :'encodingAesKey' => :'encodingAesKey',
        :'fromAddress' => :'fromAddress',
        :'certificate' => :'certificate',
        :'deploymentId' => :'deploymentId',
        :'baseUrl' => :'baseUrl',
        :'hsmFallbackLanguage' => :'hsmFallbackLanguage',
        :'password' => :'password',
        :'autoUpdateBadge' => :'autoUpdateBadge',
        :'production' => :'production',
        :'serverKey' => :'serverKey',
        :'senderId' => :'senderId',
        :'tier' => :'tier',
        :'envName' => :'envName',
        :'consumerKey' => :'consumerKey',
        :'consumerSecret' => :'consumerSecret',
        :'accessTokenKey' => :'accessTokenKey',
        :'accessTokenSecret' => :'accessTokenSecret',
        :'userId' => :'userId',
        :'username' => :'username',
        :'apiKey' => :'apiKey',
        :'domain' => :'domain',
        :'incomingAddress' => :'incomingAddress',
        :'accessKey' => :'accessKey',
        :'originator' => :'originator',
        :'signingKey' => :'signingKey',
        :'brandColor' => :'brandColor',
        :'fixedIntroPane' => :'fixedIntroPane',
        :'conversationColor' => :'conversationColor',
        :'actionColor' => :'actionColor',
        :'displayStyle' => :'displayStyle',
        :'buttonIconUrl' => :'buttonIconUrl',
        :'buttonWidth' => :'buttonWidth',
        :'buttonHeight' => :'buttonHeight',
        :'integrationOrder' => :'integrationOrder',
        :'businessName' => :'businessName',
        :'businessIconUrl' => :'businessIconUrl',
        :'backgroundImageUrl' => :'backgroundImageUrl',
        :'originWhitelist' => :'originWhitelist',
        :'hideUnsubscribeLink' => :'hideUnsubscribeLink',
        :'status' => :'status',
        :'error' => :'error'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'type' => :'String',
        :'displayName' => :'String',
        :'pageAccessToken' => :'String',
        :'appId' => :'String',
        :'appSecret' => :'String',
        :'accessTokenUrl' => :'String',
        :'webhookSecret' => :'String',
        :'pageId' => :'String',
        :'accountSid' => :'String',
        :'authToken' => :'String',
        :'phoneNumberSid' => :'String',
        :'phoneNumber' => :'String',
        :'name' => :'String',
        :'token' => :'String',
        :'uri' => :'String',
        :'channelId' => :'String',
        :'channelSecret' => :'String',
        :'channelAccessToken' => :'String',
        :'serviceCode' => :'String',
        :'switcherSecret' => :'String',
        :'qrCodeUrl' => :'String',
        :'lineId' => :'String',
        :'botName' => :'String',
        :'encodingAesKey' => :'String',
        :'fromAddress' => :'String',
        :'certificate' => :'String',
        :'deploymentId' => :'String',
        :'baseUrl' => :'String',
        :'hsmFallbackLanguage' => :'String',
        :'password' => :'String',
        :'autoUpdateBadge' => :'BOOLEAN',
        :'production' => :'BOOLEAN',
        :'serverKey' => :'String',
        :'senderId' => :'String',
        :'tier' => :'String',
        :'envName' => :'String',
        :'consumerKey' => :'String',
        :'consumerSecret' => :'String',
        :'accessTokenKey' => :'String',
        :'accessTokenSecret' => :'String',
        :'userId' => :'String',
        :'username' => :'String',
        :'apiKey' => :'String',
        :'domain' => :'String',
        :'incomingAddress' => :'String',
        :'accessKey' => :'String',
        :'originator' => :'String',
        :'signingKey' => :'String',
        :'brandColor' => :'String',
        :'fixedIntroPane' => :'BOOLEAN',
        :'conversationColor' => :'String',
        :'actionColor' => :'String',
        :'displayStyle' => :'String',
        :'buttonIconUrl' => :'String',
        :'buttonWidth' => :'String',
        :'buttonHeight' => :'String',
        :'integrationOrder' => :'Array<String>',
        :'businessName' => :'String',
        :'businessIconUrl' => :'String',
        :'backgroundImageUrl' => :'String',
        :'originWhitelist' => :'Array<String>',
        :'hideUnsubscribeLink' => :'BOOLEAN',
        :'status' => :'String',
        :'error' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_id')
        self.id = attributes[:'_id']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'displayName')
        self.displayName = attributes[:'displayName']
      end

      if attributes.has_key?(:'pageAccessToken')
        self.pageAccessToken = attributes[:'pageAccessToken']
      end

      if attributes.has_key?(:'appId')
        self.appId = attributes[:'appId']
      end

      if attributes.has_key?(:'appSecret')
        self.appSecret = attributes[:'appSecret']
      end

      if attributes.has_key?(:'accessTokenUrl')
        self.accessTokenUrl = attributes[:'accessTokenUrl']
      end

      if attributes.has_key?(:'webhookSecret')
        self.webhookSecret = attributes[:'webhookSecret']
      end

      if attributes.has_key?(:'pageId')
        self.pageId = attributes[:'pageId']
      end

      if attributes.has_key?(:'accountSid')
        self.accountSid = attributes[:'accountSid']
      end

      if attributes.has_key?(:'authToken')
        self.authToken = attributes[:'authToken']
      end

      if attributes.has_key?(:'phoneNumberSid')
        self.phoneNumberSid = attributes[:'phoneNumberSid']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phoneNumber = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.has_key?(:'uri')
        self.uri = attributes[:'uri']
      end

      if attributes.has_key?(:'channelId')
        self.channelId = attributes[:'channelId']
      end

      if attributes.has_key?(:'channelSecret')
        self.channelSecret = attributes[:'channelSecret']
      end

      if attributes.has_key?(:'channelAccessToken')
        self.channelAccessToken = attributes[:'channelAccessToken']
      end

      if attributes.has_key?(:'serviceCode')
        self.serviceCode = attributes[:'serviceCode']
      end

      if attributes.has_key?(:'switcherSecret')
        self.switcherSecret = attributes[:'switcherSecret']
      end

      if attributes.has_key?(:'qrCodeUrl')
        self.qrCodeUrl = attributes[:'qrCodeUrl']
      end

      if attributes.has_key?(:'lineId')
        self.lineId = attributes[:'lineId']
      end

      if attributes.has_key?(:'botName')
        self.botName = attributes[:'botName']
      end

      if attributes.has_key?(:'encodingAesKey')
        self.encodingAesKey = attributes[:'encodingAesKey']
      end

      if attributes.has_key?(:'fromAddress')
        self.fromAddress = attributes[:'fromAddress']
      end

      if attributes.has_key?(:'certificate')
        self.certificate = attributes[:'certificate']
      end

      if attributes.has_key?(:'deploymentId')
        self.deploymentId = attributes[:'deploymentId']
      end

      if attributes.has_key?(:'baseUrl')
        self.baseUrl = attributes[:'baseUrl']
      end

      if attributes.has_key?(:'hsmFallbackLanguage')
        self.hsmFallbackLanguage = attributes[:'hsmFallbackLanguage']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'autoUpdateBadge')
        self.autoUpdateBadge = attributes[:'autoUpdateBadge']
      end

      if attributes.has_key?(:'production')
        self.production = attributes[:'production']
      end

      if attributes.has_key?(:'serverKey')
        self.serverKey = attributes[:'serverKey']
      end

      if attributes.has_key?(:'senderId')
        self.senderId = attributes[:'senderId']
      end

      if attributes.has_key?(:'tier')
        self.tier = attributes[:'tier']
      end

      if attributes.has_key?(:'envName')
        self.envName = attributes[:'envName']
      end

      if attributes.has_key?(:'consumerKey')
        self.consumerKey = attributes[:'consumerKey']
      end

      if attributes.has_key?(:'consumerSecret')
        self.consumerSecret = attributes[:'consumerSecret']
      end

      if attributes.has_key?(:'accessTokenKey')
        self.accessTokenKey = attributes[:'accessTokenKey']
      end

      if attributes.has_key?(:'accessTokenSecret')
        self.accessTokenSecret = attributes[:'accessTokenSecret']
      end

      if attributes.has_key?(:'userId')
        self.userId = attributes[:'userId']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'apiKey')
        self.apiKey = attributes[:'apiKey']
      end

      if attributes.has_key?(:'domain')
        self.domain = attributes[:'domain']
      end

      if attributes.has_key?(:'incomingAddress')
        self.incomingAddress = attributes[:'incomingAddress']
      end

      if attributes.has_key?(:'accessKey')
        self.accessKey = attributes[:'accessKey']
      end

      if attributes.has_key?(:'originator')
        self.originator = attributes[:'originator']
      end

      if attributes.has_key?(:'signingKey')
        self.signingKey = attributes[:'signingKey']
      end

      if attributes.has_key?(:'brandColor')
        self.brandColor = attributes[:'brandColor']
      end

      if attributes.has_key?(:'fixedIntroPane')
        self.fixedIntroPane = attributes[:'fixedIntroPane']
      end

      if attributes.has_key?(:'conversationColor')
        self.conversationColor = attributes[:'conversationColor']
      end

      if attributes.has_key?(:'actionColor')
        self.actionColor = attributes[:'actionColor']
      end

      if attributes.has_key?(:'displayStyle')
        self.displayStyle = attributes[:'displayStyle']
      end

      if attributes.has_key?(:'buttonIconUrl')
        self.buttonIconUrl = attributes[:'buttonIconUrl']
      end

      if attributes.has_key?(:'buttonWidth')
        self.buttonWidth = attributes[:'buttonWidth']
      end

      if attributes.has_key?(:'buttonHeight')
        self.buttonHeight = attributes[:'buttonHeight']
      end

      if attributes.has_key?(:'integrationOrder')
        if (value = attributes[:'integrationOrder']).is_a?(Array)
          self.integrationOrder = value
        end
      end

      if attributes.has_key?(:'businessName')
        self.businessName = attributes[:'businessName']
      end

      if attributes.has_key?(:'businessIconUrl')
        self.businessIconUrl = attributes[:'businessIconUrl']
      end

      if attributes.has_key?(:'backgroundImageUrl')
        self.backgroundImageUrl = attributes[:'backgroundImageUrl']
      end

      if attributes.has_key?(:'originWhitelist')
        if (value = attributes[:'originWhitelist']).is_a?(Array)
          self.originWhitelist = value
        end
      end

      if attributes.has_key?(:'hideUnsubscribeLink')
        self.hideUnsubscribeLink = attributes[:'hideUnsubscribeLink']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'error')
        self.error = attributes[:'error']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @type.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          displayName == o.displayName &&
          pageAccessToken == o.pageAccessToken &&
          appId == o.appId &&
          appSecret == o.appSecret &&
          accessTokenUrl == o.accessTokenUrl &&
          webhookSecret == o.webhookSecret &&
          pageId == o.pageId &&
          accountSid == o.accountSid &&
          authToken == o.authToken &&
          phoneNumberSid == o.phoneNumberSid &&
          phoneNumber == o.phoneNumber &&
          name == o.name &&
          token == o.token &&
          uri == o.uri &&
          channelId == o.channelId &&
          channelSecret == o.channelSecret &&
          channelAccessToken == o.channelAccessToken &&
          serviceCode == o.serviceCode &&
          switcherSecret == o.switcherSecret &&
          qrCodeUrl == o.qrCodeUrl &&
          lineId == o.lineId &&
          botName == o.botName &&
          encodingAesKey == o.encodingAesKey &&
          fromAddress == o.fromAddress &&
          certificate == o.certificate &&
          deploymentId == o.deploymentId &&
          baseUrl == o.baseUrl &&
          hsmFallbackLanguage == o.hsmFallbackLanguage &&
          password == o.password &&
          autoUpdateBadge == o.autoUpdateBadge &&
          production == o.production &&
          serverKey == o.serverKey &&
          senderId == o.senderId &&
          tier == o.tier &&
          envName == o.envName &&
          consumerKey == o.consumerKey &&
          consumerSecret == o.consumerSecret &&
          accessTokenKey == o.accessTokenKey &&
          accessTokenSecret == o.accessTokenSecret &&
          userId == o.userId &&
          username == o.username &&
          apiKey == o.apiKey &&
          domain == o.domain &&
          incomingAddress == o.incomingAddress &&
          accessKey == o.accessKey &&
          originator == o.originator &&
          signingKey == o.signingKey &&
          brandColor == o.brandColor &&
          fixedIntroPane == o.fixedIntroPane &&
          conversationColor == o.conversationColor &&
          actionColor == o.actionColor &&
          displayStyle == o.displayStyle &&
          buttonIconUrl == o.buttonIconUrl &&
          buttonWidth == o.buttonWidth &&
          buttonHeight == o.buttonHeight &&
          integrationOrder == o.integrationOrder &&
          businessName == o.businessName &&
          businessIconUrl == o.businessIconUrl &&
          backgroundImageUrl == o.backgroundImageUrl &&
          originWhitelist == o.originWhitelist &&
          hideUnsubscribeLink == o.hideUnsubscribeLink &&
          status == o.status &&
          error == o.error
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, type, displayName, pageAccessToken, appId, appSecret, accessTokenUrl, webhookSecret, pageId, accountSid, authToken, phoneNumberSid, phoneNumber, name, token, uri, channelId, channelSecret, channelAccessToken, serviceCode, switcherSecret, qrCodeUrl, lineId, botName, encodingAesKey, fromAddress, certificate, deploymentId, baseUrl, hsmFallbackLanguage, password, autoUpdateBadge, production, serverKey, senderId, tier, envName, consumerKey, consumerSecret, accessTokenKey, accessTokenSecret, userId, username, apiKey, domain, incomingAddress, accessKey, originator, signingKey, brandColor, fixedIntroPane, conversationColor, actionColor, displayStyle, buttonIconUrl, buttonWidth, buttonHeight, integrationOrder, businessName, businessIconUrl, backgroundImageUrl, originWhitelist, hideUnsubscribeLink, status, error].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SmoochApi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
