class ListController < ApplicationController
  before_action :set_list, only: [:show]

  #/list/id
  def show
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

end
