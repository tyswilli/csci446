class AddOrderIdToLineItemsController < ApplicationController
  # GET /add_order_id_to_line_items
  # GET /add_order_id_to_line_items.json
  def index
    @add_order_id_to_line_items = AddOrderIdToLineItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @add_order_id_to_line_items }
    end
  end

  # GET /add_order_id_to_line_items/1
  # GET /add_order_id_to_line_items/1.json
  def show
    @add_order_id_to_line_item = AddOrderIdToLineItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add_order_id_to_line_item }
    end
  end

  # GET /add_order_id_to_line_items/new
  # GET /add_order_id_to_line_items/new.json
  def new
    @add_order_id_to_line_item = AddOrderIdToLineItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add_order_id_to_line_item }
    end
  end

  # GET /add_order_id_to_line_items/1/edit
  def edit
    @add_order_id_to_line_item = AddOrderIdToLineItem.find(params[:id])
  end

  # POST /add_order_id_to_line_items
  # POST /add_order_id_to_line_items.json
  def create
    @add_order_id_to_line_item = AddOrderIdToLineItem.new(params[:add_order_id_to_line_item])

    respond_to do |format|
      if @add_order_id_to_line_item.save
        format.html { redirect_to @add_order_id_to_line_item, notice: 'Add order id to line item was successfully created.' }
        format.json { render json: @add_order_id_to_line_item, status: :created, location: @add_order_id_to_line_item }
      else
        format.html { render action: "new" }
        format.json { render json: @add_order_id_to_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /add_order_id_to_line_items/1
  # PUT /add_order_id_to_line_items/1.json
  def update
    @add_order_id_to_line_item = AddOrderIdToLineItem.find(params[:id])

    respond_to do |format|
      if @add_order_id_to_line_item.update_attributes(params[:add_order_id_to_line_item])
        format.html { redirect_to @add_order_id_to_line_item, notice: 'Add order id to line item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @add_order_id_to_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_order_id_to_line_items/1
  # DELETE /add_order_id_to_line_items/1.json
  def destroy
    @add_order_id_to_line_item = AddOrderIdToLineItem.find(params[:id])
    @add_order_id_to_line_item.destroy

    respond_to do |format|
      format.html { redirect_to add_order_id_to_line_items_url }
      format.json { head :no_content }
    end
  end
end
