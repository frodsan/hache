require "hache"
require "rack/utils"
require "benchmark/ips"

Benchmark.ips do |x|
  x.report("encode") { %q(<>&"'/).encode(xml: :text) } # encode doesn't escape `'`, `"` and `/`.
  x.report("rack")   { Rack::Utils.escape_html(%q(<>&"'/)) }
  x.report("hache")  { Hache.h(%q(<>&"'/)) }
end

# Calculating -------------------------------------
#               encode     17441 i/100ms
#                 rack      8941 i/100ms
#                hache     11683 i/100ms
# -------------------------------------------------
#               encode   301703.2 (±4.2%) i/s -    1517367 in   5.038825s
#                 rack   127113.5 (±3.8%) i/s -     643752 in   5.072152s
#                hache   147566.0 (±3.7%) i/s -     747712 in   5.074052s
