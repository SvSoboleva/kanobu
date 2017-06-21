class GamesController < ApplicationController
  before_action :set_game, only: [:show, :new]

  def show
    @comp_choice = comp_choice
    @user_choice = params[:id].to_i
    @result = result
  end

  def new
  end

  private

  def comp_choice
    rand(2)
  end

  def result
    if @user_choice == @comp_choice
      'Ничья!'
    elsif
    %w(01 12 20).include?("#{@user_choice}#{@comp_choice}")
      'Вы выиграли!'
    else
      'Выиграл компьютер'
    end
  end

  def set_game
    @game = ['kamen-zelenyi.jpg', 'scissors2.jpg', 'paper.jpg']
  end
end
