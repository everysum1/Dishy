require 'rails_helper'
describe 'search engine functionality', :type => :feature do
  it "searches by ingredients" do
    visit '/'
    within(".nav-bar") do
      fill_in 'search', with: 'maize'
    end
    click_button 'Search'
    expect(page).to have_content '8 Votes - Gumbo beet greens corn 7 Votes - Gumbo beet greens corn 6 Votes - Gumbo beet greens corn 6 Votes - Gumbo beet greens corn 5 Votes -
    Gumbo beet greens corn 5 Votes - Gumbo beet greens corn 5 Votes - Gumbo beet greens corn 5 Votes - Gumbo beet greens corn 4 Votes - Gumbo beet greens corn 3 Votes -
    Gumbo beet greens corn 2 Votes - Gumbo beet greens corn 2 Votes -
    Gumbo beet greens corn 1 Vote - Gumbo beet greens corn 1 Vote - Gumbo beet greens corn 0 Votes - Gumbo beet greens corn'
  end

  it "searches by title" do
    visit '/'
    within(".nav-bar") do
      fill_in 'search', with: 'celery'
    end
    click_button 'Search'
    expect(page).to have_content '9 Votes - Celery quandong swiss chard 9 Votes - Celery quandong swiss chard 8 Votes - Celery quandong swiss chard 8 Votes - Celery quandong swiss chard 8 Votes - Celery quandong swiss chard 7 Votes - Celery quandong swiss chard 7 Votes - Celery quandong swiss chard 7 Votes -
    Celery quandong swiss chard 6 Votes - Celery quandong swiss chard 6 Votes - Celery quandong swiss chard 5 Votes - Celery quandong swiss chard 
    3 Votes - Celery quandong swiss chard 1 Vote - Celery quandong swiss chard 1 Vote - Celery quandong swiss chard 0 Votes - Celery quandong swiss chard'
  end
end
