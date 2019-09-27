class ListsController < ApplicationController

  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @list = List.all
    @newlist = List.new
  end

  def show
  end

  def new
    @list = List.new
    @currentlists = List.all
  end

  def edit
  end

  def create
    @list = List.new(list_params)
    @currentlists = List.all

    respond_to do |format|
      if @list.save
        format.html { redirect_to action: 'index', notice: 'List created!'}
        format.json { render :root, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @list = List.find(params[:id])

    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'Changes saved.'}
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @list = List.find(params[:id])
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'List has been removed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title, :color)
  end
end