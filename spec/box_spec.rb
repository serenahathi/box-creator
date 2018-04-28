require 'box'

describe Box do
  let(:box) { described_class.new }

  describe "#draw_top_row" do
    it "draws the top row of a box based of any given width" do
      expect { box.draw_top_row(4) }.to output("┌ -  - ┐\n").to_stdout
    end
  end

  describe "#draw_middle_rows" do
    it "draws the middle rows of a box based on any given width and height" do
      expect { box.draw_middle_rows(4, 4) }.to output("|      |\n|      |\n").to_stdout
    end
  end

  describe "#draw_bottom_row" do
    it "draws the bottom row of a box based of any given width" do
      expect { box.draw_bottom_row(4) }.to output("└ -  - ┘\n").to_stdout
    end
  end

  describe "#draw" do
    it "draws an entire box based on any given width and height" do
      five_by_five_box = "┌ -  -  - ┐\n|         |\n|         |\n|         |\n└ -  -  - ┘\n"
      expect { box.draw(5, 5) }.to output(five_by_five_box).to_stdout
    end

    it "raises an error if the user enters non-integers" do
      expect { box.draw(3.17, 4.76) }.to raise_error "Please enter integers only"
    end

    it "raises an error if the user enters dimensions that are less than 2x2" do
      expect { box.draw(1, 1) }.to raise_error "Please enter dimensions that are greater than or equal to 2x2"
    end
  end
end
