class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director, :summary

  def summary
    "Title: #{self.object.title}  About:   #{self.object.description[0..49]}..."
  end
end
