class Matrix
  ## Wrapper class Matrix makes it easy to work with 2D lists

  attr_reader :rows, :cols

  #Fill data (leave col as 0 unless planning on setting vals)
  def initialize(rows, cols)
    @rows = rows
    @cols = cols
    @data = []
    for i in (0...rows)
      @data[i] = []
      for j in (0...cols)
        @data[i][j] = 0
      end
    end
  end

  #Neatly represent data
  def to_s
    ret = "\n" + @rows.to_s + 'x' + @cols.to_s + "matrix:\n"
    for row in @data
      for datum in row
        ret+= "nil" if !datum
        ret+= datum.to_s + "   "
      end
      ret+= "\n"
    end
    return ret + "\n"
  end

  #Set a coord
  def set(row, col, val)
    if row > @rows or col > @cols or row == 0 or col == 0
      return;
    end
    @data[row][col] = val
  end

  #Add a collumn. Data is a list of what should be entered
  def add_col(data)
    for i in (0...@rows)
      @data[i][@cols] = data[i]
    end
    @cols += 1
  end

end
