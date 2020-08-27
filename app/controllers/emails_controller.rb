class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::Lorem.sentence,body: Faker::Lorem.paragraphs)

    respond_to do |format|
      format.html { redirect_to emails_path }
      format.js { }
    end
  end

end
