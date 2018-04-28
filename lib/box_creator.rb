class BoxCreator

  TOP_LEFT_CORNER = "\u250C"
  TOP_RIGHT_CORNER = "\u2510"

  def draw_top_row
    puts TOP_LEFT_CORNER + TOP_RIGHT_CORNER
  end

  def draw_bottom_row
    puts "\u2514" "\u2518"
  end

end