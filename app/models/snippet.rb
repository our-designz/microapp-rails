class Snippet < ActiveRecord::Base
    validates :snippet, presence: true
    
    def self.search(search)
	    where("snippet LIKE ?", "%#{search}%")
	end
end
