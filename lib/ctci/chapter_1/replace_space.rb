require 'rspec'

def replace_space(str)
  str.strip!
  str.gsub(/\W/, "%20")
end

describe "#replace_space" do
  it "should replace white spaces with %20 characters" do
    replace_space("  Mr Smith  Blah   ").should == "Mr%20Smith%20%20Blah"
  end

  it "should return the same str if no space" do
    replace_space("  MrSmithBlah   ").should == "MrSmithBlah"
  end

end
