require 'box_creator'

describe BoxCreator do
  let(:box) { described_class.new }

  describe "#draw_top_row" do
    it "draws the top row of a box based of any given width" do
      top_row = "┌╶ ╶ ┐\n"
      expect { box.draw_top_row(4) }.to output(top_row).to_stdout
    end
  end

  describe "#draw_bottom_row" do
    it "draws the bottom row of a box based of any given width" do
      bottom_row = "└╶ ╶ ┘\n"
      expect { box.draw_bottom_row(4) }.to output(bottom_row).to_stdout
    end
  end

  describe "#draw_middle_rows" do
    it "draws the middle rows of a box based on any given width" do
      middle_rows = "╷    ╷\n"
      expect { box.draw_middle_rows(4) }.to output(middle_rows).to_stdout
    end
  end
end
