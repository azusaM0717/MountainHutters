class Public::ReviewsController < ApplicationController
  def new
    @review = Review.new
    @huts = Hut.all
  end

  def index
    @reviews = Review.all
  end

  def show
    
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to reviews_path, notice: "レビューを投稿しました！"
    else
      @huts = Hut.all
      render :new, alert: "投稿に失敗しました。"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :rating, :hut_id, images: []).merge(rating: params[:review][:rating] || 1)
    # rating実装後に.merge以降の記述を削除する。ひとまずデータとして1が送られるようにする。
  end
end
