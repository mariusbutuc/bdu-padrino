Admin.controllers :testimonials do

  get :index do
    @testimonials = Testimonial.all
    render 'testimonials/index'
  end

  get :new do
    @testimonial = Testimonial.new
    render 'testimonials/new'
  end

  post :create do
    @testimonial = Testimonial.new(params[:testimonial])
    if @testimonial.save
      flash[:notice] = 'Testimonial was successfully created.'
      redirect url(:testimonials, :edit, :id => @testimonial.id)
    else
      render 'testimonials/new'
    end
  end

  get :edit, :with => :id do
    @testimonial = Testimonial.find(params[:id])
    render 'testimonials/edit'
  end

  put :update, :with => :id do
    @testimonial = Testimonial.find(params[:id])
    if @testimonial.update_attributes(params[:testimonial])
      flash[:notice] = 'Testimonial was successfully updated.'
      redirect url(:testimonials, :edit, :id => @testimonial.id)
    else
      render 'testimonials/edit'
    end
  end

  delete :destroy, :with => :id do
    testimonial = Testimonial.find(params[:id])
    if testimonial.destroy
      flash[:notice] = 'Testimonial was successfully destroyed.'
    else
      flash[:error] = 'Unable to destroy Testimonial!'
    end
    redirect url(:testimonials, :index)
  end
end
