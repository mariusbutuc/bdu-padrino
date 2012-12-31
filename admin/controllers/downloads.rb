Admin.controllers :downloads do

  get :index do
    @downloads = Download.all
    render 'downloads/index'
  end

  get :new do
    @download = Download.new
    render 'downloads/new'
  end

  post :create do
    @download = Download.new(params[:download])
    if @download.save
      flash[:notice] = 'Download was successfully created.'
      redirect url(:downloads, :edit, :id => @download.id)
    else
      render 'downloads/new'
    end
  end

  get :edit, :with => :id do
    @download = Download.find(params[:id])
    render 'downloads/edit'
  end

  put :update, :with => :id do
    @download = Download.find(params[:id])
    if @download.update_attributes(params[:download])
      flash[:notice] = 'Download was successfully updated.'
      redirect url(:downloads, :edit, :id => @download.id)
    else
      render 'downloads/edit'
    end
  end

  delete :destroy, :with => :id do
    download = Download.find(params[:id])
    if download.destroy
      flash[:notice] = 'Download was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Download!'
    end
    redirect url(:downloads, :index)
  end
end
