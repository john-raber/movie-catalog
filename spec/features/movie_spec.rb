require 'rails_helper'
require 'capybara/rspec'

RSpec.describe 'movie_form.html.erb', type: :feature do
  describe 'movie creation' do
    it 'creates a new movie on submit' do
      visit '/movies/new'
      within('#movie_form') do
        fill_in 'Title', with: 'Se7en'
        fill_in 'Genre', with: 'Crime'
        fill_in 'Year', with: 1993
        fill_in 'Summary', with: 'A suspenseful movie'
      end
      click_button 'Create Movie'
      expect(page).to have_content 'Se7en'
      expect(page).to have_content 'Crime'
      expect(page).to have_content 1993
      expect(page).to have_content 'A suspenseful movie'
    end
  end

  describe 'updating movie' do
    before { @movie = Movie.create!(title: 'Toy Story', genre: 'Animated', year: 1995, summary: 'A story of toys')}
      it 'updates the movie on submit' do
        visit "movies/#{@movie.id}/edit"
        within('#movie_form') do
          fill_in 'Title', with: 'Se7en'
          fill_in 'Genre', with: 'Crime'
          fill_in 'Year', with: 1993
          fill_in 'Summary', with: 'A suspenseful movie'
        end
        click_button 'Update Movie'
        expect(page).to have_content 'Se7en'
        expect(page).to have_content 'Crime'
        expect(page).to have_content 1993
        expect(page).to have_content 'A suspenseful movie'
      end
  end
end
