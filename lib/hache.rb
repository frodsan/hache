module Hache
  HTML_ESCAPE = {
    "&" => "&amp;",
    ">" => "&gt;",
    "<" => "&lt;",
    '"' => "&quot;",
    "'" => "&#39;"
  }

  def self.h(str)
    str.to_s.gsub(/[&"'><]/, HTML_ESCAPE)
  end
end
