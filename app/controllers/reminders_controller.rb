class RemindersController < ApplicationController
  before_action :set_reminder, only: %i[ show edit update destroy ]

  # GET /reminders or /reminders.json
  def index
    @reminders = Reminder.all
    @tags = Tag.all
  end

  # GET /reminders/1 or /reminders/1.json
  def show
    
  end

  # GET /reminders/today
  def show_today
    @tags = Tag.all
  end

  def show_done
    @tags = Tag.all
  end

  def toggle_status
    @reminder = Reminder.find(params[:id])
    @reminder.update(status: params[:status])
  end


  # GET /reminders/new
  def new
    @reminder = Reminder.new
    @tags = Tag.all
  end

  # GET /reminders/1/edit
  def edit
    @tags = Tag.all
  end

  # POST /reminders or /reminders.json
  def create
    @reminder = Reminder.new(reminder_params)

    respond_to do |format|
      if @reminder.save
        format.html { redirect_to reminder_url(@reminder), notice: "Reminder was successfully created." }
        format.json { render :show, status: :created, location: @reminder }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reminders/1 or /reminders/1.json
  def update
    respond_to do |format|
      if @reminder.update(reminder_params)
        format.html { redirect_to reminder_url(@reminder), notice: "Reminder was successfully updated." }
        format.json { render :show, status: :ok, location: @reminder }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reminders/1 or /reminders/1.json
  def destroy
    @reminder.destroy

    respond_to do |format|
      format.html { redirect_to reminders_url, notice: "Reminder was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reminder
      @reminder = Reminder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reminder_params
      params.require(:reminder).permit(:titulo, :descricao, :data, :hora, :prioridade, :status, :tag_id)
    end
end
