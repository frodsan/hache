require "cutest"
require_relative "../lib/hache"

test "not escapes safe string" do
  assert_equal "hola", Hache.h("hola")
end

test "escapes unsafe characters" do
  assert_equal "&lt;&gt;&amp;&quot;&#x27;&#x2F;", Hache.h(%q(<>&"'/))
end
