=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class ConversationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Notify Smooch when an app maker starts or stops typing a response.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param conversationActivityBody Body for a triggerConversationActivity request.
    # @param [Hash] opts the optional parameters
    # @return [ActivityResponse]
    def conversation_activity(appId, userId, conversationActivityBody, opts = {})
      data, _status_code, _headers = conversation_activity_with_http_info(appId, userId, conversationActivityBody, opts)
      return data
    end

    # 
    # Notify Smooch when an app maker starts or stops typing a response.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param conversationActivityBody Body for a triggerConversationActivity request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActivityResponse, Fixnum, Hash)>] ActivityResponse data, response status code and response headers
    def conversation_activity_with_http_info(appId, userId, conversationActivityBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConversationApi.conversation_activity ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling ConversationApi.conversation_activity"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling ConversationApi.conversation_activity"
      end
      # verify the required parameter 'conversationActivityBody' is set
      if @api_client.config.client_side_validation && conversationActivityBody.nil?
        fail ArgumentError, "Missing the required parameter 'conversationActivityBody' when calling ConversationApi.conversation_activity"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/conversation/activity".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(conversationActivityBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ActivityResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversationApi#conversation_activity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Deletes a single message.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param messageId Identifies the message.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_message(appId, userId, messageId, opts = {})
      delete_message_with_http_info(appId, userId, messageId, opts)
      return nil
    end

    # 
    # Deletes a single message.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param messageId Identifies the message.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_message_with_http_info(appId, userId, messageId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConversationApi.delete_message ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling ConversationApi.delete_message"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling ConversationApi.delete_message"
      end
      # verify the required parameter 'messageId' is set
      if @api_client.config.client_side_validation && messageId.nil?
        fail ArgumentError, "Missing the required parameter 'messageId' when calling ConversationApi.delete_message"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/messages/{messageId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s).sub('{' + 'messageId' + '}', messageId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversationApi#delete_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Clears the message history for a user, permanently deleting all messages, but leaving any connections to Messaging Channels and Business Systems intact. These connections allow for the conversation to continue in the future, while still being associated to the same appUser. 
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_messages(appId, userId, opts = {})
      delete_messages_with_http_info(appId, userId, opts)
      return nil
    end

    # 
    # Clears the message history for a user, permanently deleting all messages, but leaving any connections to Messaging Channels and Business Systems intact. These connections allow for the conversation to continue in the future, while still being associated to the same appUser. 
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_messages_with_http_info(appId, userId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConversationApi.delete_messages ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling ConversationApi.delete_messages"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling ConversationApi.delete_messages"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/messages".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversationApi#delete_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified app user's messages.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :before Timestamp of message. The API will return 100 messages before the specified timestamp (excluding any messages with the provided timestamp).
    # @option opts [String] :after Timestamp of message. The API will return 100 messages after the specified timestamp (excluding any messages with the provided timestamp).
    # @return [GetMessagesResponse]
    def get_messages(appId, userId, opts = {})
      data, _status_code, _headers = get_messages_with_http_info(appId, userId, opts)
      return data
    end

    # 
    # Get the specified app user&#39;s messages.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :before Timestamp of message. The API will return 100 messages before the specified timestamp (excluding any messages with the provided timestamp).
    # @option opts [String] :after Timestamp of message. The API will return 100 messages after the specified timestamp (excluding any messages with the provided timestamp).
    # @return [Array<(GetMessagesResponse, Fixnum, Hash)>] GetMessagesResponse data, response status code and response headers
    def get_messages_with_http_info(appId, userId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConversationApi.get_messages ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling ConversationApi.get_messages"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling ConversationApi.get_messages"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/messages".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

      # query parameters
      query_params = {}
      query_params[:'before'] = opts[:'before'] if !opts[:'before'].nil?
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetMessagesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversationApi#get_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Post a message to or from the app user.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param messagePostBody Body for a postMessage request. Additional arguments are necessary based on message type ([text](https://docs.smooch.io/rest/#text), [image](https://docs.smooch.io/rest/#image), [carousel](https://docs.smooch.io/rest/#carousel), [list](https://docs.smooch.io/rest/#list), [form](https://docs.smooch.io/rest/#form)) 
    # @param [Hash] opts the optional parameters
    # @return [MessageResponse]
    def post_message(appId, userId, messagePostBody, opts = {})
      data, _status_code, _headers = post_message_with_http_info(appId, userId, messagePostBody, opts)
      return data
    end

    # 
    # Post a message to or from the app user.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param messagePostBody Body for a postMessage request. Additional arguments are necessary based on message type ([text](https://docs.smooch.io/rest/#text), [image](https://docs.smooch.io/rest/#image), [carousel](https://docs.smooch.io/rest/#carousel), [list](https://docs.smooch.io/rest/#list), [form](https://docs.smooch.io/rest/#form)) 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MessageResponse, Fixnum, Hash)>] MessageResponse data, response status code and response headers
    def post_message_with_http_info(appId, userId, messagePostBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConversationApi.post_message ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling ConversationApi.post_message"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling ConversationApi.post_message"
      end
      # verify the required parameter 'messagePostBody' is set
      if @api_client.config.client_side_validation && messagePostBody.nil?
        fail ArgumentError, "Missing the required parameter 'messagePostBody' when calling ConversationApi.post_message"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/messages".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(messagePostBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MessageResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversationApi#post_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Reset the unread count of the conversation to 0.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def reset_unread_count(appId, userId, opts = {})
      reset_unread_count_with_http_info(appId, userId, opts)
      return nil
    end

    # 
    # Reset the unread count of the conversation to 0.
    # @param appId Identifies the app.
    # @param userId Identifies the user. Can be either the smoochId or the userId.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def reset_unread_count_with_http_info(appId, userId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConversationApi.reset_unread_count ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling ConversationApi.reset_unread_count"
      end
      # verify the required parameter 'userId' is set
      if @api_client.config.client_side_validation && userId.nil?
        fail ArgumentError, "Missing the required parameter 'userId' when calling ConversationApi.reset_unread_count"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/appusers/{userId}/conversation/read".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'userId' + '}', userId.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversationApi#reset_unread_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
