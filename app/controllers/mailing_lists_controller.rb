class MailingListsController < ApplicationController


    def index
    @mailing_lists = MailingList.all
  end

  # GET
  def show
    @mailing_list = MailingList.find(params[:id])
    @mailing_lists = MailingList.all

    respond_to do |format|
        format.html 
        format.json { render json: @mailing_lists }
    end
  end

  # GET
  def new
    @mailing_list = MailingList.new
  end

  # POST 
  def create
    MailingList.create(mailing_list_params)
    redirect_to(root_path)
  end

  private
  def mailing_list_params
    params.require(:mailing_list).permit(:first_name, :last_name, :email_address)
  end


end
