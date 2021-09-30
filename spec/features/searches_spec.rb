require 'rails_helper'
require 'capybara/rspec'

RSpec.describe SearchesController, type: :controller do
  it do
    params = {
      search: {
        description: 'this is a good question?',
      }
    }
    should permit(:description).
      for(:create, params: params).
      on(:search)
  end
end

describe 'the searching process', type: :feature do

  it 'should return an error with a simple word search' do
    visit '/searches/new'
    fill_in 'Description', with: 'What'
    click_button "Create Search"
    expect(page).to have_content "error"
  end

  it 'should return an error with a sentence less than 10 characters' do
    visit '/searches/new'
    fill_in 'Description', with: 'What is a'
    click_button "Create Search"
    expect(page).to have_content "error"
  end

  it 'should return create a new search when entering a complete question' do
    visit '/searches/new'
    fill_in 'Description', with: 'What is a a good car?'
    click_button "Create Search"
    expect(page).to have_content "Search was successfully created"
  end
end