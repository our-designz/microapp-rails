class Snippet < ActiveRecord::Base

    validates :text, 
         presence: true,
         length: { minimum: 100 }
         
    
    def self.search(search)
	  where("text LIKE ?", "%#{search}%")
	end
	   
end
