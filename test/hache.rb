require "cutest"
require_relative "../lib/hache"

def h(str)
  Hache.h(str)
end

test "not escapes safe string" do
  assert_equal "hola", h("hola")
end

test "not raises an error with nil values" do
  assert_equal "", h(nil)
end

test "escapes unsafe characters" do
  assert_equal "&lt;&gt;&amp;&quot;&#x27;&#x2F;", h(%q(<>&"'/))
end
