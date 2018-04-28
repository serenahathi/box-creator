require 'box'

describe Box do

  let(:box) { described_class.new }

  describe "#draw" do
    it "draws a 2x2 square" do
      two_by_two_square = "┌┐\n└┘\n"
      expect { box.draw(2, 2) }.to output(two_by_two_square).to_stdout
    end

    it "draws a 4x4 square" do
      four_by_four_square = "┌ ╶  ╶ ┐\n╷      ╷\n╷      ╷\n└ ╶  ╶ ┘\n"
      expect { box.draw(4, 4) }.to output(four_by_four_square).to_stdout
    end

    it "draws a 6x6 square" do
      six_by_six_square =  "┌ ╶  ╶  ╶  ╶ ┐\n╷            ╷\n╷            ╷\n╷            ╷\n╷            ╷\n└ ╶  ╶  ╶  ╶ ┘\n"
      expect { box.draw(6, 6) }.to output(six_by_six_square).to_stdout
    end

    it "draws a 3x2 rectangle" do
      three_by_two_rectangle = "┌ ╶ ┐\n└ ╶ ┘\n"
      expect { box.draw(3, 2) }.to output(three_by_two_rectangle).to_stdout
    end

    it "draws a 4x2 rectangle" do
      four_by_two_rectangle = "┌ ╶  ╶ ┐\n└ ╶  ╶ ┘\n"
      expect { box.draw(4, 2) }.to output(four_by_two_rectangle).to_stdout
    end

    it "draws a 8x5 rectangle" do
      eight_by_five_rectangle = "┌ ╶  ╶  ╶  ╶  ╶  ╶ ┐\n╷                  ╷\n╷                  ╷\n╷                  ╷\n└ ╶  ╶  ╶  ╶  ╶  ╶ ┘\n"
      expect { box.draw(8, 5) }.to output(eight_by_five_rectangle).to_stdout
    end

    it "draws a 5x2 rectangle" do
      five_by_two_rectangle = "┌ ╶  ╶  ╶ ┐\n└ ╶  ╶  ╶ ┘\n"
      expect { box.draw(5, 2) }.to output(five_by_two_rectangle).to_stdout
    end

    it "draws a 4x6 rectangle" do
      four_by_six_rectangle = "┌ ╶  ╶ ┐\n╷      ╷\n╷      ╷\n╷      ╷\n╷      ╷\n└ ╶  ╶ ┘\n"
      expect { box.draw(4, 6) }.to output(four_by_six_rectangle).to_stdout
    end

    it "draws a 5x7 rectangle" do
      five_by_seven_rectangle = "┌ ╶  ╶  ╶ ┐\n╷         ╷\n╷         ╷\n╷         ╷\n╷         ╷\n╷         ╷\n└ ╶  ╶  ╶ ┘\n"
      expect { box.draw(5, 7) }.to output(five_by_seven_rectangle).to_stdout
    end

    it "raises an error if the user enters non-integers" do
      expect { box.draw(3.17, 4.76) }.to raise_error "Please enter integers only"
    end

    it "raises an error if the user enters dimensions that are less than 2x2" do
      expect { box.draw(1, 1) }.to raise_error "Please enter dimensions that are greater than or equal to 2x2"
    end
  end
end
