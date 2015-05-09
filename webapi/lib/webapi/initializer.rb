# -*- coding: utf-8 -*-

module Webapi
  module Initializer
    def self.included(klass)
      klass.extend(ClassMethods)
    end

    module ClassMethods
      # def conf
      #   Webapi::Configurations.last
      # end

      # def load_conf(conf_class, files = nil)
      #   Webapi::Configurations.load(conf_class, files)
      # end

      def run_initializers(*files)
        unless Webapi::Configurations.loaded?
          raise "Complete the configuration prior to run_initializers()."
        end

        @files ||= []
        if files.length == 0
          @files << "*"
        else
          @files = files
        end

        initializer_hooks.each { |p|
          p.call
        }
      end

      def initializer_hooks(&blk)
        @initializer_hooks ||= []
        if blk
          @initializer_hooks << blk
        end
        @initializer_hooks
      end
    end
  end
end
