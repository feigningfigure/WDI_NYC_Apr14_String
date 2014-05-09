require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  setup do
    @movie = movies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post :create, movie: { actors: @movie.actors, director: @movie.director, genre: @movie.genre, movie_poster: @movie.movie_poster, plot: @movie.plot, rated: @movie.rated, released: @movie.released, runtime: @movie.runtime, title: @movie.title, writer: @movie.writer, year: @movie.year }
    end

    assert_redirected_to movie_path(assigns(:movie))
  end

  test "should show movie" do
    get :show, id: @movie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie
    assert_response :success
  end

  test "should update movie" do
    patch :update, id: @movie, movie: { actors: @movie.actors, director: @movie.director, genre: @movie.genre, movie_poster: @movie.movie_poster, plot: @movie.plot, rated: @movie.rated, released: @movie.released, runtime: @movie.runtime, title: @movie.title, writer: @movie.writer, year: @movie.year }
    assert_redirected_to movie_path(assigns(:movie))
  end

  test "should destroy movie" do
    assert_difference('Movie.count', -1) do
      delete :destroy, id: @movie
    end

    assert_redirected_to movies_path
  end
end
