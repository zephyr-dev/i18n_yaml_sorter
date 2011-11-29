require 'i18n_yaml_sorter'

namespace :i18n do

  desc "Sort locales keys in alphabetic order. Sort all locales if no path parameter given"
  
  task :sort, [:path_to_file] => :environment do |t , args|
    locales = args[:path_to_file] || Dir.glob("#{Rails.root}/config/locales/**/*.yml")

    locales.each do |locale_path|
      sorted_contents = File.open(locale_path) { |f| I18nYamlSorter::Sorter.new(f).sort }
      File.open(locale_path, 'w') { |f|  f << sorted_contents}
    end
  end
  
end