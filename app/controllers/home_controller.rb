class HomeController < ApplicationController
  def index
    @hards = Hard.all
  end

  def create
    Hard.all.each do |h|
      h.enqueue
    end
  end
end
