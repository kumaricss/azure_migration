environment = "prod"

resource_group_name = "RG-CMFG-P01-commoninfra"

location = "eastus2"

vnet_resource_group_name = "RG-CMFG-NC1-P01-ITNetwork"

virtual_network_name = "VNet-CMFG-EA2-P01-PS-10.201.64.0_20"

key_vault_resource_group_name = "RG-CMFG-P01-commoninfra"

key_vault_name = "kv-ps-certs"

application_gateway_name = "Preneed-APGW-P"

frontend_subnet_name = "Subnet-CMFG-EA2-P01-PS-DmzAppGateways"

backend_subnet_name = "Subnet-CMFG-EA2-P01-PS-DmzServers"

application_gateway_sku_name = "WAF_v2"

application_gateway_sku_tier = "WAF_v2"

application_gateway_sku_capacity = 2


http_listeners = [
  # HTTP/HTTPS listeners for rapidonline
  {
    name                 = "rapidonline-http-frontend-listener"
    host_names           = ["rapidonline.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "rapidonline-https-frontend-listener"
    ssl_certificate_name = "rapidonline-trustage-cert"
    host_names           = ["rapidonline.trustage.com"]
    require_sni          = true
  },
  {
    name                 = "eas-pas-http-frontend-listener"
    host_names           = ["sales.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "eas-pas-https-frontend-listener"
    ssl_certificate_name = "sales-trustage-com-cert"
    host_names           = ["sales.trustage.com"]
    require_sni          = true
  },
  # Charon Servers
  {
    name                 = "charonframework-https-frontend-listener"
    host_names           = ["charonframework.trustage.com"]
    ssl_certificate_name = "charonframework-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "charonframework-http-frontend-listener"
    host_names           = ["charonframework.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "alis-trustage-https-frontend-listener"
    host_names           = ["alis.trustage.com"]
    ssl_certificate_name = "alis-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "alis-trustage-http-frontend-listener"
    host_names           = ["alis.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-port-trustage-https-frontend-listener"
    host_names           = ["vue-port.trustage.com"]
    ssl_certificate_name = "vue-port-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-port-trustage-http-frontend-listener"
    host_names           = ["vue-port.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  },
  {
    name                 = "vue-app-trustage-https-frontend-listener"
    host_names           = ["vue-app.trustage.com"]
    ssl_certificate_name = "vue-app-trustage-cert"
    require_sni          = true
  },
  {
    name                 = "vue-app-trustage-http-frontend-listener"
    host_names           = ["vue-app.trustage.com"]
    ssl_certificate_name = null
    require_sni          = false
  }
]

backend_address_pools = [
 {
    name         = "rapidonline-backend-servers"
    ip_addresses = ["10.201.67.4","10.201.67.5"]
    fqdns        = null
  },
  {
    name         = "eas-backend-servers"
    ip_addresses = ["10.201.67.6","10.201.67.8"]
    fqdns        = null
  },
  {
    name         = "charonframework-backend-servers"
    ip_addresses = ["10.201.67.7","10.201.67.11"]
    fqdns        = null
  },
  {
    name         = "alis-trustage-backend-servers"
    ip_addresses = ["10.201.67.18","10.201.67.19","10.201.67.20"]
    fqdns        = null
  },
  {
    name         = "vue-port-trustage-backend-servers"
    ip_addresses = ["10.201.67.15","10.201.67.17"]
    fqdns        = null
  },
  {
    name         = "vue-app-trustage-backend-servers"
    ip_addresses = ["10.201.67.16","10.201.67.12"]
    fqdns        = null
  }
]

backend_http_settings = [
  {
    name                         = "rapidonline-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "rapidonline.trustage.com"
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
    host_name                    = "sales.trustage.com"
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
    host_name                    = "charonframework.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "charonframework-health-probe"
  },
  {
    name                         = "alis-trustage-backend-http-settings"
    path                         = "/"
    port                         = 8080
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "alis.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "alis-trustage-health-probe"
  },
  {
    name                         = "vue-port-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-port.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "vue-port-trustage-health-probe"
  },
  {
    name                         = "vue-app-trustage-backend-http-settings"
    path                         = "/"
    port                         = 443
    protocol                     = "Https"
    enable_cookie_based_affinity = true
    is_https                     = true
    host_name                    = "vue-app.trustage.com"
    pick_host_name_from_backend_address = false
    request_timeout              = 120
    probe_name                   = "vue-app-trustage-health-probe"
  }
]

probes = [
  {
    name                = "rapidonline-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "rapidonline.trustage.com"
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
    host                = "sales.trustage.com"
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
    host                = "charonframework.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "alis-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "alis.trustage.com"
    port                = 8080
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-port-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-port.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  },
  {
    name                = "vue-app-trustage-health-probe"
    path                = "/"
    protocol            = "Https"
    interval            = 5
    timeout             = 5
    unhealthy_threshold = 2
    match_body          = ""
    match_status_codes  = ["200-399"]
    host                = "vue-app.trustage.com"
    port                = 443
    pick_host_name_from_backend_http_settings = false
  }
]

redirect_configurations = [
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
    name                 = "alis-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "alis-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-port-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-port-trustage-https-frontend-listener"
    target_url           = null
    include_path         = true
    include_query_string = true
  },
  {
    name                 = "vue-app-trustage-httptohttps-rule"
    redirect_type        = "Temporary"
    target_listener_name = "vue-app-trustage-https-frontend-listener"
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
    name                       = "alis-trustage-http-basic-request-routing-rule"
    http_listener_name         = "alis-trustage-https-frontend-listener"
    backend_address_pool_name  = "alis-trustage-backend-servers"
    backend_http_settings_name = "alis-trustage-backend-http-settings"
    priority                   = 160
  },
  {
    name                       = "vue-port-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-port-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-port-trustage-backend-servers"
    backend_http_settings_name = "vue-port-trustage-backend-http-settings"
    priority                   = 170
  },
  {
    name                       = "vue-app-trustage-http-basic-request-routing-rule"
    http_listener_name         = "vue-app-trustage-https-frontend-listener"
    backend_address_pool_name  = "vue-app-trustage-backend-servers"
    backend_http_settings_name = "vue-app-trustage-backend-http-settings"
    priority                   = 180
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
    priority                   = 50
  },
  {
    name                        = "charonframework-redirect-config-https"
    http_listener_name          = "charonframework-http-frontend-listener"
    redirect_configuration_name = "charonframework-httptohttps-rule"
    priority                   = 60
  },
  {
    name                        = "alis-trustage-redirect-config-https"
    http_listener_name          = "alis-trustage-http-frontend-listener"
    redirect_configuration_name = "alis-trustage-httptohttps-rule"
    priority                   = 70
  },
  {
    name                        = "vue-port-trustage-redirect-config-https"
    http_listener_name          = "vue-port-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-port-trustage-httptohttps-rule"
    priority                   = 80
  },
  {
    name                        = "vue-app-trustage-redirect-config-https"
    http_listener_name          = "vue-app-trustage-http-frontend-listener"
    redirect_configuration_name = "vue-app-trustage-httptohttps-rule"
    priority                   = 90
  }
]

key_vault_ssl_certificates = [
  "rapidonline-trustage-cert",
  "sales-trustage-com-cert",
  "charonframework-trustage-cert",
  "alis-trustage-cert",
  "vue-port-trustage-cert",
  "vue-app-trustage-cert"
] 

private_endpoints_subnet_name  = "Subnet-CMFG-EA2-P01-PS-PrivateEndpoints"

stg_acct_common_name = "sapreneedcommon"

managed_identity_name = "MSI-Application-Gateway-P01"

trxdirector_waf_ips = ["65.52.56.146/32","40.78.153.75/32","40.75.97.37/32","198.134.2.2/32"]
