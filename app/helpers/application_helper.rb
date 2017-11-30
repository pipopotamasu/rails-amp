module ApplicationHelper
  def amp_ready?
    defined?(@amp_ready) && @amp_ready == true
  end
end
