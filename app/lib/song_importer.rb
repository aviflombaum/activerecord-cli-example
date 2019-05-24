class SongImporter

  def initialize(path)
    @path = path
  end

  def import!
    Dir.glob("#{@path}/**/**/*.mp3").each do |filename|
      song_filename = filename.split("/").last
      s = Song.create(:name => song_filename, :mp3_path => filename)
      puts "Successfully imported #{song_filename} (#{s.id})..."
    end
  end

end

