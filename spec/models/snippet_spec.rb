require 'rails_helper'

RSpec.describe Snippet, type: :model do
    it "is not valid without a snippet" do
	    snippet = Snippet.new(snippet: nil)
        expect(snippet).not_to be_valid
	end
	
	it "is valid with proper values" do
		snippet = Snippet.new snippet:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
		snippet.should be_valid
    end
end
