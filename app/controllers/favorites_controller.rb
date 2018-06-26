class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.create(narrate_id: params[:narrate_id])
    redirect_to narrates_path, notice: "#{favorite.narrate.user.name}さんのブログをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to narrates_path, notice: "#{favorite.narrate.user.name}さんのブログをお気に入り解除しました"
  end

end
