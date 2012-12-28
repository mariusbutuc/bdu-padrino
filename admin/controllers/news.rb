Admin.controllers :news do

  get :index do
    @news = News.all
    render 'news/index'
  end

  get :new do
    @news = News.new
    render 'news/new'
  end

  post :create do
    @news = News.new(params[:news])
    if @news.save
      flash[:notice] = 'News was successfully created.'
      redirect url(:news, :edit, :id => @news.id)
    else
      render 'news/new'
    end
  end

  get :edit, :with => :id do
    @news = News.find(params[:id])
    render 'news/edit'
  end

  put :update, :with => :id do
    @news = News.find(params[:id])
    if @news.update_attributes(params[:news])
      flash[:notice] = 'News was successfully updated.'
      redirect url(:news, :edit, :id => @news.id)
    else
      render 'news/edit'
    end
  end

  delete :destroy, :with => :id do
    news = News.find(params[:id])
    if news.destroy
      flash[:notice] = 'News was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy News!'
    end
    redirect url(:news, :index)
  end
end
