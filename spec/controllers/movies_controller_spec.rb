require 'rails_helper'

RSpec.describe MoviesController, :type => :controller do
  describe 'GET index' do
    it 'has a 200 status code' do
      get :index

      expect(response.status).to eq(200)
    end
  end

  describe 'GET show' do
    before { @movie = Movie.create!(title: 'Toy Story', genre: 'Animated', year: 1995, summary: 'A story of toys')}
      it 'has a 200 status code' do
        get :show, params: { id: @movie.id }

        expect(response.status).to eq(200)
      end
  end

  describe 'GET new' do
    it 'has a 200 status code' do
      get :new

      expect(response.status).to eq(200)
    end
  end

  describe 'GET edit' do
    before { @movie = Movie.create!(title: 'Toy Story', genre: 'Animated', year: 1995, summary: 'A story of toys')}
      it 'has a 200 status code' do
        get :edit, params: { id: @movie.id }

        expect(response.status).to eq(200)
      end
  end

  describe 'POST create' do
    it 'creates a new movie' do
      expect { post :create, params: {
        movie: {
          title: 'Movie Title',
          summary: 'Action packed thriller',
          genre: 'Action',
          year: 2017
        }
        }}.to change(Movie, :count).by(1)
    end
  end

  describe 'PATCH update' do
    before { @movie = Movie.create!(title: 'Movie to Update', genre: 'Comedy', year: 2004, summary: 'Hilarious movie')}
      it 'updates the movie with the correct info' do
        patch :update, params: {
          id: @movie.id,
          movie: {
            year: 2009
          }
        }
        expect(assigns(:movie)).to eq(@movie)
      end
  end

  describe 'DELETE' do
    before { @movie = Movie.create!(title: 'Movie to Update', genre: 'Comedy', year: 2004, summary: 'Hilarious movie')}

    it 'deletes the movie' do
      expect { post :destroy, params: {
        id: @movie.id
      }}.to change(Movie, :count).by(-1)
    end
  end
end
