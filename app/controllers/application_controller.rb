class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :warning
  before_action :configure_permitted_parameters, if: :devise_controller?
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
  @activation = '11499-65226-26429-87211'
  @abouts = About.all
  @aboutimages = Aboutimage.all
  @aboutimages.each do |image|
    @aboutimage = image.image

  end
  @typesofrent = Typesofrent.all
  @types = Type.all
  @logos = Logo.all
  @logos.each do |logo|
    @logo = logo.image
  end
  @salesauto = Sale.where(type_id: '1')
  @saf = @salesauto.where(sales: false)
  @salesteh = Sale.where(type_id: '2')
  @stf = @salesteh.where(sales: false)

  @dealdones = Dealdone.all
  @dealdones.each do |image|
    @dealdone = image.image
  end
  @nophoto = Nophoto.all
  @nophoto.each do |nophoto|
    @no = nophoto.image
  end
  @time = Time.now
  @service_link = Service.where(name_ru: 'СМЕТНЫЙ АУТСОРСИНГ')
  @banners = Banner.all
  @contact = Contact.new
  @contactdetails = Contactdetail.all
  @news = New.all
  @favicon = Favicon.all
  @favicon.each do |f|
    @f = f.image
  end
end
protected
def configure_permitted_parameters
  added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
  devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
  devise_parameter_sanitizer.permit :account_update, keys: added_attrs
end
end
