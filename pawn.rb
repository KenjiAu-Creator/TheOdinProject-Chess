class Pawn
  attr_accessor :row, :column, :color, :possibleMoves, :listMoves, :name

  def initialize(row, column, color)
    @row = row
    @column = column
    @team = color
    @listMoves = []
    @name = 'pawn'
    possibleMoves
  end

  def possibleMoves
    @listMoves.push([@row,@column])
    if @team == 'white'
      move = [@row + 1, column]
      @listMoves.push(move)
    elsif @team == 'black'
      move = [@row - 1, column]
      @listMoves.push(move)
    end
  end

  def resetMoves
    @listMoves = []
  end

  def updatePosition(row, column)
    @row = row
    @column = column
  end
end