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
    @email = Email.create(object: Faker::Lorem.sentence,body: Faker::Lorem.paragraphs, read:false)

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end
  
  def edit
    @email = Email.find(params[:id])
  end

  def update
    @email = Email.find(params[:id])
    @email.update(read_params)

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

  private

  def read_params
    params.permit(:read, :object, :body)
  end


end
