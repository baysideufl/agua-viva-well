require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :username => "MyString",
      :email => "MyString",
      :phone => 1,
      :carrier => "MyString",
      :password_digest => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_username[name=?]", "user[username]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_phone[name=?]", "user[phone]"
      assert_select "input#user_carrier[name=?]", "user[carrier]"
      assert_select "input#user_password_digest[name=?]", "user[password_digest]"
    end
  end
end
