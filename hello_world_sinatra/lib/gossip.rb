require 'csv'
#require 'pry'

class Gossip
  attr_reader :author, :content
#le classique
  def initialize(author, content)
    @author = author
    @content = content
  end
#là encore, petit save, pas de surprises
  def save
    CSV.open("db/gossip.csv", "a+") do |csv|
      csv << [@author, @content]
  end
  end
#là on stocke tous les gossips dans un array grâce à une boucle do, puis on le return pour l'afficher dans l'index
  def self.all
    all_gossips = []
    CSV.read("db/gossip.csv").each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
  end

#j'avoue ca c'est github, j'en ai eu marre

  def self.find(id)
    Gossip.all[id.to_i]
    end

end

#binding.pry