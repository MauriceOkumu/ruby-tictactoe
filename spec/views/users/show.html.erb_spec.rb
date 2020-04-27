require 'rails_helper'

describe "users/show.html.erb", type: :view do
  it 'Displays @user' do
    # assign(:user, User.find(params[:id]))
    render
    expect(rendered).to have_content(/Users/)
  end
end
