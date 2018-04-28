class Box

  TOP_LEFT_CORNER = "\u250C"
  TOP_RIGHT_CORNER = "\u2510"
  BOTTOM_LEFT_CORNER = "\u2514"
  BOTTOM_RIGHT_CORNER = "\u2518"
  HORIZONTAL_EDGES = " - "
  VERTICAL_EDGE = "|"

  def draw(width, height)
    input_checks(width, height)
    draw_top_row(width)
    draw_middle_rows(width, height)
    draw_bottom_row(width)
  end

  def draw_top_row(width)
    puts TOP_LEFT_CORNER + "#{horizontal_edges(width)}" + TOP_RIGHT_CORNER
  end

  def draw_middle_rows(width, height)
    (height - 2).times { puts VERTICAL_EDGE + "#{vertical_spacing(width)}" + VERTICAL_EDGE }
  end

  def draw_bottom_row(width)
    puts BOTTOM_LEFT_CORNER + "#{horizontal_edges(width)}" + BOTTOM_RIGHT_CORNER
  end

  private

  def horizontal_edges(width)
    HORIZONTAL_EDGES * (width - 2)
  end

  def vertical_spacing(width)
    "   " * (width - 2)
  end

  def input_checks(width, height)
    raise "Please enter integers only" unless integer?(width, height)
    raise "Please enter dimensions that are greater than or equal to 2x2" unless minimum_dimensions?(width, height)
  end

  def integer?(width, height)
    (width.is_a? Integer) && (height.is_a? Integer)
  end

  def minimum_dimensions?(width, height)
    width >= 2 && height >= 2
  end

end
