module Fastlane
  module Helper
    class SpotifyHelper
      # class methods that you define here become available in your action
      # as `Helper::SpotifyHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the spotify plugin helper!")
      end
    end
  end
end
