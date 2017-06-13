# frozen_string_literal: true

require "bundler/setup"
require "minitest/autorun"
require "minitest/pride"
require "minitest/sugar"
require_relative "../lib/hache"

class HacheTest < Minitest::Test
  test "not escapes safe string" do
    assert_equal "hola", Hache.h("hola")
  end

  test "escapes unsafe characters" do
    assert_equal "&lt;&gt;&amp;&#34;&#39;", Hache.h(%q(<>&"'))
  end
end
