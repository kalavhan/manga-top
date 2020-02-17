# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Authentications', type: :feature do
  before :each do
    @user = User.create(name: 'User')
  end

  it 'Should Signup' do
    visit signup_path
    fill_in 'user[name]', with: 'Manny'
    click_button 'Create account'
    expect(page).to have_content('NEW ARTICLE')
  end

  it 'Should Signin' do
    visit signin_path
    fill_in 'session[name]', with: 'User'
    click_button 'Sign in'
    expect(page).to have_content('NEW ARTICLE')
  end

  it 'Should Signout' do
    visit signin_path
    fill_in 'session[name]', with: 'User'
    click_button 'Sign in'
    expect(page).to have_content('NEW ARTICLE')
    click_on 'Sign out'
    expect(page).to have_content('Sign in')
  end
end
