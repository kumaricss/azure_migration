environment = "demo"

resource_group_name = "RG-CMFG-M01-commoninfra"

location = "eastus2"

vnet_resource_group_name = "RG-CMFG-NC1-D01-ITNetwork"

virtual_network_name = "VNet-CMFG-EA2-NP1-PS-10.202.64.0_20"

key_vault_resource_group_name = "RG-CMFG-M01-commoninfra"

key_vault_name = "kv-ps-np-demo-certs"

application_gateway_name = "Preneed-APGW-NP"

frontend_subnet_name = "Subnet-CMFG-EA2-NP1-PS-DmzAppGateways"

backend_subnet_name = "Subnet-CMFG-EA2-NP1-PS-DmzServers"

application_gateway_sku_name = "WAF_v2"

application_gateway_sku_tier = "WAF_v2"

application_gateway_sku_capacity = 2


http_listeners = [

  {
    name                 = "vue-ho-hotfix-http-frontend-listener"
    host_names           = ["vue-ho-hotfix-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-ho-hotfix-https-frontend-listener"
    host_names           = ["vue-ho-hotfix-us.trustage.com"]
    ssl_certificate_name = "vue-ho-hotfix-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-port-hotfix-http-frontend-listener"
    host_names           = ["vue-port-hotfix-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-port-hotfix-https-frontend-listener"
    host_names           = ["vue-port-hotfix-us.trustage.com"]
    ssl_certificate_name = "vue-port-hotfix-us-trustage-cert"
    require_sni          = true
  },
    {
    name                 = "vue-app-hotfix-http-frontend-listener"
    host_names           = ["vue-app-hotfix-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-app-hotfix-https-frontend-listener"
    host_names           = ["vue-app-hotfix-us.trustage.com"]
    ssl_certificate_name = "vue-app-hotfix-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "rapidonline-http-frontend-listener"
    host_names           = ["rapidonline-demo.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "rapidonline-https-frontend-listener"
    ssl_certificate_name = "rapidonline-demo-trustage-cert"
    host_names           = ["rapidonline-demo.trustage.com"]
    require_sni          = true
  },
  {
    name                 = "eas-pas-http-frontend-listener"
    host_names           = ["sales-demo.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "eas-pas-https-frontend-listener"
    ssl_certificate_name = "sales-demo-trustage-cert"
    host_names           = ["sales-demo.trustage.com"]
    require_sni          = true
  },
  {
    name                 = "charonframework-https-frontend-listener"
    host_names           = ["charonframework-demo.trustage.com"]
    ssl_certificate_name = "charonframework-demo-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "charonframework-http-frontend-listener"
    host_names           = ["charonframework-demo.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-port-demo-us-trustage-https-frontend-listener"
    host_names           = ["vue-port-demo-us.trustage.com"]
    ssl_certificate_name = "vue-port-demo-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-port-demo-us-trustage-http-frontend-listener"
    host_names           = ["vue-port-demo-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-ho-demo-us-trustage-https-frontend-listener"
    host_names           = ["vue-ho-demo-us.trustage.com"]
    ssl_certificate_name = "vue-ho-demo-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-ho-demo-us-trustage-http-frontend-listener"
    host_names           = ["vue-ho-demo-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-app-demo-us-trustage-https-frontend-listener"
    host_names           = ["vue-app-demo-us.trustage.com"]
    ssl_certificate_name = "vue-app-demo-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-app-demo-us-trustage-http-frontend-listener"
    host_names           = ["vue-app-demo-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-state-demo-us-trustage-https-frontend-listener"
    host_names           = ["vue-state-demo-us.trustage.com"]
    ssl_certificate_name = "vue-state-demo-us-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-state-demo-us-trustage-http-frontend-listener"
    host_names           = ["vue-state-demo-us.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "alis-demo-trustage-https-frontend-listener"
    host_names           = ["alis-demo.trustage.com"]
    ssl_certificate_name = "alis-demo-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "alis-demo-trustage-http-frontend-listener"
    host_names           = ["alis-demo.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "partnerportal-demo-trustage-https-frontend-listener"
    host_names           = ["partnerportal-demo.trustage.com"]
    ssl_certificate_name = "partnerportal-demo-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "partnerportal-demo-trustage-http-frontend-listener"
    host_names           = ["partnerportal-demo.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  }
]

backend_address_pools = [
  {
    name         = "vue-hotfix-backend-servers"
    ip_addresses = ["10.202.67.15"]
    fqdns        = null
  },
  {
    name         = "rapidonline-backend-servers"
    ip_addresses = ["10.202.67.9"]
    fqdns        = null
  },
  {
    name         = "eas-backend-servers"
    ip_addresses = ["10.202.67.12","10.202.67.14"]
    fqdns        = null
  },
  {
    name         = "charonframework-backend-servers"
    ip_addresses = ["10.202.67.13"]
    fqdns        = null
  },
  {
    name         = "vue-port-demo-us-trustage-backend-servers"
    ip_addresses = ["10.202.67.29","10.202.67.34"]
    fqdns        = null
  },
  {
    name         = "vue-ho-demo-us-trustage-backend-servers"
    ip_addresses = ["10.202.67.24","10.202.67.22"]
    fqdns        = null
  },
  {
    name         = "vue-app-demo-us-trustage-backend-servers"
    ip_addresses = ["10.202.67.26","10.202.67.23"]
    fqdns        = null
  },
  {
    name         = "vue-state-demo-us-trustage-backend-servers"
    ip_addresses = ["10.202.67.24"]
    fqdns        = null
  },
  {
    name         = "alis-demo-trustage-backend-servers"
    ip_addresses = ["10.202.67.31","10.202.67.32","10.202.67.33"]
    fqdns        = null
  },
  {
    name         = "partnerportal-demo-trustage-backend-servers"
    ip_addresses = ["10.202.67.5"]
    fqdns        = null
  }
]

backend_http_settings = [
  {
    name                         = "vue-ho-hotfix-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-ho-hotfix-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "vue-ho-hotfix-health-probe"
  },
  {
    name                         = "vue-port-hotfix-backend-http-settings"
    path                         = "/"
    port                         = 8443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-port-hotfix-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "vue-port-hotfix-health-probe"
  },
  {
    name                         = "vue-app-hotfix-backend-http-settings"
    path                         = "/"
    port                         = 9443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-app-hotfix-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 60
    probe_name                   = "vue-app-hotfix-health-probe"
  },
  {
    name                         = "rapidonline-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "rapidonline-demo.trustage.com"
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
    host_name                    = "sales-demo.trustage.com"
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
    host_name                    = "charonframework-demo.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "charonframework-health-probe"
  },
  {
    name                         = "vue-port-demo-us-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-port-demo-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "vue-port-demo-us-trustage-health-probe"
  },
  {
    name                         = "vue-ho-demo-us-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-ho-demo-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "vue-ho-demo-us-trustage-health-probe"
  },
  {
    name                         = "vue-app-demo-us-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-app-demo-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "vue-app-demo-us-trustage-health-probe"
  },
  {
    name                         = "vue-state-demo-us-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-state-demo-us.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "vue-state-demo-us-trustage-health-probe"
  },
  {
    name                         = "alis-demo-trustage-backend-http-settings"
    path                         = "/"
    port                         = 8080
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "alis-demo.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "alis-demo-trustage-health-probe"
  },
  {
    name                         = "partnerportal-demo-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "partnerportal-demo.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "partnerportal-demo-trustage-health-probe"
  }
]

probes = [
  {
    name                = "vue-ho-hotfix-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-ho-hotfix-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-port-hotfix-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 30
    timeout             = 30
    unhealthy_threshold = 3
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-port-hotfix-us.trustage.com"
    port                = 8443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-app-hotfix-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 30
    timeout             = 30
    unhealthy_threshold = 3
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-app-hotfix-us.trustage.com"
    port                = 9443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "rapidonline-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 30
    timeout             = 30
    unhealthy_threshold = 3
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "rapidonline-demo.trustage.com"
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
    host                = "sales-demo.trustage.com"
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
    host                = "charonframework-demo.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-port-demo-us-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-port-demo-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-ho-demo-us-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-ho-demo-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-app-demo-us-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-app-demo-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-state-demo-us-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-state-demo-us.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "alis-demo-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "alis-demo.trustage.com"
    port                = 8080
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "partnerportal-demo-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-499"]
    host                = "partnerportal-demo.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  }
]

redirect_configurations = [
  {
    name                 = "vue-ho-hotfix-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-ho-hotfix-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-port-hotfix-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-port-hotfix-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-app-hotfix-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-app-hotfix-https-frontend-listener"
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
    name                 = "vue-port-demo-us-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-port-demo-us-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-ho-demo-us-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-ho-demo-us-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-app-demo-us-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-app-demo-us-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-state-demo-us-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-state-demo-us-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "alis-demo-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "alis-demo-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "partnerportal-demo-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "partnerportal-demo-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  }
]

basic_request_routing_rules = [
  {
    name                       = "vue-ho-hotfix-http-basic-request-routing-rule"
    http_listener_name         = "vue-ho-hotfix-https-frontend-listener"
    backend_address_pool_name  = "vue-hotfix-backend-servers"
    backend_http_settings_name = "vue-ho-hotfix-backend-http-settings"
    priority                   = 100
  },
  {
    name                       = "vue-port-hotfix-http-basic-request-routing-rule"
    http_listener_name         = "vue-port-hotfix-https-frontend-listener"
    backend_address_pool_name  = "vue-hotfix-backend-servers"
    backend_http_settings_name = "vue-port-hotfix-backend-http-settings"
    priority                   = 110
  },
  {
    name                       = "vue-app-hotfix-http-basic-request-routing-rule"
    http_listener_name         = "vue-app-hotfix-https-frontend-listener"
    backend_address_pool_name  = "vue-hotfix-backend-servers"
    backend_http_settings_name = "vue-app-hotfix-backend-http-settings"
    priority                   = 120
  },
  {
    name                       = "rapidonline-http-basic-request-routing-rule"
    http_listener_name         = "rapidonline-https-frontend-listener"
    backend_address_pool_name  = "rapidonline-backend-servers"
    backend_http_settings_name = "rapidonline-backend-http-settings"
    priority                   = 130
  },
  {
    name                       = "eas-pas-http-basic-requets-routing-rule"
    http_listener_name         = "eas-pas-https-frontend-listener"
    backend_address_pool_name  = "eas-backend-servers"
    backend_http_settings_name = "eas-backend-http-settings"
    priority                   = 140
  },
  {
    name                       = "charonframework-http-basic-request-routing-rule"
    http_listener_name         = "charonframework-https-frontend-listener"
    backend_address_pool_name  = "charonframework-backend-servers"
    backend_http_settings_name = "charonframework-backend-http-settings"
    priority                   = 150
  },
  {
    name                       = "vue-port-demo-us-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-port-demo-us-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-port-demo-us-trustage-backend-servers"
    backend_http_settings_name = "vue-port-demo-us-trustage-backend-http-settings"
    priority                   = 160
  },
  {
    name                       = "vue-ho-demo-us-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-ho-demo-us-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-ho-demo-us-trustage-backend-servers"
    backend_http_settings_name = "vue-ho-demo-us-trustage-backend-http-settings"
    priority                   = 170
  },
  {
    name                       = "vue-app-demo-us-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-app-demo-us-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-app-demo-us-trustage-backend-servers"
    backend_http_settings_name = "vue-app-demo-us-trustage-backend-http-settings"
    priority                   = 180
  },
  {
    name                       = "vue-state-demo-us-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-state-demo-us-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-state-demo-us-trustage-backend-servers"
    backend_http_settings_name = "vue-state-demo-us-trustage-backend-http-settings"
    priority                   = 190
  },
  {
    name                       = "alis-demo-trustage-http-basic-request-routing-rule"
    http_listener_name         = "alis-demo-trustage-https-frontend-listener"
    backend_address_pool_name  = "alis-demo-trustage-backend-servers"
    backend_http_settings_name = "alis-demo-trustage-backend-http-settings"
    priority                   = 210
  },
  {
    name                       = "partnerportal-demo-trustage-http-basic-request-routing-rule"
    http_listener_name         = "partnerportal-demo-trustage-https-frontend-listener"
    backend_address_pool_name  = "partnerportal-demo-trustage-backend-servers"
    backend_http_settings_name = "partnerportal-demo-trustage-backend-http-settings"
    priority                   = 230
  }
]

redirect_request_routing_rules = [
  {
    name                        = "vue-ho-hotfix-redirect-config-https"
    http_listener_name          = "vue-ho-hotfix-http-frontend-listener"
    redirect_configuration_name = "vue-ho-hotfix-httptohttps-rule"
    priority                   = 10
  },
  {
    name                        = "vue-port-hotfix-redirect-config-https"
    http_listener_name          = "vue-port-hotfix-http-frontend-listener"
    redirect_configuration_name = "vue-port-hotfix-httptohttps-rule"
    priority                   = 20
  },
  {
    name                        = "vue-app-hotfix-redirect-config-https"
    http_listener_name          = "vue-app-hotfix-http-frontend-listener"
    redirect_configuration_name = "vue-app-hotfix-httptohttps-rule"
    priority                   = 30
  },
  {
    name                        = "rapidonline-redirect-config-https"
    http_listener_name          = "rapidonline-http-frontend-listener"
    redirect_configuration_name = "rapidonline-httptohttps-rule"
    priority                   = 40
  },
  {
    name                        = "eas-pas-redirect-config-https"
    http_listener_name          = "eas-pas-http-frontend-listener"
    redirect_configuration_name = "eas-pas-httptohttps-rule"
    priority                   = 50
  },
  {
    name                        = "charonframework-redirect-config-https"
    http_listener_name          = "charonframework-http-frontend-listener"
    redirect_configuration_name = "charonframework-httptohttps-rule"
    priority                   = 60
  },
  {
    name                        = "vue-port-demo-us-trustage-redirect-config-https"
    http_listener_name          = "vue-port-demo-us-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-port-demo-us-trustage-httptohttps-rule"
    priority                   = 70
  },
  {
    name                        = "vue-ho-demo-us-trustage-redirect-config-https"
    http_listener_name          = "vue-ho-demo-us-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-ho-demo-us-trustage-httptohttps-rule"
    priority                   = 80
  },
  {
    name                        = "vue-app-demo-us-trustage-redirect-config-https"
    http_listener_name          = "vue-app-demo-us-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-app-demo-us-trustage-httptohttps-rule"
    priority                   = 90
  },
  {
    name                        = "vue-state-demo-us-trustage-redirect-config-https"
    http_listener_name          = "vue-state-demo-us-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-state-demo-us-trustage-httptohttps-rule"
    priority                   = 200
  },
  {
    name                        = "alis-demo-trustage-redirect-config-https"
    http_listener_name          = "alis-demo-trustage-http-frontend-listener"
    redirect_configuration_name = "alis-demo-trustage-httptohttps-rule"
    priority                   = 220
  },
  {
    name                        = "partnerportal-demo-trustage-redirect-config-https"
    http_listener_name          = "partnerportal-demo-trustage-http-frontend-listener"
    redirect_configuration_name = "partnerportal-demo-trustage-httptohttps-rule"
    priority                   = 240
  }
]

key_vault_ssl_certificates = [
  "vue-ho-hotfix-us-trustage-cert", 
  "vue-port-hotfix-us-trustage-cert", 
  "vue-app-hotfix-us-trustage-cert",
  "rapidonline-demo-trustage-cert",
  "sales-demo-trustage-cert",
  "charonframework-demo-trustage-cert",
  "vue-port-demo-us-trustage-cert",
  "vue-ho-demo-us-trustage-cert",
  "vue-app-demo-us-trustage-cert",
  "vue-state-demo-us-trustage-cert",
  "alis-demo-trustage-cert",
  "partnerportal-demo-trustage-cert"
] 

private_endpoints_subnet_name  = "Subnet-CMFG-EA2-NP1-PS-PrivateEndpoints"

stg_acct_common_name = "sapreneedcommondemo"

managed_identity_name = "MSI-Application-Gateway-M01"

trxdirector_waf_ips = ["23.100.79.154/32","168.61.220.200/32","40.79.22.44/32","198.134.2.2/32"]