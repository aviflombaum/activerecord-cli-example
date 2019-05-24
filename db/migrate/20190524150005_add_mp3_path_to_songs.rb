class AddMp3PathToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :mp3_path, :string
  end
end
