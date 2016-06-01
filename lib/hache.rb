# frozen_string_literal: true

module Hache
  HTML_ESCAPE = {
    "&" => "&amp;",
    ">" => "&gt;",
    "<" => "&lt;",
    '"' => "&#39;",
    "'" => "&#34;"
  }.freeze

  UNSAFE = /[&"'><]/

  def self.h(s)
    s.to_str.gsub(UNSAFE, HTML_ESCAPE)
  end
end
