# frozen_string_literal: true

require "bundler/setup"
require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/hache"

class HacheTest < Minitest::Test
  def test_escape_safe_string
    assert_equal "hola", Hache.h("hola")
  end

  def test_escape_unsafe_chars
    assert_equal "&lt;&gt;&amp;&#34;&#39;", Hache.h(%q(<>&"'))
  end
end
