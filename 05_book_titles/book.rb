class Book
  def title
    @title
  end

  def title=(title)
    @title=titleize(title)
  end

  private
    def titleize(title)
      little_words = %w{and but or for the a an in of}
      title.capitalize.split.map{|w| little_words.include?(w) ? w : w.capitalize}.join(" ")
    end
end
