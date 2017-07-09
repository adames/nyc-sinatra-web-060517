class Figure <ActiveRecord::Base
  has_many :landmarks
  has_many :figure_titles
  has_many :titles, through: :figure_titles

  def title_ids=(params)
    params.each do |title|
      self.titles << Title.find(title.keys.first.to_i)
    end
  end

  def landmark_ids=(params)
    params.each do |landmark|
      self.landmarks << Landmark.find(landmark.keys.first.to_i)
    end
  end
end
