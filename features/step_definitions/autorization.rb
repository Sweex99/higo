Given 'I am on the autorization page' do
  @user = FactoryBot.create(:user)

  visit '/users/sign_in'
  fill_in 'user_email', with: @user.email
  fill_in 'user_password', with: 'test123'
  click_button 'Log in'
end

Then 'I should see  home page' do
  page.has_content?
end