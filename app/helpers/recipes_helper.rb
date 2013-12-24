module RecipesHelper

  BOOTSTRAP_ALERTS = {
    :notice => "info",
    :error  => "danger"
  }

  def bootstrap_alert_type_from_flash(flash_type=:notice)
    BOOTSTRAP_ALERTS.fetch(flash_type) {"info"}
  end

end
