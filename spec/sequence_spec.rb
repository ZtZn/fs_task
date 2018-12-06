require './lib/sequence'
require "spec_helper"


describe Sequence do

  describe "initial with '1'" do
    let(:sequence) { Sequence.new }

    it "first line" do
      expect(sequence.create_sequence(1)).to eql ["1"]
    end
    it 'third line' do
      expect(sequence.create_sequence(3)).to eql ['1', '11' ,'21']
    end
  end

  describe "initial with '11'" do
    let(:sequence) { Sequence.new(first_element: '11') }

    it "first line" do
      expect(sequence.create_sequence(1)).to eql ["11"]
    end
    it 'third line' do
      expect(sequence.create_sequence(3)).to eql ['11', '21' ,'1211']
    end
  end
end