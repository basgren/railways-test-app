class MyParentController < ApplicationController

  def parent_action
    render_action_info(self, __method__)
  end

end
