=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.28

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class ServiceAccountApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Create a secret key for the specified service account.
    # @param serviceAccountId Identifies the service account.
    # @param secretKeyCreateBody Body for a createSecretKey request.
    # @param [Hash] opts the optional parameters
    # @return [SecretKeyResponse]
    def create_secret_key(serviceAccountId, secretKeyCreateBody, opts = {})
      data, _status_code, _headers = create_secret_key_with_http_info(serviceAccountId, secretKeyCreateBody, opts)
      return data
    end

    # 
    # Create a secret key for the specified service account.
    # @param serviceAccountId Identifies the service account.
    # @param secretKeyCreateBody Body for a createSecretKey request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretKeyResponse, Fixnum, Hash)>] SecretKeyResponse data, response status code and response headers
    def create_secret_key_with_http_info(serviceAccountId, secretKeyCreateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceAccountApi.create_secret_key ..."
      end
      # verify the required parameter 'serviceAccountId' is set
      if @api_client.config.client_side_validation && serviceAccountId.nil?
        fail ArgumentError, "Missing the required parameter 'serviceAccountId' when calling ServiceAccountApi.create_secret_key"
      end
      # verify the required parameter 'secretKeyCreateBody' is set
      if @api_client.config.client_side_validation && secretKeyCreateBody.nil?
        fail ArgumentError, "Missing the required parameter 'secretKeyCreateBody' when calling ServiceAccountApi.create_secret_key"
      end
      # resource path
      local_var_path = "/v1.1/serviceaccounts/{serviceAccountId}/keys".sub('{' + 'serviceAccountId' + '}', serviceAccountId.to_s)

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
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountApi#create_secret_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create a new service account.
    # @param serviceAccountCreateBody Body for a createServiceAccount request.
    # @param [Hash] opts the optional parameters
    # @return [ServiceAccountResponse]
    def create_service_account(serviceAccountCreateBody, opts = {})
      data, _status_code, _headers = create_service_account_with_http_info(serviceAccountCreateBody, opts)
      return data
    end

    # 
    # Create a new service account.
    # @param serviceAccountCreateBody Body for a createServiceAccount request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceAccountResponse, Fixnum, Hash)>] ServiceAccountResponse data, response status code and response headers
    def create_service_account_with_http_info(serviceAccountCreateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceAccountApi.create_service_account ..."
      end
      # verify the required parameter 'serviceAccountCreateBody' is set
      if @api_client.config.client_side_validation && serviceAccountCreateBody.nil?
        fail ArgumentError, "Missing the required parameter 'serviceAccountCreateBody' when calling ServiceAccountApi.create_service_account"
      end
      # resource path
      local_var_path = "/v1.1/serviceaccounts"

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
      post_body = @api_client.object_to_http_body(serviceAccountCreateBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ServiceAccountResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountApi#create_service_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified service account secret key.
    # @param serviceAccountId Identifies the service account.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_secret_key(serviceAccountId, keyId, opts = {})
      delete_secret_key_with_http_info(serviceAccountId, keyId, opts)
      return nil
    end

    # 
    # Delete the specified service account secret key.
    # @param serviceAccountId Identifies the service account.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_secret_key_with_http_info(serviceAccountId, keyId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceAccountApi.delete_secret_key ..."
      end
      # verify the required parameter 'serviceAccountId' is set
      if @api_client.config.client_side_validation && serviceAccountId.nil?
        fail ArgumentError, "Missing the required parameter 'serviceAccountId' when calling ServiceAccountApi.delete_secret_key"
      end
      # verify the required parameter 'keyId' is set
      if @api_client.config.client_side_validation && keyId.nil?
        fail ArgumentError, "Missing the required parameter 'keyId' when calling ServiceAccountApi.delete_secret_key"
      end
      # resource path
      local_var_path = "/v1.1/serviceaccounts/{serviceAccountId}/keys/{keyId}".sub('{' + 'serviceAccountId' + '}', serviceAccountId.to_s).sub('{' + 'keyId' + '}', keyId.to_s)

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
        @api_client.config.logger.debug "API called: ServiceAccountApi#delete_secret_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified service account.
    # @param serviceAccountId Identifies the service account.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_service_account(serviceAccountId, opts = {})
      delete_service_account_with_http_info(serviceAccountId, opts)
      return nil
    end

    # 
    # Delete the specified service account.
    # @param serviceAccountId Identifies the service account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_service_account_with_http_info(serviceAccountId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceAccountApi.delete_service_account ..."
      end
      # verify the required parameter 'serviceAccountId' is set
      if @api_client.config.client_side_validation && serviceAccountId.nil?
        fail ArgumentError, "Missing the required parameter 'serviceAccountId' when calling ServiceAccountApi.delete_service_account"
      end
      # resource path
      local_var_path = "/v1.1/serviceaccounts/{serviceAccountId}".sub('{' + 'serviceAccountId' + '}', serviceAccountId.to_s)

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
        @api_client.config.logger.debug "API called: ServiceAccountApi#delete_service_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get an account-scoped JWT for the specified service account secret key.
    # @param serviceAccountId Identifies the service account.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [JwtResponse]
    def get_jwt(serviceAccountId, keyId, opts = {})
      data, _status_code, _headers = get_jwt_with_http_info(serviceAccountId, keyId, opts)
      return data
    end

    # 
    # Get an account-scoped JWT for the specified service account secret key.
    # @param serviceAccountId Identifies the service account.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JwtResponse, Fixnum, Hash)>] JwtResponse data, response status code and response headers
    def get_jwt_with_http_info(serviceAccountId, keyId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceAccountApi.get_jwt ..."
      end
      # verify the required parameter 'serviceAccountId' is set
      if @api_client.config.client_side_validation && serviceAccountId.nil?
        fail ArgumentError, "Missing the required parameter 'serviceAccountId' when calling ServiceAccountApi.get_jwt"
      end
      # verify the required parameter 'keyId' is set
      if @api_client.config.client_side_validation && keyId.nil?
        fail ArgumentError, "Missing the required parameter 'keyId' when calling ServiceAccountApi.get_jwt"
      end
      # resource path
      local_var_path = "/v1.1/serviceaccounts/{serviceAccountId}/keys/{keyId}/jwt".sub('{' + 'serviceAccountId' + '}', serviceAccountId.to_s).sub('{' + 'keyId' + '}', keyId.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JwtResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountApi#get_jwt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified service account secret key.
    # @param serviceAccountId Identifies the service account.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [SecretKeyResponse]
    def get_secret_key(serviceAccountId, keyId, opts = {})
      data, _status_code, _headers = get_secret_key_with_http_info(serviceAccountId, keyId, opts)
      return data
    end

    # 
    # Get the specified service account secret key.
    # @param serviceAccountId Identifies the service account.
    # @param keyId Identifies the secret key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SecretKeyResponse, Fixnum, Hash)>] SecretKeyResponse data, response status code and response headers
    def get_secret_key_with_http_info(serviceAccountId, keyId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceAccountApi.get_secret_key ..."
      end
      # verify the required parameter 'serviceAccountId' is set
      if @api_client.config.client_side_validation && serviceAccountId.nil?
        fail ArgumentError, "Missing the required parameter 'serviceAccountId' when calling ServiceAccountApi.get_secret_key"
      end
      # verify the required parameter 'keyId' is set
      if @api_client.config.client_side_validation && keyId.nil?
        fail ArgumentError, "Missing the required parameter 'keyId' when calling ServiceAccountApi.get_secret_key"
      end
      # resource path
      local_var_path = "/v1.1/serviceaccounts/{serviceAccountId}/keys/{keyId}".sub('{' + 'serviceAccountId' + '}', serviceAccountId.to_s).sub('{' + 'keyId' + '}', keyId.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SecretKeyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountApi#get_secret_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified service account.
    # @param serviceAccountId Identifies the service account.
    # @param [Hash] opts the optional parameters
    # @return [ServiceAccountResponse]
    def get_service_account(serviceAccountId, opts = {})
      data, _status_code, _headers = get_service_account_with_http_info(serviceAccountId, opts)
      return data
    end

    # 
    # Get the specified service account.
    # @param serviceAccountId Identifies the service account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceAccountResponse, Fixnum, Hash)>] ServiceAccountResponse data, response status code and response headers
    def get_service_account_with_http_info(serviceAccountId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceAccountApi.get_service_account ..."
      end
      # verify the required parameter 'serviceAccountId' is set
      if @api_client.config.client_side_validation && serviceAccountId.nil?
        fail ArgumentError, "Missing the required parameter 'serviceAccountId' when calling ServiceAccountApi.get_service_account"
      end
      # resource path
      local_var_path = "/v1.1/serviceaccounts/{serviceAccountId}".sub('{' + 'serviceAccountId' + '}', serviceAccountId.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ServiceAccountResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountApi#get_service_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List the secret keys for the specified service account.
    # @param serviceAccountId Identifies the service account.
    # @param [Hash] opts the optional parameters
    # @return [ListSecretKeysResponse]
    def list_secret_keys(serviceAccountId, opts = {})
      data, _status_code, _headers = list_secret_keys_with_http_info(serviceAccountId, opts)
      return data
    end

    # 
    # List the secret keys for the specified service account.
    # @param serviceAccountId Identifies the service account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListSecretKeysResponse, Fixnum, Hash)>] ListSecretKeysResponse data, response status code and response headers
    def list_secret_keys_with_http_info(serviceAccountId, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceAccountApi.list_secret_keys ..."
      end
      # verify the required parameter 'serviceAccountId' is set
      if @api_client.config.client_side_validation && serviceAccountId.nil?
        fail ArgumentError, "Missing the required parameter 'serviceAccountId' when calling ServiceAccountApi.list_secret_keys"
      end
      # resource path
      local_var_path = "/v1.1/serviceaccounts/{serviceAccountId}/keys".sub('{' + 'serviceAccountId' + '}', serviceAccountId.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListSecretKeysResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountApi#list_secret_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List all service accounts configured.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return. (default to 25)
    # @option opts [Integer] :offset The number of initial records to skip before picking records to return. (default to 0)
    # @return [ListServiceAccountsResponse]
    def list_service_accounts(opts = {})
      data, _status_code, _headers = list_service_accounts_with_http_info(opts)
      return data
    end

    # 
    # List all service accounts configured.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return.
    # @option opts [Integer] :offset The number of initial records to skip before picking records to return.
    # @return [Array<(ListServiceAccountsResponse, Fixnum, Hash)>] ListServiceAccountsResponse data, response status code and response headers
    def list_service_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceAccountApi.list_service_accounts ..."
      end
      # resource path
      local_var_path = "/v1.1/serviceaccounts"

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

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
        :return_type => 'ListServiceAccountsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountApi#list_service_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified service account.
    # @param serviceAccountId Identifies the service account.
    # @param serviceAccountUpdateBody Body for an updateServiceAccount request.
    # @param [Hash] opts the optional parameters
    # @return [ServiceAccountResponse]
    def update_service_account(serviceAccountId, serviceAccountUpdateBody, opts = {})
      data, _status_code, _headers = update_service_account_with_http_info(serviceAccountId, serviceAccountUpdateBody, opts)
      return data
    end

    # 
    # Update the specified service account.
    # @param serviceAccountId Identifies the service account.
    # @param serviceAccountUpdateBody Body for an updateServiceAccount request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceAccountResponse, Fixnum, Hash)>] ServiceAccountResponse data, response status code and response headers
    def update_service_account_with_http_info(serviceAccountId, serviceAccountUpdateBody, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceAccountApi.update_service_account ..."
      end
      # verify the required parameter 'serviceAccountId' is set
      if @api_client.config.client_side_validation && serviceAccountId.nil?
        fail ArgumentError, "Missing the required parameter 'serviceAccountId' when calling ServiceAccountApi.update_service_account"
      end
      # verify the required parameter 'serviceAccountUpdateBody' is set
      if @api_client.config.client_side_validation && serviceAccountUpdateBody.nil?
        fail ArgumentError, "Missing the required parameter 'serviceAccountUpdateBody' when calling ServiceAccountApi.update_service_account"
      end
      # resource path
      local_var_path = "/v1.1/serviceaccounts/{serviceAccountId}".sub('{' + 'serviceAccountId' + '}', serviceAccountId.to_s)

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
      post_body = @api_client.object_to_http_body(serviceAccountUpdateBody)
      auth_names = ['basicAuth', 'jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ServiceAccountResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountApi#update_service_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
