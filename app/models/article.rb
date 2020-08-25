#Placeholder for a model

class Article < ActiveRecord::Base

  attr_accessor :title, :content

  @@article = []

  def initialize(params)
    @title = params[:title]
    @content = params[:content]
    @@article << self
  end

  def self.all
    @@article
  end

  def self.delete
    @@article.clear
  end
end
