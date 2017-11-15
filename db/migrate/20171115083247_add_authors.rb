class AddAuthors < ActiveRecord::Migration[5.1]
  def change
  	Author.create :name => 'Theodore Roosevelt', :birth => '1858', :death => '1919'
    Author.create :name => 'Nelson Mandela', :birth => '1918', :death => '2013'
    Author.create :name => 'Albert Einstein', :birth => '1879', :death => '1955'
    Author.create :name => 'Victor Hugo', :birth => '1802', :death => '1885'
    Author.create :name => 'Léonard de Vinci', :birth => '1452', :death => '1519'
    Author.create :name => 'Jacques Prévert', :birth => '1900', :death => '1977'
    Author.create :name => 'Abraham Lincoln', :birth => '1809', :death => '1865'
    Author.create :name => 'Claude Monet', :birth => '1840', :death => '1926'
    Author.create :name => 'Albert Camu', :birth => '1913', :death => '1960'
    Author.create :name => 'Gandhi', :birth => '1869', :death => '1948'
    Author.create :name => 'Archimède', :birth => '287 av. J.C.', :death => '212 av. J.C.'
    Author.create :name => 'Socrate', :birth => '~470/469 av. J.C.', :death => '399 av. J.C.'
    Author.create :name => 'Guillaume Apollinaire', :birth => '1880', :death => '1918'
    Author.create :name => 'Vincent Van Gogh', :birth => '1853', :death => '1890'
    Author.create :name => 'Emile Zola', :birth => '1840', :death => '1902'
    Author.create :name => 'Paul Verlaine', :birth => '1844', :death => '1896'
    Author.create :name => 'Martin Luther King', :birth => '1929', :death => '1968'
    Author.create :name => 'Mohamed Ali', :birth => '1942', :death => '2016'
    Author.create :name => 'Mère Teresa', :birth => '1910', :death => '1997'
    Author.create :name => 'Marie Curie', :birth => '1867', :death => '1934'
  end
end
