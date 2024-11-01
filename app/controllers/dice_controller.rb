class DiceController < ApplicationController
  def index
    # 主页视图，显示链接
  end

  def roll_2d6
    @results = Array.new(2) { rand(1..6) }
    render("dice/roll_2d6")
  end

  def roll_2d10
    @results = Array.new(2) { rand(1..10) }
    render("dice/roll_2d10")
  end

  def roll_1d20
    @results = [rand(1..20)]
    render("dice/roll_1d20")
  end

  def roll_5d4
    @results = Array.new(5) { rand(1..4) }
    render("dice/roll_5d4")
  end

  def roll_dice
    @num_dice = params[:num_dice].to_i
    @num_sides = params[:num_sides].to_i
    @results = Array.new(@num_dice) { rand(1..@num_sides) }
    @heading = "#{@num_dice}d#{@num_sides}"
    render("dice/roll_dice")
  end
  
end
