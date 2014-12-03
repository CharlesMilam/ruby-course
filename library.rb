require 'pry-byebug'

class Book
  attr_reader :author, :title, :id
  attr_accessor :status

  @@book_id = 0

  def initialize(title, author)
    @author = author
    @title = title
    @@book_id += 1
    @id = @@book_id
    @status = "available"
  end

  def check_out
    if @status == "available"
      @status = "checked_out"
      return true
    else
      return false
    end
  end

  def check_in
    @status = "available"
  end
end

class Borrower
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Library
  attr_reader :books

  def initialize(name)
    @name = name
    @books = []
    @borrowers = {}
  end

  def register_new_book(title, author)
    @books << Book.new(title, author)
  end

  def check_out_book(book_id, borrower)
    book_to_check_out = @books.find {|book| book.id == book_id}
    if book_to_check_out.status != "checked_out"
      book_to_check_out.check_out
      @borrowers[book_id] = borrower.name
      book_to_check_out
    end
  end

  def check_in_book(book)
  end

  def available_books
  end

  def borrowed_books
  end

  def get_borrower(book_id)
    borrower = @borrowers[book_id]
  end
end
