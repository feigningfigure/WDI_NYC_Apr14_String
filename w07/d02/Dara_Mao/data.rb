require 'zlib'
require 'json'

raw_data = "\u001F\x8B\b\u00006ӍS\u0000\u0003\u001D\xCA1\n\x83P\f\u0006ૄ\xCC\u000E\xDAn^\xC0\xB5\xF4\u0002\x92\xF7\x88\u001A\xD0\u0017H\xFE\u000E\xA5\xF4\xEE\x8A÷}?\x86aW\u001E\xF9%\xD5\u0016\xAB\xF4\xB6\x83;\u000E\xDDUR\xE7\xAFJ\xF0\xF8\xE8\x87g\xC7R\u0012!\u0015W\x9EL\u001A(\xBC8\x92\x8A\n\xAC\xAD\x84M)\x9B\x83\xFCsYh\xBD\xD3\xE1-\xA1\x91\xFC?\u0001\u0017b\r\xC6l\u0000\u0000\u0000"

filename = "myzipped"
File.binwrite(filename,raw_data)

data = Zlib::GzipReader.open(filename) do |gz|
  JSON.parse(gz.read)
end

puts data;
