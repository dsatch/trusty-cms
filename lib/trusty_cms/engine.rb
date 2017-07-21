module TrustyCms
  class Engine < Rails::Engine
    paths["app/helpers"] = []
    initializer "trusty_cms.assets.precompile" do |app|
      app.config.assets.precompile += %w(admin/main.css admin.js ckeditor/config.js
        ckeditor/contents.css ckeditor/config.js ckeditor/styles.js
        ckeditor/skins/moono/editor.css ckeditor/lang/en.js
        rad_social/rad_screen.css lib/rad_social/captcha.js lib/rad_social/rad_email.js lib/rad_social/rad_widget.js)
    end
  end
end

require 'ckeditor'
