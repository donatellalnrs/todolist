class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  def create
    @email = Email.create(object: Faker::Lorem.sentence,body: Faker::Lorem.paragraphs)

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  def delete
    
    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

end
