class DetailsController < ApplicationController

  require 'StringService'

  def new

  end

  def crete
    name = params[:name]
    @total_vowels_count = StringServices.calculate_vowels(name)
    @is_bad_words_included = StringServices.find_bad_words(name)
    @is_correct_symbol = StringServices.check_symbol(name)

  end
end
