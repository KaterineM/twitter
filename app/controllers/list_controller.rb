class ListController < ApplicationController
  before_action :set_list, only: [:show]
  before_action :authenticate_user!, only: [:index]

  def index
    @lists = List.where(user: current_user)
  end

  #/list/id
  def show
  end

  def new
  end

  def create
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

end
