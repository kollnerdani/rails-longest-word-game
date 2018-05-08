class GamesController < ApplicationController

  def new
    abc =("a".."z").to_a
    @letters = abc.shuffle[0..9]
  end

  def score
    word = params[:choice]
    list = params[:word]
    sentence = word.split(%r{\s*})
    if word.chars.all? { |letter| word.count(letter) <= list.count(letter) }
      @answer = "Letters included"
    else
      @answer = "Letters not include"
    end
  end
end
