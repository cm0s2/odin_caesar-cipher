
require "./caesar_cipher"

describe "caesar_cipher" do
  it "handles lower case sentences" do
    expect(caesar_cipher("caesar cipher", 5)).to eql("hfjxfw hnumjw")
  end

  it "works with upper case characters" do
    expect(caesar_cipher("What a string", 5)).to eql("Bmfy f xywnsl")
  end

  it "ignores special characters" do
    expect(caesar_cipher("What a string!?&", 5)).to eql("Bmfy f xywnsl!?&")
  end

  it "ignores numerals" do
    expect(caesar_cipher("abc123", 5)).to eql("fgh123")
    # fgh123
  end

  it "accepts other shift values" do
    expect(caesar_cipher("Caesar Cipher", 7)).to eql("Jhlzhy Jpwoly")
  end

  it "works with 0 shift" do
    expect(caesar_cipher("Caesar Cipher", 0)).to eql("Caesar Cipher")
  end

  it "handles 0 length strings" do
    expect(caesar_cipher("", 5)).to eql("")
  end
end