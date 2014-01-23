class Techspot < ActiveRecord::Base
  #define callback
  before_create :set_points

  def set_points
    canvasHieght=1170
    canvasWidth=1170

    if self.sector == 'Techniques'
      self.x = (canvasHieght / 7) - rand(60)
      self.y = (canvasWidth / 7) - rand(60)
    elsif self.sector == 'Platforms'
      self.x = (canvasHieght / 7)
      self.y = canvasWidth - (canvasWidth / 7)
    elsif self.sector == 'Tools'
      self.x = canvasHieght - (canvasHieght / 7)
      self.y = (canvasWidth / 7)
    elsif self.sector == 'Languages'
      self.x = canvasHieght - (canvasHieght / 7)
      self.y = canvasWidth - (canvasWidth / 7)
    end

    #raise self.inspect
  end

end
