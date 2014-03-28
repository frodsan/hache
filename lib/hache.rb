module Hache
  HTML_ESCAPE = {
    "&" => "&amp;",
    ">" => "&gt;",
    "<" => "&lt;",
    '"' => "&quot;",
    "'" => "&#x27;",
    "/" => "&#x2F;"
  }

  UNSAFE = /[&"'><\/]/

  def self.h(str)
    str.to_s.gsub(UNSAFE, HTML_ESCAPE)
  end
end
