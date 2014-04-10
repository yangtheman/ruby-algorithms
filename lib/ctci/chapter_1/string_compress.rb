require 'rspec'

def string_compress(str)
  splited = str.split("")
  current_char = splited.shift
  char_num = 1
  compressed = current_char
  splited.each_with_index do |char, index|
    if char != current_char
      if char_num > 1
        compressed << char + char_num.to_s
      else
        compressed << char
      end
      current_char = char
      char_num = 1
    else
      char_num += 1
    end
  end
  compressed
end

describe "#string_compress" do
  it "should compress repeated chars" do
    string_compress("aabcc").should == "a2bc2"
  end
end
