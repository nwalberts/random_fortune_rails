class FortunesController < ApplicationController

  def create
    fortune = Fortune.new(fortune_params)
    if fortune.save
      render status: 200
    else
      render status: 400
    end
  end

  def show

    json = {
      fortune: {
        body: Fortune.all.sample.body
      }
    }

    render json: json
  end

  def index
    #Ya Don't have to mess with me
  end

  private

  def fortune_params
    params.require(:fortune).permit(:body)
  end
end
