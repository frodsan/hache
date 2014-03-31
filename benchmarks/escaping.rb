require_relative "helper"

text = %q(some < text > inside & these " escapable' characters/1234)

Benchmark.ips do |x|
  x.report("encode") { text.encode(xml: :text) } # encode doesn't escape `'`, `"` and `/`.
  x.report("rack")   { Rack::Utils.escape_html(text) }
  x.report("hache")  { Hache.h(text) }
end

# Calculating -------------------------------------
#               encode     16385 i/100ms
#                 rack      9626 i/100ms
#                hache     10211 i/100ms
# -------------------------------------------------
#               encode   241085.8 (±11.8%) i/s - 1163335 in 5.004123s
#                 rack   127905.8 (±4.5%)  i/s -  644942 in 5.053418s
#                hache   153666.9 (±11.5%) i/s -  745403 in 5.056082s
