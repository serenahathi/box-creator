require 'box_creator'

describe BoxCreator do
  let(:box) { described_class.new }
  
  describe '#draw_top_row' do
    it 'draws the top row of a 2x2 box' do
      top_row = "┌┐\n"
      expect { box.draw_top_row }.to output(top_row).to_stdout
    end
  end
end
