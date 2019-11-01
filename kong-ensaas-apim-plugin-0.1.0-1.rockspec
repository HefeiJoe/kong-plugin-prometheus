package = "kong-ensaas-apim-plugin"
version = "0.1.0-1"

source = {
  url = "https://github.com/HefeiJoe/kong-plugin-prometheus",
  tag = "1.0"
}

supported_platforms = {"linux", "macosx"}
description = {
  summary = "Advantech ensaas-apim metrics for Kong and upstreams configured in Kong",
  license = "Apache 2.0",
}

dependencies = {
  --"kong >= 0.13.0",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.prometheus-adv.api"] = "kong/plugins/prometheus-adv/api.lua",
    ["kong.plugins.prometheus-adv.exporter"] = "kong/plugins/prometheus-adv/exporter.lua",
    ["kong.plugins.prometheus-adv.handler"] = "kong/plugins/prometheus-adv/handler.lua",
    ["kong.plugins.prometheus-adv.prometheus"] = "kong/plugins/prometheus-adv/prometheus.lua",
    ["kong.plugins.prometheus-adv.serve"] = "kong/plugins/prometheus-adv/serve.lua",
    ["kong.plugins.prometheus-adv.schema"] = "kong/plugins/prometheus-adv/schema.lua",
  }
}
