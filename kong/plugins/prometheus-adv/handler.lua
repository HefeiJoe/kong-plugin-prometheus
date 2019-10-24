local prometheus = require "kong.plugins.prometheus-adv.exporter"
local basic_serializer = require "kong.plugins.log-serializers.basic"


local kong = kong
local timer_at = ngx.timer.at


prometheus.init()


local PrometheusHandler = {
  PRIORITY = 14,
  VERSION  = "0.5.0",
}


function PrometheusHandler:log(_)
  local message = basic_serializer.serialize(ngx)
  prometheus.log(message)
end


return PrometheusHandler
