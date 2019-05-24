module VLC
  extend FFI::Library
  ffi_lib '/Applications/VLC.app/Contents/MacOS/lib/libvlc.dylib'
  attach_function :version, :libvlc_get_version, [], :string
  attach_function :new, :libvlc_new, [:int, :int], :pointer
  attach_function :libvlc_media_new_path, [:pointer, :string], :pointer
  attach_function :libvlc_media_player_new_from_media, [:pointer], :pointer
  attach_function :play, :libvlc_media_player_play, [:pointer], :int
  attach_function :stop, :libvlc_media_player_stop, [:pointer], :int
  attach_function :pause, :libvlc_media_player_pause, [:pointer], :int
end

