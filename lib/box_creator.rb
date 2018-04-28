class BoxCreator

  TOP_LEFT_CORNER = "\u250C"
  TOP_RIGHT_CORNER = "\u2510"
  BOTTOM_LEFT_CORNER = "\u2514"
  BOTTOM_RIGHT_CORNER = "\u2518"
  HORIZONTAL_EDGE = "\u2576 "

  def draw_top_row(width)
    puts TOP_LEFT_CORNER + HORIZONTAL_EDGE * (width - 2) + TOP_RIGHT_CORNER
  end

  def draw_bottom_row
    puts BOTTOM_LEFT_CORNER + BOTTOM_RIGHT_CORNER
  end
end