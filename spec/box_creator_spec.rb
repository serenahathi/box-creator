require 'box_creator'

describe BoxCreator do
  let(:box) { described_class.new }

  describe "#draw_top_row" do
    it "draws the top row of a box based of any given width" do
      expect { box.draw_top_row(4) }.to output("┌╶╶┐\n").to_stdout
    end
  end

  describe "#draw_bottom_row" do
    it "draws the bottom row of a box based of any given width" do
      expect { box.draw_bottom_row(4) }.to output("└╶╶┘\n").to_stdout
    end
  end

  describe "#draw_middle_rows" do
    it "draws the middle rows of a box based on any given width" do
      expect { box.draw_middle_rows(4) }.to output("╷  ╷\n").to_stdout
    end
  end

  describe "#draw_box" do
    it "draws an entire box based on any given width and a default height of 3" do
      expect { box.draw_box(5) }.to output("┌╶╶╶┐\n╷   ╷\n└╶╶╶┘\n").to_stdout
    end
  end
end
