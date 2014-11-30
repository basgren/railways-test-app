module Concerns
  module RouteTest

    include ActiveSupport::Concern


    def concern_action
      render_action_info(self, __method__)
    end

  end
end