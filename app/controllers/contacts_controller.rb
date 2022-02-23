class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  def create
    @contact = Contact.new(params[:contact])
    @contact.sender = 'tijenasb@mail.ru'
    @contact.request = request

    if @contact.deliver
      flash.now[:error] = nil
      redirect_to root_path + "#footer2", info: "#{t('send_ok')}"
    else
      flash.now[error] = nil


      redirect_to root_path + "#footer2", info: "#{t('not_send')}"
    end
  end
end
