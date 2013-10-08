#Aria Ruby SDK

The Aria Ruby SDK is a collection of classes that make it easy to use the [Aria](http://www.ariasystems.com/) SOAP web services in your Ruby or Ruby on Rails application.

## Installation

    gem install aria_api

For Rails Apps. Just add this to Gemfile.

    gem "aria_api"

### Configuration

First you'll need to define your credentials:

    AriaApi::Configuration.auth_key = "the-key"
    AriaApi::Configuration.client_no = "the-client"
    AriaApi::Configuration.url = "https://secure.future.stage.ariasystems.net/api/ws/api_ws_class_dispatcher.php"

In Rails you could define specific configuration for each environment.

There's also a parameter to define the version of the Aria API you want to use.

    AriaApi::Configuration.api_version = "6.13"

## Usage

The Aria Ruby SDK supports the Core API services available on [Aria Developer Central](http://developer.ariasystems.net).

Just call the service name as an AriaApi method, the options are the same as the specified in the API docs, except the client_no and auth_key as they were set up in the configuration. 
A successful API call will return a hash with error_code and error_msg keys with the values of 0 and OK.

    AriaApi.get_country_from_ip(ip_address: "207.97.227.239")
    # { "country_code" => "US", "country_name" => "United States", "error_code" => 0, "error_msg" => "OK" }

##More Information

Check out [Aria Developer Central](http://developer.ariasystems.net) for more examples, details, and support on [Aria](http://www.ariasystems.com/) services and features.
