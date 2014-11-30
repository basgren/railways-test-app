class BooksController < MyParentController

  include Concerns::RouteTest

  # GET /books
  def index
    render_action_info(self, __method__)
  end

  # GET /books/1
  def show
    render_action_info(self, __method__)
  end

  # GET /books/new
  def new
    render_action_info(self, __method__)
  end

  # GET /books/1/edit
  def edit
    render_action_info(self, __method__)
  end

  # POST /books
  def create
    render_action_info(self, __method__)
  end

  # PATCH/PUT /books/1
  def update
    render_action_info(self, __method__)
  end

  # DELETE /books/1
  def destroy
    render_action_info(self, __method__)
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :year, :publisher)
    end
end
