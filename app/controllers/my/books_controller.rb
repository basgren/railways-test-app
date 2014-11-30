class My::BooksController < ApplicationController

  respond_to :json

  # GET /books.json
  def index
    render_action_info(self, __method__)
  end

end
