class BoxCreator

  TOP_LEFT_CORNER = "\u250C"
  TOP_RIGHT_CORNER = "\u2510"
  BOTTOM_LEFT_CORNER = "\u2514"
  BOTTOM_RIGHT_CORNER = "\u2518"

  def draw_top_row
    puts TOP_LEFT_CORNER + TOP_RIGHT_CORNER
  end

  def draw_bottom_row
    puts BOTTOM_LEFT_CORNER + BOTTOM_RIGHT_CORNER
  end

end