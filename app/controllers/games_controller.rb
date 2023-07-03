class GamesController < ApplicationController
  def new
    @sample = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    @sample.each_with_index do |letter, index|
      @sample[index] = ('a'..'z').to_a.sample.capitalize
    end
    @sample
  end

  def score
    # calculate score
    @sample = params[:grid].capitalize.split(' ')

    @input = params[:input].split(//)
    @sample.each do |letter|
      unless @sample.include?(letter)
        return false
      end
      @sample.delete_at(@sample.index(letter))
    end
  end

  
end
