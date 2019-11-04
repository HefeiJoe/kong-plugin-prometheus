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
    ["kong.plugins.ensaas-apim.api"] = "kong/plugins/ensaas-apim/api.lua",
    ["kong.plugins.ensaas-apim.exporter"] = "kong/plugins/ensaas-apim/exporter.lua",
    ["kong.plugins.ensaas-apim.handler"] = "kong/plugins/ensaas-apim/handler.lua",
    ["kong.plugins.ensaas-apim.prometheus"] = "kong/plugins/ensaas-apim/prometheus.lua",
    ["kong.plugins.ensaas-apim.serve"] = "kong/plugins/ensaas-apim/serve.lua",
    ["kong.plugins.ensaas-apim.schema"] = "kong/plugins/ensaas-apim/schema.lua",
  }
}
