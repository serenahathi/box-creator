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

    it "raises an error if the user tries to enter anything other than an integer" do
      expect { box.draw(3.17, 4.76) }.to raise_error "Please enter integers only"
    end
  end
end
