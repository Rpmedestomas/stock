require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      name: "MyString",
      email: "MyString",
      user_type: "MyString",
      status: "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[user_type]"

      assert_select "input[name=?]", "user[status]"
    end
  end
end
