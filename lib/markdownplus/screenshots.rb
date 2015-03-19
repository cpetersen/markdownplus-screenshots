require "markdownplus/screenshots/version"

require "markdownplus"
require "uuid"
require "webshot"

module Markdownplus
  module Screenshots
    class ScreenshotsHandler < Handler
      def execute(input, parameters, warnings, errors)
        output = nil
        warnings << "Screenshots handler ignores input" if(input!=nil && !input.strip.empty?)
        if parameters==nil
          errors << "No url given"
        elsif parameters.count == 0
          errors << "No url given"
        else
          url = parameters.first
          filename = "#{UUID.generate}.png"
          begin
            ScreenshotsHandler.webshot.capture url, filename
            output = "![#{url}](#{filename})"
          rescue => e
            errors << "Error opening [#{url}] [#{filename}] [#{e.message}]"
          end
        end
        output
      end

      def self.webshot
        @@webshot ||= Webshot::Screenshot.instance
      end
    end
    HandlerRegistry.register("screenshot", ScreenshotsHandler)
  end
end
