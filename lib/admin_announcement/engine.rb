module AdminAnnouncement
  class Engine < ::Rails::Engine
    isolate_namespace AdminAnnouncement

    initializer 'admin_announcement', before: :load_config_initializers do |app|
      Rails.application.routes.append do
        mount AdminAnnouncement::Engine, at: '/announcement'
      end

      config.paths["db/migrate"].expanded.each do |expanded_path|
        Rails.application.config.paths["db/migrate"] << expanded_path
      end
    end
  end
end
