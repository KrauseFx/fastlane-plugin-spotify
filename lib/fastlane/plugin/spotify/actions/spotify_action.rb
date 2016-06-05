module Fastlane
  module Actions
    class SpotifyAction < Action
      def self.run(params)
        spotify = File.join(`bundle show fastlane-plugin-spotify`.chomp, 'script', 'shpotify', 'spotify')

        if params[:spotify_song]
          play = params[:spotify_song]
        elsif params[:spotify_artist]
          play = params[:spotify_artist]
        elsif params[:spotify_album]
          play = params[:spotify_album]
        end
        play ||= 'eye of the tiger'
        sh "#{spotify} play #{play}" if play
      end

      def self.description
        "what better way to celebrate shipping than with a little eye of the tiger?"
      end

      def self.authors
        ["David Ohayon"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :spotify_artist,
                                  env_name: "TUNES_SPOTIFY_ARTIST",
                               description: "Specify the artist to play in Spotify",
                                  optional: true,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :spotify_album,
                                  env_name: "TUNES_SPOTIFY_ALBUM",
                               description: "Specify the album to play in Spotify",
                                  optional: true,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :spotify_song,
                                  env_name: "TUNES_SPOTIFY_SONG",
                               description: "Specify the song to play in Spotify",
                                  optional: true,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
