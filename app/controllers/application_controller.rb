class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def record_not_found
    redirect_back fallback_location: desserts_path, alert: "Registro no Existe"
  end
end
