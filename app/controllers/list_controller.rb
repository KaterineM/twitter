class ListController < ApplicationController
  before_action :set_list, only: [:show]
  before_action :authenticate_user!, only: [:index]

  def index
    @lists = List.where(user: current_user)
  end

  #/list/id
  def show
    @list_members = ListMember.where(list: @list)
  end

  def new
    @list = List.new
  end

  def create
    @List = List.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'List was successfully created' }
      else
        format.html { render :new, notice: 'Something went wrong' }
      end
    end
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name, :desc, :user_id)
    end

end
