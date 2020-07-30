# frozen_string_literal: true
class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    if session[:counter].nil?
      session[:counter] = 1
    elsif session[:counter] += 1
    end
  end
end
