class FrontsController < ApplicationController
  def index
    @score = Score.new
    binding.pry
    @match = Match.find_by(id: params[:match_id])
    # @matchs = Match.all
  end
end
