environment = "dev"

resource_group_name = "RG-CMFG-D01-commoninfra"

location = "eastus2"

vnet_resource_group_name = "RG-CMFG-NC1-D01-ITNetwork"

virtual_network_name = "VNet-CMFG-EA2-NP1-PS-10.202.64.0_20"

key_vault_resource_group_name = "RG-CMFG-D01-commoninfra"

key_vault_name = "kv-ps-np-certs"

application_gateway_name = "Preneed-APGW-NP"

frontend_subnet_name = "Subnet-CMFG-EA2-NP1-PS-DmzAppGateways"

backend_subnet_name = "Subnet-CMFG-EA2-NP1-PS-DmzServers"

application_gateway_sku_name = "WAF_v2"

application_gateway_sku_tier = "WAF_v2"

application_gateway_sku_capacity = 2

http_listeners = [
  
# Listeners for Vue
  {
    name                 = "vue-ho-migration2-http-frontend-listener"
    host_names           = ["vue-ho-migration2-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-ho-migration2-https-frontend-listener"
    host_names           = ["vue-ho-migration2-us.trustage.com"]
    ssl_certificate_name = "vue-ho-migration2-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-port-migration2-http-frontend-listener"
    host_names           = ["vue-port-migration2-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-port-migration2-https-frontend-listener"
    host_names           = ["vue-port-migration2-us.trustage.com"]
    ssl_certificate_name = "vue-port-migration2-us-trustage-cert"
    require_sni          = true
  },
    {
    name                 = "vue-app-migration2-http-frontend-listener"
    host_names           = ["vue-app-migration2-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-app-migration2-https-frontend-listener"
    host_names           = ["vue-app-migration2-us.trustage.com"]
    ssl_certificate_name = "vue-app-migration2-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-port-dev-us-trustage-https-frontend-listener"
    host_names           = ["vue-port-dev-us.trustage.com"]
    ssl_certificate_name = "vue-port-dev-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-port-dev-us-trustage-http-frontend-listener"
    host_names           = ["vue-port-dev-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-app-dev-us-trustage-https-frontend-listener"
    host_names           = ["vue-app-dev-us.trustage.com"]
    ssl_certificate_name = "vue-app-dev-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-app-dev-us-trustage-http-frontend-listener"
    host_names           = ["vue-app-dev-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-ho-dev-us-trustage-https-frontend-listener"
    host_names           = ["vue-ho-dev-us.trustage.com"]
    ssl_certificate_name = "vue-ho-dev-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-ho-dev-us-trustage-http-frontend-listener"
    host_names           = ["vue-ho-dev-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-state-dev-us-trustage-https-frontend-listener"
    host_names           = ["vue-state-dev-us.trustage.com"]
    ssl_certificate_name = "vue-state-dev-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-state-dev-us-trustage-http-frontend-listener"
    host_names           = ["vue-state-dev-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "alis-dev-trustage-https-frontend-listener"
    host_names           = ["alis-dev.trustage.com"]
    ssl_certificate_name = "alis-dev-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "alis-dev-trustage-http-frontend-listener"
    host_names           = ["alis-dev.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  # HTTP/HTTPS listeners for rapidonline/eas/pas/charonframework
  {
    name                 = "rapidonline-http-frontend-listener"
    host_names           = ["rapidonline-dev.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "rapidonline-https-frontend-listener"
    ssl_certificate_name = "rapidonline-dev-trustage-cert"
    host_names           = ["rapidonline-dev.trustage.com"]
    require_sni          = true
  },
  {
    name                 = "eas-pas-http-frontend-listener"
    host_names           = ["sales-dev.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "eas-pas-https-frontend-listener"
    ssl_certificate_name = "sales-dev-trustage-cert"
    host_names           = ["sales-dev.trustage.com"]
    require_sni          = true
  },
  {
    name                 = "charonframework-https-frontend-listener"
    host_names           = ["charonframework-dev.trustage.com"]
    ssl_certificate_name = "charonframework-dev-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "charonframework-http-frontend-listener"
    host_names           = ["charonframework-dev.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-ho-test-us-trustage-https-frontend-listener"
    host_names           = ["vue-ho-test-us.trustage.com"]
    ssl_certificate_name = "vue-ho-test-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-ho-test-us-trustage-http-frontend-listener"
    host_names           = ["vue-ho-test-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-port-test-us-trustage-https-frontend-listener"
    host_names           = ["vue-port-test-us.trustage.com"]
    ssl_certificate_name = "vue-port-test-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-port-test-us-trustage-http-frontend-listener"
    host_names           = ["vue-port-test-us-trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-app-test-us-trustage-https-frontend-listener"
    host_names           = ["vue-app-test-us.trustage.com"]
    ssl_certificate_name = "vue-app-test-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-app-test-us-trustage-http-frontend-listener"
    host_names           = ["vue-app-test-us-trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  }

]

backend_address_pools = [
  {
    name         = "vue-migration2-backend-servers"
    ip_addresses = ["10.202.67.7"]
    fqdns        = null
  },
  {
    name         = "rapidonline-backend-servers"
    ip_addresses = ["10.202.67.4"]
    fqdns        = null
  },
  {
    name         = "eas-backend-servers"
    ip_addresses = ["10.202.67.6"]
    fqdns        = null
  },
  {
    name         = "charonframework-backend-servers"
    ip_addresses = ["10.202.67.11"]
    fqdns        = null
  },
  {
    name         = "vue-port-dev-us-trustage-backend-servers"
    ip_addresses = ["10.202.67.10"]
    fqdns        = null
  },
  {
    name         = "vue-app-dev-us-trustage-backend-servers"
    ip_addresses = ["10.202.67.16"]
    fqdns        = null
  },
  {
    name         = "vue-ho-dev-us-trustage-backend-servers"
    ip_addresses = ["10.202.67.8"]
    fqdns        = null
  },
  {
    name         = "vue-state-dev-us-trustage-backend-servers"
    ip_addresses = ["10.202.67.8"]
    fqdns        = null
  },
  {
    name         = "alis-dev-trustage-backend-servers"
    ip_addresses = ["10.202.67.17","10.202.67.18"]
    fqdns        = null
  },
  {
    name         = "vue-ho-test-us-trustage-backend-servers"
    ip_addresses = ["10.202.67.19","10.202.67.21"]
    fqdns        = null
  },
  {
    name         = "vue-port-test-us-trustage-backend-servers"
    ip_addresses = ["10.202.67.20","10.202.67.25"]
    fqdns        = null
  },
  {
    name         = "vue-app-test-us-trustage-backend-servers"
    ip_addresses = ["10.202.67.28","10.202.67.27"]
    fqdns        = null
  }

]

backend_http_settings = [
   {
    name                         = "vue-ho-migration2-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-ho-migration2-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "vue-ho-migration2-health-probe"
  },
  {
    name                         = "vue-port-migration2-backend-http-settings"
    path                         = "/"
    port                         = 8443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-port-migration2-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "vue-port-migration2-health-probe"
  },
  {
    name                         = "vue-app-migration2-backend-http-settings"
    path                         = "/"
    port                         = 9443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-app-migration2-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "vue-app-migration2-health-probe"
  },
  {
    name                         = "rapidonline-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "rapidonline-dev.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "rapidonline-health-probe"
  },
  {
    name                         = "eas-backend-http-settings"
    path                         = ""
    port                         = 9443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "sales-dev.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "eas-health-probe"
  },
  {
    name                         = "charonframework-backend-http-settings"
    path                         = ""
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "charonframework-dev.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "charonframework-health-probe"
  },
  {
    name                         = "vue-port-dev-us-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-port-dev-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "vue-port-dev-us-trustage-health-probe"
  },
  {
    name                         = "vue-app-dev-us-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-app-dev-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "vue-app-dev-us-trustage-health-probe"
  },
  {
    name                         = "vue-ho-dev-us-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-ho-dev-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "vue-ho-dev-us-trustage-health-probe"
  },
  {
    name                         = "vue-state-dev-us-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-state-dev-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "vue-state-dev-us-trustage-health-probe"
  },
  {
    name                         = "alis-dev-trustage-backend-http-settings"
    path                         = "/"
    port                         = 8080
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "alis-dev.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "alis-dev-trustage-health-probe"
  },
  {
    name                         = "vue-ho-test-us-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-ho-test-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "vue-ho-test-us-trustage-health-probe"
  },
  {
    name                         = "vue-port-test-us-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-port-test-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "vue-port-test-us-trustage-health-probe"
  },
  {
    name                         = "vue-app-test-us-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-app-test-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "vue-app-test-us-trustage-health-probe"
  }    
]

probes = [
  {
    name                = "vue-ho-migration2-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-ho-migration2-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-port-migration2-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 30
    timeout             = 30
    unhealthy_threshold = 3
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-port-migration2-us.trustage.com"
    port                = 8443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-app-migration2-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 30
    timeout             = 30
    unhealthy_threshold = 3
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-app-migration2-us.trustage.com"
    port                = 9443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "rapidonline-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "rapidonline-dev.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "eas-health-probe"
    path                = "/SampleWebApp/index.html"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "sales-dev.trustage.com"
    port                = 9443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "charonframework-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "charonframework-dev.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-port-dev-us-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-port-dev-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-app-dev-us-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 30
    timeout             = 30
    unhealthy_threshold = 3
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-app-dev-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-ho-dev-us-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-ho-dev-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-state-dev-us-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-state-dev-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "alis-dev-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "alis-dev.trustage.com"
    port                = 8080
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-ho-test-us-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-ho-test-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-port-test-us-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-port-test-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-app-test-us-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-app-test-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  }
]

redirect_configurations = [
  {
    name                 = "vue-ho-migration2-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-ho-migration2-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-port-migration2-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-port-migration2-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-app-migration2-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-app-migration2-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "rapidonline-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "rapidonline-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "eas-pas-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "eas-pas-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "charonframework-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "charonframework-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-port-dev-us-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-port-dev-us-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-app-dev-us-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-app-dev-us-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-ho-dev-us-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-ho-dev-us-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-state-dev-us-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-state-dev-us-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "alis-dev-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "alis-dev-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-ho-test-us-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-ho-test-us-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-port-test-us-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-port-test-us-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-app-test-us-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-app-test-us-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  }
]

basic_request_routing_rules = [
  {
    name                       = "rapidonline-http-basic-request-routing-rule"
    http_listener_name         = "rapidonline-https-frontend-listener"
    backend_address_pool_name  = "rapidonline-backend-servers"
    backend_http_settings_name = "rapidonline-backend-http-settings"
    priority                   = 20
  },
  {
    name                       = "eas-pas-http-basic-requets-routing-rule"
    http_listener_name         = "eas-pas-https-frontend-listener"
    backend_address_pool_name  = "eas-backend-servers"
    backend_http_settings_name = "eas-backend-http-settings"
    priority                   = 40
  },
  {
    name                       = "vue-ho-migration2-http-basic-request-routing-rule"
    http_listener_name         = "vue-ho-migration2-https-frontend-listener"
    backend_address_pool_name  = "vue-migration2-backend-servers"
    backend_http_settings_name = "vue-ho-migration2-backend-http-settings"
    priority                   = 100
  },
  {
    name                       = "vue-port-migration2-http-basic-request-routing-rule"
    http_listener_name         = "vue-port-migration2-https-frontend-listener"
    backend_address_pool_name  = "vue-migration2-backend-servers"
    backend_http_settings_name = "vue-port-migration2-backend-http-settings"
    priority                   = 110
  },
  {
    name                       = "vue-app-migration2-http-basic-request-routing-rule"
    http_listener_name         = "vue-app-migration2-https-frontend-listener"
    backend_address_pool_name  = "vue-migration2-backend-servers"
    backend_http_settings_name = "vue-app-migration2-backend-http-settings"
    priority                   = 120
  },
  {
    name                       = "charonframework-http-basic-request-routing-rule"
    http_listener_name         = "charonframework-https-frontend-listener"
    backend_address_pool_name  = "charonframework-backend-servers"
    backend_http_settings_name = "charonframework-backend-http-settings"
    priority                   = 130
  },
  {
    name                       = "vue-port-dev-us-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-port-dev-us-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-port-dev-us-trustage-backend-servers"
    backend_http_settings_name = "vue-port-dev-us-trustage-backend-http-settings"
    priority                   = 140
  },
  {
    name                       = "vue-app-dev-us-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-app-dev-us-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-app-dev-us-trustage-backend-servers"
    backend_http_settings_name = "vue-app-dev-us-trustage-backend-http-settings"
    priority                   = 150
  },
  {
    name                       = "vue-ho-dev-us-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-ho-dev-us-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-ho-dev-us-trustage-backend-servers"
    backend_http_settings_name = "vue-ho-dev-us-trustage-backend-http-settings"
    priority                   = 160
  },
  {
    name                       = "vue-state-dev-us-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-state-dev-us-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-state-dev-us-trustage-backend-servers"
    backend_http_settings_name = "vue-state-dev-us-trustage-backend-http-settings"
    priority                   = 190
  },
  {
    name                       = "alis-dev-trustage-http-basic-request-routing-rule"
    http_listener_name         = "alis-dev-trustage-https-frontend-listener"
    backend_address_pool_name  = "alis-dev-trustage-backend-servers"
    backend_http_settings_name = "alis-dev-trustage-backend-http-settings"
    priority                   = 210
  },
  {
    name                       = "vue-ho-test-us-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-ho-test-us-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-ho-test-us-trustage-backend-servers"
    backend_http_settings_name = "vue-ho-test-us-trustage-backend-http-settings"
    priority                   = 230
  },
  {
    name                       = "vue-port-test-us-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-port-test-us-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-port-test-us-trustage-backend-servers"
    backend_http_settings_name = "vue-port-test-us-trustage-backend-http-settings"
    priority                   = 250
  },
  {
    name                       = "vue-app-test-us-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-app-test-us-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-app-test-us-trustage-backend-servers"
    backend_http_settings_name = "vue-app-test-us-trustage-backend-http-settings"
    priority                   = 270
  }
]

redirect_request_routing_rules = [
  {
    name                        = "rapidonline-redirect-config-https"
    http_listener_name          = "rapidonline-http-frontend-listener"
    redirect_configuration_name = "rapidonline-httptohttps-rule"
    priority                   = 10
  },
  {
    name                        = "eas-pas-redirect-config-https"
    http_listener_name          = "eas-pas-http-frontend-listener"
    redirect_configuration_name = "eas-pas-httptohttps-rule"
    priority                   = 30
  },
  {
    name                        = "vue-ho-migration2-redirect-config-https"
    http_listener_name          = "vue-ho-migration2-http-frontend-listener"
    redirect_configuration_name = "vue-ho-migration2-httptohttps-rule"
    priority                   = 50
  },
  {
    name                        = "vue-port-migration2-redirect-config-https"
    http_listener_name          = "vue-port-migration2-http-frontend-listener"
    redirect_configuration_name = "vue-port-migration2-httptohttps-rule"
    priority                   = 60
  },
  {
    name                        = "vue-app-migration2-redirect-config-https"
    http_listener_name          = "vue-app-migration2-http-frontend-listener"
    redirect_configuration_name = "vue-app-migration2-httptohttps-rule"
    priority                   = 70
  },
  {
    name                        = "charonframework-redirect-config-https"
    http_listener_name          = "charonframework-http-frontend-listener"
    redirect_configuration_name = "charonframework-httptohttps-rule"
    priority                   = 80
  },
  {
    name                        = "vue-port-dev-us-trustage-redirect-config-https"
    http_listener_name          = "vue-port-dev-us-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-port-dev-us-trustage-httptohttps-rule"
    priority                   = 90
  },
  {
    name                        = "vue-app-dev-us-trustage-redirect-config-https"
    http_listener_name          = "vue-app-dev-us-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-app-dev-us-trustage-httptohttps-rule"
    priority                   = 170
  },
  {
    name                        = "vue-ho-dev-us-trustage-redirect-config-https"
    http_listener_name          = "vue-ho-dev-us-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-ho-dev-us-trustage-httptohttps-rule"
    priority                   = 180
  },
  {
    name                        = "vue-state-dev-us-trustage-redirect-config-https"
    http_listener_name          = "vue-state-dev-us-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-state-dev-us-trustage-httptohttps-rule"
    priority                   = 200
  },
  {
    name                        = "alis-dev-trustage-redirect-config-https"
    http_listener_name          = "alis-dev-trustage-http-frontend-listener"
    redirect_configuration_name = "alis-dev-trustage-httptohttps-rule"
    priority                   = 220
  },
  {
    name                        = "vue-ho-test-us-trustage-redirect-config-https"
    http_listener_name          = "vue-ho-test-us-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-ho-test-us-trustage-httptohttps-rule"
    priority                   = 240
  },
  {
    name                        = "vue-port-test-us-trustage-redirect-config-https"
    http_listener_name          = "vue-port-test-us-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-port-test-us-trustage-httptohttps-rule"
    priority                   = 260
  },
  {
    name                        = "vue-app-test-us-trustage-redirect-config-https"
    http_listener_name          = "vue-app-test-us-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-app-test-us-trustage-httptohttps-rule"
    priority                   = 280
  }
]

path_based_request_routing_rules = []

key_vault_ssl_certificates = [
  "vue-ho-migration2-us-trustage-cert", 
  "vue-port-migration2-us-trustage-cert", 
  "vue-app-migration2-us-trustage-cert",
  "rapidonline-dev-trustage-cert",
  "sales-dev-trustage-cert",
  "charonframework-dev-trustage-cert",
  "vue-port-dev-us-trustage-cert",
  "vue-app-dev-us-trustage-cert",
  "vue-ho-dev-us-trustage-cert",
  "vue-state-dev-us-trustage-cert",
  "alis-dev-trustage-cert",
  "vue-ho-test-us-trustage-cert",
  "vue-port-test-us-trustage-cert",
  "vue-app-test-us-trustage-cert"
] 

private_endpoints_subnet_name  = "Subnet-CMFG-EA2-NP1-PS-PrivateEndpoints"

stg_acct_common_name = "sapreneedcommondev"

managed_identity_name = "MSI-Application-Gateway-D01"

trxdirector_waf_ips = ["157.55.160.165/32","52.173.246.220/32","198.134.2.2/32"]