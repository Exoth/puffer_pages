class ArticlesController < ApplicationController

  layout :puffer_pages

  def show
    @article = Article.where(:slug => params[:id]).first
  end

  def foo
    render 'moo/bar', :layout => 'puffer_pages'
  end

  def moo
    render 'moo'
  end

  def bar
    @page = Page.find_page 'bar'
    render @page
  end

  def drops
    @page = Page.find_page 'drops'
    @first = 1
    @second = 'two'
    render @page
  end

end
