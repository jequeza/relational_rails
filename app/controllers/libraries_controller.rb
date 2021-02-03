class LibrariesController < ApplicationController
  def index
    @libraries = Library.all
  end

  def new

  end

  def create
    library = Library.new({
      name: params[:library][:name],
      online_membership: params[:library][:online_membership],
      current_employees: params[:library][:current_employees],
      created_at: params[:library][:created_at],
      updated_at: params[:library][:updated_at]
      })

      library.save

      redirect_to '/libraries'
  end
end