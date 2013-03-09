# coding: utf-8
module MetaTitles
  module Action

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def build_meta_titles
        unless included_modules.include? InstanceMethods
          include InstanceMethods
        end
        before_filter :build_meta_title
      end
    end

    module InstanceMethods
      def yml_tag(type)
        controller = params[:controller]
        prefix = controller.include?('/') ? controller.split('/')[0] : 'root'
        action = params[:static_id] || action_name
        I18n.t("meta_titles.#{prefix}.#{controller_name}.#{action}")
      end

      def build_meta_title
        @meta_title = yml_tag("title") if yml_tag("title")
      end
    end
  end
end
