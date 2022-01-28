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
  @time = Time.now
  @service_link = Service.where(name_ru: 'СМЕТНЫЙ АУТСОРСИНГ')

end

end
