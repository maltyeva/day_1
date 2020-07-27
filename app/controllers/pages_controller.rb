class PagesController < ApplicationController

  def about

  end

  def contact
    @member = params[:member]
    @batch = params[:batch]
    @members = ['pavel', 'pavel2', 'thibault', 'maria', 'audrey']
    if @member
      @members = @members.select { |member| member.starts_with?(@member)}
    end
  end

  def home
    @members = ['pavel', 'pavel', 'thibault', 'maria', 'audrey']
    say_hi("maria")
    # @greeting = "Hello maria"
  end

  def say_hi(name)
    @greeting = "Hello #{name}"
  end
end
