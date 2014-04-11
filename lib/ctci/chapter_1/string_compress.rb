require 'rspec'

def combine_str_and_num(string, num)
  num > 1 ? string + num.to_s : string
end

def string_compress(str)
  splited = str.split("")
  current_char = splited.shift
  char_num = 1
  compressed = ""
  splited.each do |char|
    if char != current_char
      compressed << combine_str_and_num(current_char, char_num)
      current_char = char
      char_num = 1
    else
      char_num += 1
    end
  end
  compressed << combine_str_and_num(current_char, char_num)
end

describe "#string_compress" do
  it "should compress repeated chars" do
    string_compress("aabcc").should == "a2bc2"
  end

  it "should compress repeated chars" do
    string_compress("aabc").should == "a2bc"
  end

  it "should return given string if nothing repeats" do
    string_compress("abcde").should == "abcde"
  end

end
