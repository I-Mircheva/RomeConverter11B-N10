require 'spec_helper_cw'

describe CaesarCipher do

  describe "encryption" do
    before do
     @cipher = CaesarCipher.new()
    end

    it "returns vwgu" do
      expect(@cipher.encrypt("")).to eq "VWGU"
    end

  end

end
