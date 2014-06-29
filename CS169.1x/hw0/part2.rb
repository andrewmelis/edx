require 'rspec/autorun'

def hello(name)
  "Hello #{name}"
end

def starts_with_consonant?(s)
  !!(s[0] =~ /^[^aeiou|\d]/i)
end




RSpec.describe "part 2" do

  describe "hello" do
    it "takes a name string and returns the correct greeting" do
      expect(hello("Claudia")).to eq("Hello Claudia")
    end
  end

  describe "starts_with_consonant?" do
    it "returns true if the input starts with a consonant" do
      expect(starts_with_consonant?("hello")).to be true
    end

    it "returns false if the input starts with a vowel (A,E,I,O,U)" do
      expect(starts_with_consonant?("andrew")).to be false
    end

    it "works with uppercase letters" do
      expect(starts_with_consonant?("BIRD")).to be true
    end

    it "works with lowercase letters" do
      expect(starts_with_consonant?("bird")).to be true
    end

    it "returns false for non-letter strings" do
      expect(starts_with_consonant?("1234")).to be false
    end

    it "returns false for non-strings" do
      expect(starts_with_consonant?(1234)).to be false
    end
  end

  describe "binary_multiple_of_4?" do
    pending
  end

end
