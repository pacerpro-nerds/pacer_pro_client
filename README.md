# pacer_pro_client

PacerProClient - the Ruby gem for the PacerPro

PacerPro API documentation.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.3.0
- Package version: {{VERSION}}
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build pacer_pro_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./pacer_pro_client-{{VERSION}}.gem
```
(for development, run `gem install --dev ./pacer_pro_client-{{VERSION}}.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'pacer_pro_client', '~> {{VERSION}}'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'pacer_pro_client', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'pacer_pro_client'

api_instance = PacerProClient::AuthenticationApi.new

user = PacerProClient::User.new # User | User credentials


begin
  #Initial authentication.
  result = api_instance.session_create(user)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_create: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://sdx94nst9f.execute-api.us-east-1.amazonaws.com/qa*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PacerProClient::AuthenticationApi* | [**session_create**](docs/AuthenticationApi.md#session_create) | **POST** /session | Initial authentication.
*PacerProClient::AuthenticationApi* | [**session_delete**](docs/AuthenticationApi.md#session_delete) | **DELETE** /session | Revoke all JWT tokens (logout).
*PacerProClient::AuthenticationApi* | [**session_refresh**](docs/AuthenticationApi.md#session_refresh) | **GET** /session | Refresh authentication token
*PacerProClient::CasesApi* | [**cases_get_collection**](docs/CasesApi.md#cases_get_collection) | **GET** /cases | A collection of cases.
*PacerProClient::CasesApi* | [**cases_get_one**](docs/CasesApi.md#cases_get_one) | **GET** /cases/{caseId} | A single case.
*PacerProClient::CasesApi* | [**cases_get_parties**](docs/CasesApi.md#cases_get_parties) | **GET** /cases/{caseId}/parties | A table of parties.
*PacerProClient::MattersApi* | [**matters_get_collection**](docs/MattersApi.md#matters_get_collection) | **GET** /matters | A collection of matters.
*PacerProClient::MattersApi* | [**matters_get_one**](docs/MattersApi.md#matters_get_one) | **GET** /matters/{matterId} | A single matter.


## Documentation for Models

 - [PacerProClient::Attorney](docs/Attorney.md)
 - [PacerProClient::Empty](docs/Empty.md)
 - [PacerProClient::Error](docs/Error.md)
 - [PacerProClient::Firm](docs/Firm.md)
 - [PacerProClient::Matter](docs/Matter.md)
 - [PacerProClient::ModelCase](docs/ModelCase.md)
 - [PacerProClient::Party](docs/Party.md)
 - [PacerProClient::Session](docs/Session.md)
 - [PacerProClient::User](docs/User.md)


## Documentation for Authorization


### Bearer

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

