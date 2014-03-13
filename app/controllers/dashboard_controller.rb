class DashboardController < ApplicationController
  def index
    @spots=Techspot.all()
    #raise @spots.to_json.inspect
  end

  def create_spot
       Techspot.create(:name=>params['name'], :sector=>params['sector'])
       redirect_to :root
  end

  def show_spot
    @tS = Techspot.find(params[:id])
   # raise @tS.inspect
  end

  def edit_spot
    @tS = Techspot.find(params[:id])
  end

  def update_spot
    tS = Techspot.find(params[:id])
    tS.update_attributes(params)
   # Note.new()
    raise tS.inspect
  end


end
