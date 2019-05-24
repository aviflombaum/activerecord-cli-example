class ApplicationController

  def call
    main
  end

  def main
    puts "Welcome to Your CLI Jukebox!!!"
    puts "What would you like to do? index."
    input = gets.strip

    case input
    when "index"
      index
    end
  end

  def index
    Song.all.each do |song|
      puts "#{song.id} - #{song.name}"
    end
  end

end