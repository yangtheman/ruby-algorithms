require 'rspec'

def str_uniq?(str)
  array = []
  str.each_char do |char|
    return false if array[char.ord]
    array[char.ord] = true
  end
  true
end

def str_uniq2?(str)
  hash = {}
  str.each_char do |char|
    return false if hash[char]
    hash[char] = true
  end
  true
end

describe "#str_uniq?" do
  it "should return false if not unique" do
    str_uniq?("aba").should be_false
  end

  it "should return false if not unique" do
    str_uniq?("abc").should be_true
  end
end

describe "#str_uniq2?" do
  it "should return false if not unique" do
    str_uniq2?("aba").should be_false
  end

  it "should return false if not unique" do
    str_uniq2?("abc").should be_true
  end
end
