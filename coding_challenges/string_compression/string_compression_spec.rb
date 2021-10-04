require_relative './string_compression.rb'

describe 'Are they compressed?' do
  it "expects count of repeated letters" do expect(str_compression('aabcccccaaa')).to eq('a2b1c5a3') end
  it "expects count of repeated letters" do expect(str_compression('meeeooowww')).to eq('m1e3o3w3') end

  it "expects original word" do expect(str_compression('me out')).to eq('me out') end
  it "expects original word" do expect(str_compression('dota2')).to eq('dota2') end
end