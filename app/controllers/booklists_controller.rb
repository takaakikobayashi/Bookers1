class BooklistsController < ApplicationController
 
    def index
    	@books = Book.all
    	@book = Book.new
    end

    def create
        # ストロングパラメーターを使用
         book = Book.new(book_params)
        # DBへ保存する
         book.save
        # トップ画面へリダイレクト
        redirect_to booklist_path(book.id)
    end

    def show
    	@book = Book.find(params[:id])
    end
    def edit
    	@book = Book.find(params[:id])
    end
    def update
    	book = Book.find(params[:id])
    	book.update(book_params)
    	redirect_to booklist_path(book.id)
    end
    def destroy
    	book = Book.find(params[:id])
    	book.destroy
    	redirect_to booklists_path
    end
    private
   
    def book_params
        params.require(:book).permit(:title, :body)
    end


end
