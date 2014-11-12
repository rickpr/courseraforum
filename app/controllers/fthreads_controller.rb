class FthreadsController < ApplicationController
  before_action :set_fthread, only: [:show, :edit, :update, :destroy]

  # GET /fthreads
  # GET /fthreads.json
  def index
    @fthreads = Fthread.all
  end

  # GET /fthreads/1
  # GET /fthreads/1.json
  def show
  end

  # GET /fthreads/new
  def new
    @fthread = Fthread.new
  end

  # GET /fthreads/1/edit
  def edit
  end

  # POST /fthreads
  # POST /fthreads.json
  def create
    @fthread = Fthread.new(fthread_params)

    respond_to do |format|
      if @fthread.save
        format.html { redirect_to @fthread, notice: 'Fthread was successfully created.' }
        format.json { render :show, status: :created, location: @fthread }
      else
        format.html { render :new }
        format.json { render json: @fthread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fthreads/1
  # PATCH/PUT /fthreads/1.json
  def update
    respond_to do |format|
      if @fthread.update(fthread_params)
        format.html { redirect_to @fthread, notice: 'Fthread was successfully updated.' }
        format.json { render :show, status: :ok, location: @fthread }
      else
        format.html { render :edit }
        format.json { render json: @fthread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fthreads/1
  # DELETE /fthreads/1.json
  def destroy
    @fthread.destroy
    respond_to do |format|
      format.html { redirect_to fthreads_url, notice: 'Fthread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fthread
      @fthread = Fthread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fthread_params
      params.require(:fthread).permit(:user_id, :posted_time, :last_updated_time, :last_updated_user, :deleted, :is_spam, :stickied, :approved, :unresolved, :instructor_replied, :num_posts, :num_views, :votes, :locked, :anonymous, :title, :triage_sync_status, :triage_status, :private, :problem_id, :link, :_reporter_link, :_thread_can_be_resolved_without_triage, :_viewer_can_resolve_with_triage, :tags, :crumbs, :start_page, :num_pages, :_viewer_subscription, :_viewer_can_edit_title, :_viewer_can_resolve_without_triage, :_viewer_can_delete, :_viewer_can_toggle_private, :forum_id)
    end
end
