class ApplicationController < ActionController::Base
  before_action :params_variable
  before_action :set_locale

private

def set_locale
I18n.locale = extract_locale || I18n.default_locale
end

def extract_locale
parsed_locale = params[:locale]
I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
end

private

def default_url_options
{ locale: I18n.locale }
end

def params_variable
  @types = Type.all
  @salesauto = Sale.where(type_id: '1')
  @salesteh = Sale.where(type_id: '2')
  @purchasesauto = Purchase.where(type_id: '1')
  @purchasesteh = Purchase.where(type_id: '2')
  @time = Time.now
end

end
