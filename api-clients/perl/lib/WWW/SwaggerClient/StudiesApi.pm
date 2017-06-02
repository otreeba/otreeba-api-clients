=begin comment

Otreeba Open Cannabis API

This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).

OpenAPI spec version: 1.0.0
Contact: api@otreeba.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::StudiesApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# get_studies
#
# Get a list of all current studies.
# 
# @param int $page Page to be returned. (optional)
# @param int $count The number of items to return. Default 10. Max 50. (optional, default to 10)
# @param string $sort How to sort the items. (optional, default to -createdAt)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Page to be returned.',
        required => '0',
    },
    'count' => {
        data_type => 'int',
        description => 'The number of items to return. Default 10. Max 50.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'How to sort the items.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_studies' } = { 
    	summary => 'Get a list of all current studies.',
        params => $params,
        returns => 'InlineResponse20012',
        };
}
# @return InlineResponse20012
#
sub get_studies {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/studies';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'count'}) {
        $query_params->{'count'} = $self->{api_client}->to_query_value($args{'count'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20012', $response);
    return $_response_object;
}

#
# get_studies_by_condition
#
# Get a list of all current studies for a given condition.
# 
# @param string $condition_slug Slug of the condition to return studies for. (required)
# @param int $page Page to be returned. (optional)
# @param int $count The number of items to return. Default 10. Max 50. (optional, default to 10)
# @param string $sort How to sort the items. (optional, default to -year)
{
    my $params = {
    'condition_slug' => {
        data_type => 'string',
        description => 'Slug of the condition to return studies for.',
        required => '1',
    },
    'page' => {
        data_type => 'int',
        description => 'Page to be returned.',
        required => '0',
    },
    'count' => {
        data_type => 'int',
        description => 'The number of items to return. Default 10. Max 50.',
        required => '0',
    },
    'sort' => {
        data_type => 'string',
        description => 'How to sort the items.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_studies_by_condition' } = { 
    	summary => 'Get a list of all current studies for a given condition.',
        params => $params,
        returns => 'InlineResponse20013',
        };
}
# @return InlineResponse20013
#
sub get_studies_by_condition {
    my ($self, %args) = @_;

    # verify the required parameter 'condition_slug' is set
    unless (exists $args{'condition_slug'}) {
      croak("Missing the required parameter 'condition_slug' when calling get_studies_by_condition");
    }

    # parse inputs
    my $_resource_path = '/studies/conditions/{conditionSlug}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'count'}) {
        $query_params->{'count'} = $self->{api_client}->to_query_value($args{'count'});
    }

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    # path params
    if ( exists $args{'condition_slug'}) {
        my $_base_variable = "{" . "conditionSlug" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'condition_slug'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20013', $response);
    return $_response_object;
}

#
# get_studies_conditions
#
# Get a list of all current conditions for studies.
# 
# @param string $sort How to sort the items. (optional, default to name)
{
    my $params = {
    'sort' => {
        data_type => 'string',
        description => 'How to sort the items.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_studies_conditions' } = { 
    	summary => 'Get a list of all current conditions for studies.',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub get_studies_conditions {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/studies/conditions';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

#
# get_study_by_identifier
#
# Find study by DOI, PubMed ID, or slug.
# 
# @param string $identifier_type Type of identifier to for the study to return. (required)
# @param string $identifier Identifier for the study to return. (required)
{
    my $params = {
    'identifier_type' => {
        data_type => 'string',
        description => 'Type of identifier to for the study to return.',
        required => '1',
    },
    'identifier' => {
        data_type => 'string',
        description => 'Identifier for the study to return.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_study_by_identifier' } = { 
    	summary => 'Find study by DOI, PubMed ID, or slug.',
        params => $params,
        returns => 'Study',
        };
}
# @return Study
#
sub get_study_by_identifier {
    my ($self, %args) = @_;

    # verify the required parameter 'identifier_type' is set
    unless (exists $args{'identifier_type'}) {
      croak("Missing the required parameter 'identifier_type' when calling get_study_by_identifier");
    }

    # verify the required parameter 'identifier' is set
    unless (exists $args{'identifier'}) {
      croak("Missing the required parameter 'identifier' when calling get_study_by_identifier");
    }

    # parse inputs
    my $_resource_path = '/studies/{identifierType}/{identifier}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'identifier_type'}) {
        my $_base_variable = "{" . "identifierType" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'identifier_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'identifier'}) {
        my $_base_variable = "{" . "identifier" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'identifier'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Study', $response);
    return $_response_object;
}

1;
