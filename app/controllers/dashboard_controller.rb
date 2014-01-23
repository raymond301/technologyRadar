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
  end

end
