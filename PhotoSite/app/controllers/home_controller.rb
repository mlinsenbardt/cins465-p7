class HomeController < ApplicationController
  def index
	@photos = Photo.all
  end

  def query
    @photos = Photo.all 
    @tags = Tag.all
    @input = params[:query]
    values = @input.split(' ')  
    @regular_expression_1 = Regexp.new(values[0])
    @regular_expression_2 = Regexp.new(values[1])
    @results = @tags.select { |tag| tag.key =~ @regular_expression_1 && tag.value =~ @regular_expression_2}.map {|tag| tag.photo}

  end
end
