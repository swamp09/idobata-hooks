module Idobata::Hook
  class Esa < Base
    screen_name 'esa'
    icon_url hook_image_url('icon.png')
    template_name { "#{event_type}.html.haml" }
    helper Helper

    private

    def event_type
      payload.kind
    end

    def hide_body?
      value_to_boolean(params[:hide_body])
    end
  end
end
