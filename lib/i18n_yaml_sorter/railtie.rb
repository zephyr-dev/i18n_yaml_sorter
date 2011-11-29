module I18nYamlSorter
  if defined? Rails::Railtie
    require 'rails'
    class Railtie < Rails::Railtie
      rake_tasks do
        load "tasks/i18n_yaml_sorter.rake"
      end
    end
  end
end