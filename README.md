# swagger_client

SwaggerClient - the Ruby gem for the PacerPro

PacerPro API documentation.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.3.0
- Package version: 1.0.0
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

api_instance = SwaggerClient::AuthenticationApi.new

user = SwaggerClient::User.new # User | User credentials


begin
  #Initial authentication.
  result = api_instance.session_create(user)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_create: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.pacerpro.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::AuthenticationApi* | [**session_create**](docs/AuthenticationApi.md#session_create) | **POST** /session | Initial authentication.
*SwaggerClient::AuthenticationApi* | [**session_delete**](docs/AuthenticationApi.md#session_delete) | **DELETE** /session | Revoke all JWT tokens (logout).
*SwaggerClient::AuthenticationApi* | [**session_refresh**](docs/AuthenticationApi.md#session_refresh) | **GET** /session | Refresh authentication token
*SwaggerClient::MattersApi* | [**matters_get_collection**](docs/MattersApi.md#matters_get_collection) | **GET** /matters | A collection of matters.
*SwaggerClient::MattersApi* | [**matters_get_one**](docs/MattersApi.md#matters_get_one) | **GET** /matters/{matterId} | A single matter.


## Documentation for Models

 - [SwaggerClient::Attorney](docs/Attorney.md)
 - [SwaggerClient::Empty](docs/Empty.md)
 - [SwaggerClient::Error](docs/Error.md)
 - [SwaggerClient::Matter](docs/Matter.md)
 - [SwaggerClient::ModelCase](docs/ModelCase.md)
 - [SwaggerClient::Party](docs/Party.md)
 - [SwaggerClient::Session](docs/Session.md)
 - [SwaggerClient::User](docs/User.md)


## Documentation for Authorization


### Bearer

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

