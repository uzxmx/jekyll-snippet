# frozen_string_literal: true

require 'fileutils'
require 'pathname'

module Jekyll
  module Snippet
    module Utils
      def self.cp_r(src, dest)
        Dir[File.join(src, '**/*')].each do |path|
          dest_path = File.join(dest, Pathname.new(path).relative_path_from(src))

          if File.directory? path
            FileUtils.mkdir_p dest_path
            next
          elsif File.symlink? path
            path = File.realpath(path)
          end
          FileUtils.cp(path, dest_path)
        end
      end
    end
  end
end
