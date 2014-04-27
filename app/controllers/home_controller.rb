class HomeController < ApplicationController
  def index
    @tasks_ready = Task.ready
    @tasks_wip = Task.wip
  end
end
