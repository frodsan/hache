require_relative "helper"

text = %q(wow much text many characters very fast so safe)

Benchmark.ips do |x|
  x.report("encode") { text.encode(xml: :text) }
  x.report("rack")   { Rack::Utils.escape_html(text) }
  x.report("hache")  { Hache.h(text) }
end

# Calculating -------------------------------------
#               encode     16576 i/100ms
#                 rack     43001 i/100ms
#                hache     43743 i/100ms
# -------------------------------------------------
#               encode   259772.7 (±4.3%) i/s -    1309504 in   5.051349s
#                 rack   861950.4 (±4.6%) i/s -    4300100 in   5.000045s
#                hache   864964.6 (±5.1%) i/s -    4330557 in   5.020790s
