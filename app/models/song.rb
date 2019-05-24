class Song < ActiveRecord::Base

  def play
    vlc    = VLC.new(0, 0)
    binding.pry
    media  = VLC.libvlc_media_new_path(vlc, "#{self.mp3_path}")
    player = VLC.libvlc_media_player_new_from_media(media)
    VLC.play(player)
  end

end


