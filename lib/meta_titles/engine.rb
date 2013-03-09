module MetaTitles
  class Engine < ::Rails::Engine
    isolate_namespace MetaTitles
    initializer "meta_titles" do |app|
      ActionController::Base.send :include, MetaTitles::Action
    end
  end
end
