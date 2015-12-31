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

  def self.h(s)
    return s.to_str.gsub(UNSAFE, HTML_ESCAPE)
  end
end
