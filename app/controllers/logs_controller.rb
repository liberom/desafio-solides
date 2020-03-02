class LogsController < ApplicationController
  # before_action :find_project
  before_action :set_log, only: [:show, :edit, :update, :destroy]


  # GET /logs
  # GET /logs.json
  def index
    @logs = Log.all
  end

  # GET /logs/1
  # GET /logs/1.json
  def show
  end

  # GET /logs/new
  def new
    @log = Log.new
  end

  # GET /logs/1/edit
  def edit
  end

  # POST /logs
  # POST /logs.json
  def create
    @log = Log.new(log_params)
    @log.user = current_user


    respond_to do |format|
      if @log.save
        if @log.tag_id == 3
          duration = Time.at(duracao_almoco).utc.strftime('%H:%M:%S')
          date = @log.created_at.strftime('%Y/%m/%d')
          event = Event.new(duration: duration, date: date, log_id: @log.id)
          event.save
        elsif @log.tag_id == 4
          duration = Time.at(duracao_trabalho).utc.strftime('%H:%M:%S')
          date = @log.created_at.strftime('%Y/%m/%d')
          event = Event.new(duration: duration, date: date, log_id: @log.id)
          event.save
        end
        format.html { redirect_to logs_path, notice: 'Log was successfully created.' }
        format.json { render :show, status: :created, location: @log }
      else
        format.html { render :new }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logs/1
  # PATCH/PUT /logs/1.json
  def update
    respond_to do |format|
      if @log.update(log_params)
        format.html { redirect_to @log, notice: 'Log was successfully updated.' }
        format.json { render :show, status: :ok, location: @log }
      else
        format.html { render :edit }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logs/1
  # DELETE /logs/1.json
  def destroy
    @log.destroy
    respond_to do |format|
      format.html { redirect_to logs_url, notice: 'Log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_project
      @project = Project.find(params[:project_id])
    end

    def set_log
      @log = Log.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def log_params
      params.require(:log).permit(:user_id, :project_id, :tag_id)
    end

    def lista_logs
      hour_array = []
      logs_list = Log.where(:created_at => Time.now.midnight..(Time.now.midnight + 1.day))
      logs_list.each do |log|
        case log.tag_id
        when 1
          hour_array << log.created_at
        when 2
          hour_array << log.created_at
        when 3
          hour_array << log.created_at
        when 4
          hour_array << log.created_at
        end
      end
      hour_array
    end

  def duracao_almoco
    array = lista_logs
    TimeDifference.between(array[1], array[2]).in_seconds
  end

  def duracao_trabalho
    array = lista_logs
    period1 = TimeDifference.between(array[0], array[1]).in_seconds
    period2 = TimeDifference.between(array[2], array[3]).in_seconds
    period1 + period2
  end

end
