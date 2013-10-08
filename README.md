#Aria Systems Ruby SDK

The Aria Systems Ruby SDK is a collection of classes that make it easy to use the [Aria Systems](http://www.ariasystems.com/) SOAP web services in your Ruby or Ruby on Rails application. The Ruby SDK works with Aria Systems Core APIs.

## Installation

    gem install aria_api

For Rails Apps. Just add this to Gemfile.

    gem "aria_api"

### Configuration

First you'll need to define your credentials:

    AriaApi::Configuration.auth_key = "the-key"
    AriaApi::Configuration.client_no = "the-client"
    AriaApi::Configuration.url = "https://secure.future.stage.ariasystems.net/api/ws/api_ws_class_dispatcher.php"

In Rails. You could define specific configuration for each environment.

There's also a parameter to define the version of the Aria API you want to use. Default is 5.15

    AriaApi::Configuration.api_version = "5.16"

## Usage

The Aria Systems Ruby SDK supports the Cora API services available on [Aria Systems Developer Central](http://developer.ariasystems.net).

Just call the service name as an AriaApi method, the options are the same as the specified in the API docs, except the client_no and auth_key as they were set up in the configuration.

    AriaApi.get_country_from_ip(ip_address: "207.97.227.239")
    # { "country_code" => "US", "country_name" => "United States", "error_code" => 0, "error_msg" => "OK" }

##More Information

For more information check out [Aria Systems Developer Central](http://developer.ariasystems.net) for more examples, details, and support on [Aria Systems](http://www.ariasystems.com/) services and features.
