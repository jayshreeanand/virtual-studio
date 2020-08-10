class PagesController < ApplicationController
  layout 'dashboard', only: [:items, :events, :places]
  def home
  end

  def items
    @items = Item.all
  end

  def events
    @events = Event.all
  end

  def places
    @places = Place.all
  end
end
