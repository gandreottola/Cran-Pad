# frozen_string_literal: true

class IdeasController < ProtectedController
  before_action :set_idea, only: %i[update destroy]

  # GET /ideas
  def index
    @ideas = current_user.ideas.all

    render json: @ideas
  end

  # GET /ideas/:id
  def show
    render json: Idea.find(params[:id])
  end

  # POST /ideas
  def create
    @idea = current_user.ideas.build(idea_params)

    if @idea.save
      render json: @idea, status: :created, location: @idea
    else
      render json: @idea.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ideas/:id
  def update
    if @idea.update(idea_params)
      render json: @idea
    else
      render json: @idea.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ideas/:id
  def destroy
    @idea.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_idea
    @idea = current_user.ideas.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def idea_params
    params.require(:idea).permit(:name, :category, :description, :date)
  end
end
