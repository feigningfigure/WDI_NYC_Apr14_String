space_one = " "
space_two = " "

puts "Is '#{space_one}' == '#{space_two}'?"
puts "Ruby says: #{space_one == space_two}"

puts

puts "Codepoint of '#{space_one}': #{space_one.ord}"
print "space_one.codepoints.inspect: ", space_one.codepoints.inspect, "\n"
puts "Codepoint of '#{space_two}': #{space_two.ord}"
print "space_two.codepoints.inspect: ", space_two.codepoints.inspect, "\n"

puts

en_space_literal = '\u2002'
en_space = "\u2002"

puts "What about '#{en_space_literal}'?"
puts "It looks like this: '#{en_space}'"

puts

puts "Is space_one ('#{space_one}') == en_space ('#{en_space}')?"
puts "Ruby says: #{space_one == en_space}"

puts

puts "Is space_one ('#{space_one}') === en_space ('#{en_space}')?"
puts "Ruby says: #{space_one === en_space}"

puts

puts "Is space_two ('#{space_two}') == en_space ('#{en_space}')?"
puts "Ruby says: #{space_two == en_space}"

puts

puts "Show me en_space ('#{en_space}') in ...     decimal (base 10): #{en_space.ord}"
puts "Show me en_space ('#{en_space}') in ... hexadecimal (base 16): #{en_space.ord.to_s(16)}"
puts "Show me en_space ('#{en_space}') in ... hexadecimal (base 16): #{en_space.ord.to_s(2)}"

puts

puts "Show me 8194 in ...     decimal: #{8194.to_s(10)}"
puts "Show me 8194 in ... hexadecimal: #{8194.to_s(16)}"
puts "Show me 8194 in ...      binary: #{8194.to_s(2)}"
puts
puts "Show me 0x2002 in ...     decimal: #{0x2002.to_i}"
puts "Show me 0x2002 in ... hexadecimal: #{0x2002.to_s(16)}"
puts "Show me 0x2002 in ...      binary: #{0x2002.to_s(2)}"

puts

puts "Are 8194, 0x2002, and 0b10000000000010 all equal?: #{[8194 == 0x2002, 8194 == 0b10000000000010, 0x2002 == 0b10000000000010].all?}"

puts

en_space_dec = 8194

puts "Show me the UTF-8 character represented by decimal 8194: '#{en_space_dec.chr('UTF-8')}'"
puts "Is it == en_space?: #{en_space_dec.chr('UTF-8') == en_space}"

en_space_hex = 0x2002

puts "Show me the UTF-8 character represented by hexadecimal 2002: '#{en_space_hex.chr('UTF-8')}'"
puts "Is it == en_space?: #{en_space_hex.chr('UTF-8') == en_space}"

en_space_bin = 0b10000000000010

puts "Show me the UTF-8 character represented by binary 10000000000010: '#{en_space_bin.chr('UTF-8')}'"
puts "Is it == en_space?: #{en_space_bin.chr('UTF-8') == en_space}"

