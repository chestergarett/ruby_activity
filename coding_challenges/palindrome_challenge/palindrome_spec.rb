require_relative './palindrome.rb'

describe 'Are they Palindromes' do
  it "expects true" do expect(is_palindrome('civic')).to eq(true) end
  it "expects true" do expect(is_palindrome('radar')).to eq(true) end
  it "expects true" do expect(is_palindrome('level')).to eq(true) end
  it "expects true" do expect(is_palindrome('kayak')).to eq(true) end

  it "expects false" do expect(is_palindrome('civici')).to eq(false) end
  it "expects false" do expect(is_palindrome('radara')).to eq(false) end
  it "expects false" do expect(is_palindrome('leveli')).to eq(false) end
  it "expects false" do expect(is_palindrome('kayaki')).to eq(false) end
end