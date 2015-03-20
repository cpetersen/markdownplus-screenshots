require "markdownplus/webshots/version"

require "markdownplus"
require "uuid"
require "webshot"

module Markdownplus
  module Webshots
    class WebshotsHandler < Handler
      def execute(input, parameters, warnings, errors)
        output = nil
        warnings << "Webshots handler ignores input" if(input!=nil && !input.strip.empty?)
        if parameters==nil
          errors << "No url given"
        elsif parameters.count == 0
          errors << "No url given"
        else
          url = parameters.first
          filename = "#{UUID.generate}.png"
          begin
            WebshotsHandler.webshot.capture url, filename
            output = "![#{url}](#{filename})"
          rescue => e
            errors << "Error opening [#{url}] [#{filename}] [#{e.message}]"
          end
        end
        output
      end

      def self.webshot
        @@webshot ||= Webshot::Webshot.instance
      end
    end
    HandlerRegistry.register("webshot", WebshotsHandler)
  end
end
