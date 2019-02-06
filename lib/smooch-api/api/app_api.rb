=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class AppApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Create a new app.
    # @param appCreateBody Body for a createApp request.
    # @param [Hash] opts the optional parameters
    # @return [AppResponse]
    def create_app(appCreateBody, opts = {})
      data, _status_code, _headers = create_app_with_http_info(appCreateBody, opts)
      return data
    end

    # 
    # Create a new app.
    # @param appCreateBody Body for a createApp request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppResponse, Fixnum, Hash)>] AppResponse data, response status code and response headers
    def create_app_with_http_info(appCreateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.create_app ..."
      end
      # verify the required parameter 'appCreateBody' is set
      if @api_client.config.client_side_validation && appCreateBody.nil?
        fail ArgumentError, "Missing the required parameter 'appCreateBody' when calling AppApi.create_app"
      end
      # resource path
      local_var_path = "/v1.1/apps"

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
      post_body = @api_client.object_to_http_body(appCreateBody)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#create_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create a secret key for the specified app.
    # @param appId Identifies the app.
    # @param secretKeyCreateBody Body for a createSecretKey request.
    # @param [Hash] opts the optional parameters
    # @return [SecretKeyResponse]
    def create_secret_key(appId, secretKeyCreateBody, opts = {})
      data, _status_code, _headers = create_secret_key_with_http_info(appId, secretKeyCreateBody, opts)
      return data
    end

    # 
    # Create a secret key for the specified app.
    # @param appId Identifies the app.
    # @param secretKeyCreateBody Body for a createSecretKey request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretKeyResponse, Fixnum, Hash)>] SecretKeyResponse data, response status code and response headers
    def create_secret_key_with_http_info(appId, secretKeyCreateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.create_secret_key ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppApi.create_secret_key"
      end
      # verify the required parameter 'secretKeyCreateBody' is set
      if @api_client.config.client_side_validation && secretKeyCreateBody.nil?
        fail ArgumentError, "Missing the required parameter 'secretKeyCreateBody' when calling AppApi.create_secret_key"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/keys".sub('{' + 'appId' + '}', appId.to_s)

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
      post_body = @api_client.object_to_http_body(secretKeyCreateBody)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#create_secret_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified app.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_app(appId, opts = {})
      delete_app_with_http_info(appId, opts)
      return nil
    end

    # 
    # Delete the specified app.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_app_with_http_info(appId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.delete_app ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppApi.delete_app"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}".sub('{' + 'appId' + '}', appId.to_s)

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
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#delete_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified secret key.
    # @param appId Identifies the app.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_secret_key(appId, keyId, opts = {})
      delete_secret_key_with_http_info(appId, keyId, opts)
      return nil
    end

    # 
    # Delete the specified secret key.
    # @param appId Identifies the app.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_secret_key_with_http_info(appId, keyId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.delete_secret_key ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppApi.delete_secret_key"
      end
      # verify the required parameter 'keyId' is set
      if @api_client.config.client_side_validation && keyId.nil?
        fail ArgumentError, "Missing the required parameter 'keyId' when calling AppApi.delete_secret_key"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/keys/{keyId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'keyId' + '}', keyId.to_s)

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
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#delete_secret_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified app.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [AppResponse]
    def get_app(appId, opts = {})
      data, _status_code, _headers = get_app_with_http_info(appId, opts)
      return data
    end

    # 
    # Get the specified app.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppResponse, Fixnum, Hash)>] AppResponse data, response status code and response headers
    def get_app_with_http_info(appId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.get_app ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppApi.get_app"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}".sub('{' + 'appId' + '}', appId.to_s)

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
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#get_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get an app-scoped JWT for the specified secret key.
    # @param appId Identifies the app.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [JwtResponse]
    def get_app_jwt(appId, keyId, opts = {})
      data, _status_code, _headers = get_app_jwt_with_http_info(appId, keyId, opts)
      return data
    end

    # 
    # Get an app-scoped JWT for the specified secret key.
    # @param appId Identifies the app.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JwtResponse, Fixnum, Hash)>] JwtResponse data, response status code and response headers
    def get_app_jwt_with_http_info(appId, keyId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.get_app_jwt ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppApi.get_app_jwt"
      end
      # verify the required parameter 'keyId' is set
      if @api_client.config.client_side_validation && keyId.nil?
        fail ArgumentError, "Missing the required parameter 'keyId' when calling AppApi.get_app_jwt"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/keys/{keyId}/jwt".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'keyId' + '}', keyId.to_s)

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
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JwtResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#get_app_jwt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified secret key.
    # @param appId Identifies the app.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [SecretKeyResponse]
    def get_secret_key(appId, keyId, opts = {})
      data, _status_code, _headers = get_secret_key_with_http_info(appId, keyId, opts)
      return data
    end

    # 
    # Get the specified secret key.
    # @param appId Identifies the app.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretKeyResponse, Fixnum, Hash)>] SecretKeyResponse data, response status code and response headers
    def get_secret_key_with_http_info(appId, keyId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.get_secret_key ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppApi.get_secret_key"
      end
      # verify the required parameter 'keyId' is set
      if @api_client.config.client_side_validation && keyId.nil?
        fail ArgumentError, "Missing the required parameter 'keyId' when calling AppApi.get_secret_key"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/keys/{keyId}".sub('{' + 'appId' + '}', appId.to_s).sub('{' + 'keyId' + '}', keyId.to_s)

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
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#get_secret_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List all apps configured.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return. (default to 25)
    # @option opts [Integer] :offset The number of initial records to skip before picking records to return. (default to 0)
    # @option opts [String] :serviceAccountId The service account ID for which to list apps. (default to )
    # @return [ListAppsResponse]
    def list_apps(opts = {})
      data, _status_code, _headers = list_apps_with_http_info(opts)
      return data
    end

    # 
    # List all apps configured.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return.
    # @option opts [Integer] :offset The number of initial records to skip before picking records to return.
    # @option opts [String] :serviceAccountId The service account ID for which to list apps.
    # @return [Array<(ListAppsResponse, Fixnum, Hash)>] ListAppsResponse data, response status code and response headers
    def list_apps_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.list_apps ..."
      end
      # resource path
      local_var_path = "/v1.1/apps"

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'serviceAccountId'] = opts[:'serviceAccountId'] if !opts[:'serviceAccountId'].nil?

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
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListAppsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#list_apps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List the secret keys for the specified app.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [ListSecretKeysResponse]
    def list_secret_keys(appId, opts = {})
      data, _status_code, _headers = list_secret_keys_with_http_info(appId, opts)
      return data
    end

    # 
    # List the secret keys for the specified app.
    # @param appId Identifies the app.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListSecretKeysResponse, Fixnum, Hash)>] ListSecretKeysResponse data, response status code and response headers
    def list_secret_keys_with_http_info(appId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.list_secret_keys ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppApi.list_secret_keys"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}/keys".sub('{' + 'appId' + '}', appId.to_s)

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
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListSecretKeysResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#list_secret_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified app.
    # @param appId Identifies the app.
    # @param appUpdateBody Body for an updateApp request.
    # @param [Hash] opts the optional parameters
    # @return [AppResponse]
    def update_app(appId, appUpdateBody, opts = {})
      data, _status_code, _headers = update_app_with_http_info(appId, appUpdateBody, opts)
      return data
    end

    # 
    # Update the specified app.
    # @param appId Identifies the app.
    # @param appUpdateBody Body for an updateApp request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AppResponse, Fixnum, Hash)>] AppResponse data, response status code and response headers
    def update_app_with_http_info(appId, appUpdateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AppApi.update_app ..."
      end
      # verify the required parameter 'appId' is set
      if @api_client.config.client_side_validation && appId.nil?
        fail ArgumentError, "Missing the required parameter 'appId' when calling AppApi.update_app"
      end
      # verify the required parameter 'appUpdateBody' is set
      if @api_client.config.client_side_validation && appUpdateBody.nil?
        fail ArgumentError, "Missing the required parameter 'appUpdateBody' when calling AppApi.update_app"
      end
      # resource path
      local_var_path = "/v1.1/apps/{appId}".sub('{' + 'appId' + '}', appId.to_s)

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
      post_body = @api_client.object_to_http_body(appUpdateBody)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AppResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppApi#update_app\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
