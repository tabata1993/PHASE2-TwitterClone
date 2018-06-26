class NarratesController < ApplicationController
  before_action :set_narrate,only:[:edit,:update,:destroy]
  before_action :login_sender,only:[:confirm,:create,:new,:edit,:update,:destroy]

  def home
  end

  def confirm
    @narrate = Narrate.new(narrate_params)
    @narrate.user_id = current_user.id
    render :new if @narrate.invalid?
  end

  def index
    @narrates = Narrate.all
  end

  def create
    @narrate = Narrate.create(narrate_params)
    @narrate.user_id = current_user.id
    if @narrate.save
      redirect_to narrates_path,notice:"つぶやきを新しく投稿しました！"
    else
      render'new'
    end
  end

  def new
    if params[:back]
      @narrate = Narrate.new(narrate_params)
    else
      @narrate = Narrate.new
    end
  end

  def edit
  end

  def update
    if @narrate.update(narrate_params)
      redirect_to narrates_path,notice:"編集しました！"
    else
      render'edit'
    end
  end

  def destroy
    @narrate.destroy
    redirect_to narrates_path,notice:"削除しました！"
  end

  private
  def narrate_params
    params.require(:narrate).permit(:content, :user_id)
  end

  def set_narrate
    @narrate = Narrate.find(params[:id])
  end

  def login_sender
    if logged_in?
    else
      redirect_to new_session_path,notice:"Narraterを使うにはログインしてください"
    end
  end

end
