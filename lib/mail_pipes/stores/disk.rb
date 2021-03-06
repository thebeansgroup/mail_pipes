module MailPipes
  module Stores
    class Disk
      include Singleton

      BUILD_PATH = '../../../../build/'.freeze
      EMAILS_PATH = BUILD_PATH + 'emails/'.freeze
      HTML_EXTENSION = '.html'.freeze
      TXT_EXTENSION = '.txt'.freeze

      def store_email(email)
        create_locale_dir(email)
        write(email)
      end

      private

      def create_locale_dir(email)
        path = locale_path(email)
        Dir.mkdir(path) unless File.directory?(path)
      end

      def locale_path(email)
        File.expand_path(EMAILS_PATH + email.locale, __FILE__)
      end

      def write(email)
        File.write(path(email, HTML_EXTENSION), email.html)
        File.write(path(email, TXT_EXTENSION), email.text)
      end

      def path(email, extension)
        locale_path(email) + '/' + email.name + extension
      end
    end
  end
end
