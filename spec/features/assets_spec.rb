require 'spec_helper'

feature 'Assets integration' do
  it 'provides tidy-table.js on the asset pipeline' do
    visit '/assets/tidy-table.js'
    expect(page.status_code).to be 200
  end

  it 'provides tidy-table.css on the asset pipeline' do
    visit '/assets/tidy-table.css'
    expect(page.status_code).to be 200
  end
end
