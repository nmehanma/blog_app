require 'rails_helper'

RSpec.feature "Listing Articles" do 

  before do
    @article1 = Article.create(title: "The first article", body: "Lorem Ipsum")
    @article2 = Article.create(title: "The second article", body: "body of 2nd article")

  end 

  scenario "A user lists all articles" do
    visit "/"

    expect(page).to have_content(@article1.title)
    expect(page).to have_content(@article1.body)
    expect(page).to have_content(@article2.title)
    expect(page).to have_content(@article2.body)
    expect(page).to have_link(@article1.title)
    expect(page).to have_link(@article2.title)


  end

end
