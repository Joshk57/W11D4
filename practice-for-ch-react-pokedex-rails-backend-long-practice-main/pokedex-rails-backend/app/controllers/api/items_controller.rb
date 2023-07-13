class Api::ItemsController < ApplicationController

    def index
        @items = Item.all
        render json: @items
    end

    def show
        @item = Item.find(params[:id])
        render json: @item
    end

    def create
        @item = Item.new(item_params)
        if @item.save
            render :show
        else
            flash[:errors] = @item.errors.full_messages
        end

    end

    def update

    end

    def destroy

    end

    def item_params
        params.require(:item).permit(:pokemon_id,:name,:price,:happiness,:image_url)
    end
end
