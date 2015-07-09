require 'rails_helper'

RSpec.describe "snippets/edit", type: :view do
  before(:each) do
    @snippet = assign(:snippet, Snippet.create!(
      :snippet => "MyText",
      :is_private => false
    ))
  end

  it "renders the edit snippet form" do
    render

    assert_select "form[action=?][method=?]", snippet_path(@snippet), "post" do

      assert_select "textarea#snippet_snippet[name=?]", "snippet[snippet]"

      assert_select "input#snippet_is_private[name=?]", "snippet[is_private]"
    end
  end
end
