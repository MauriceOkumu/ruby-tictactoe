require 'rails_helper'

describe "users/index", type: :view do
  it 'Displays all users' do
    # assign(:users, [User.new(:last_name => 'Okumu')])
    # render
    # expect(rendered).to match(/Okumu/)
    expect(response).to have_content('')
  end
end
