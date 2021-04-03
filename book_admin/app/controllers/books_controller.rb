class BooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy]

  def show
    render :show
    respond_to do |format|
      format.html {redirect_to profile_path }
      format.json {render json: @book}
    end
  end

  redirect_to profile_path, status: 302

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to "/" }
      format.json { head :no_content }
    end
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def action_logger
    logger.info "around-before"
    yield
    logger.info "aroound-after"
  end
end

