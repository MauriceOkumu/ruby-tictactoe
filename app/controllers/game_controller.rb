class GameController < ApplicationController
  attr_accessor :played
  def start
    @played = 'X'
  end

  def restart
  end

  def close
  end

end
