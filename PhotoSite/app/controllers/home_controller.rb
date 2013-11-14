class HomeController < ApplicationController
  def index
	@photos = Photo.all
  end

  def query
    @photos = Photo.all 
    #@tags = Tag.all
    @input = params[:query]
    values = @input.split(' ')  
    @regular_expression_1 = Regexp.new(values[0])
    @regular_expression_2 = Regexp.new(values[1])
    #@tag_results = @tags.select { |tag| (tag.key =~ regular_expression_1) && (tag.value =~ regular_expression_2)}
    #@results = @photos.select { |photo| @tag_results.include? (photo.id) }
    #@tag_results = Tag.where("key IS ? AND value IS ?", regular_expression_1, regular_expression_2)
    #@results = Photo.where("id IS ?", @tag_results[0])
    @results = @photos.select { |photo| photo.tags.select { |tag| (tag.key =~ @regular_expression_1)} && photo.tags.select { |tag| (tag.value =~ @regular_expression_2)} }

  end
end
