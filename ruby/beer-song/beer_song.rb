class BeerSong

  def self.recite(start, verses)
    song = ""

    lyric = lambda do |number|
      if number == 2
        verse = "2 bottles of beer on the wall, " +
        "2 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "1 bottle of beer on the wall.\n"
      elsif number == 1
        verse = "1 bottle of beer on the wall, " +
        "1 bottle of beer.\n" +
        "Take it down and pass it around, " +
        "no more bottles of beer on the wall.\n"
      elsif number == 0
        verse = "No more bottles of beer on the wall, " +
        "no more bottles of beer.\n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
      else
        verse = "#{number} bottles of beer on the wall, " +
        "#{number} bottles of beer.\n" +
        "Take one down and pass it around, " +
        "#{number - 1} bottles of beer on the wall.\n"
      end
      song << verse
    end

    verses.times do |n|
      lyric.call(start)
      start -= 1
      song << "\n" unless n == verses - 1
    end

    song
  end

end

