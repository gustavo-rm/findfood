class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all.order("name")
  end

  def homepage
    @restaurants = Restaurant.all.order("name")
    @restaurants = @restaurants.joins("INNER JOIN dishes ON dishes.restaurant_id = restaurants.id AND dishes.category_id = ", params[:category_id]).distinct unless params[:category_id].blank?
    @dishes = Dish.all.where('UPPER(description) like ?', "%#{params[:search].to_s.upcase}%") unless params[:search].blank?
    @restaurants = Restaurant.includes(:dishes).where('dishes.id' => @dishes.each(&:id)) unless params[:search].blank?
    search_dish(params[:search].to_s)
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show_restaurant
    @restaurants = Restaurant.find(params[:restaurant_id])
    @dishes = Dish.where("restaurant_id = ?", params[:restaurant_id])
    @search = $dish
  end

  def search_dish(term)
    $dish = term
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  def show
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone)
    end
end
