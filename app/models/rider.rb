class Rider < ApplicationRecord
#    belongs_to :flyer
    
    
    def self.search(search)
        
        where("firstname LIKE ? OR lastname LIKE ? ", "%#{search}%", "%#{search}%") 
    end
    
    
    def self.shirt(search)
        
        where(" shirt IS ? ", "#{search}") 
    end
    
end
