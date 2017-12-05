require 'spec_helper'

describe RomeConverter do

  describe "convert_to_rome" do
    before do
      @r_converter = RomeConverter.new()
    end

    it "Returns IV given 4" do
      expect(@r_converter.to_rome(4)).to eq "IV"
    end

    it "Returns XIII given 13" do
      expect(@r_converter.to_rome(13)).to eq "XIII"
    end

    it "Returns XLIX given 49" do
      expect(@r_converter.to_rome(49)).to eq "XLIX"
    end

    it "Returns LIV given 54" do
      expect(@r_converter.to_rome(54)).to eq "LIV"
    end

    it "Returns LXXIII given 73" do
      expect(@r_converter.to_rome(73)).to eq "LXXIII"
    end

    it "Returns XCVI given 96" do
      expect(@r_converter.to_rome(96)).to eq "XCVI"
    end

    it "Returns CDLXIX given 469" do
      expect(@r_converter.to_rome(469)).to eq "CDLXIX"
    end

    it "Returns MMCCXVI given 2216" do
      expect(@r_converter.to_rome(2216)).to eq "MMCCXVI"
    end

    it "Returns MMMXCI given 3091" do
      expect(@r_converter.to_rome(3091)).to eq "MMMXCI"
    end

    ##################################################

    it "Returns 9 given IX" do
      expect(@r_converter.to_dec("IX")).to eq 9
    end

    it "Returns 14 given XIV" do
      expect(@r_converter.to_dec("XIV")).to eq 14
    end

    it "Returns 99 given XCIX" do
      expect(@r_converter.to_dec("XCIX")).to eq 99
    end

    it "Returns 100 given C" do
      expect(@r_converter.to_dec("C")).to eq 100
    end

    it "Returns 237 given CCXXXVII" do
      expect(@r_converter.to_dec("CCXXXVII")).to eq 237
    end

    it "Returns 432 given DCCCLXXXVIII" do
      expect(@r_converter.to_dec("DCCCLXXXVIII")).to eq 432
    end

    it "Returns 888 given CDXXXII" do
      expect(@r_converter.to_dec("CDXXXII")).to eq 888
    end

    it "Returns 3534 given MMMDXXXIV" do
      expect(@r_converter.to_dec("MMMDXXXIV")).to eq 3534
    end

  end

end
