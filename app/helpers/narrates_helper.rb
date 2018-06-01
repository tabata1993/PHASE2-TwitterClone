module NarratesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_narrates_path
    elsif action_name == 'edit'
      narrate_path
    end
  end


end
