class HomeController < ApplicationController
   # before_action :authenticate_user!, :except => [:index, :category1, :category2, :category3, :category4, :category5, :category6, :category7, :show]
  
  def index
      unless user_signed_in?
        redirect_to '/users/sign_in'
      end
      @posts=Post.all
      @categories = Category.all
  end

  def category1
      @posts = Post.where(cat_name: "공부").reverse
  end

  def category2
      @posts = Post.where(cat_name: "사진")
  end

  def category3
      @posts = Post.where(cat_name: "커피")
  end

  def category4
      @posts = Post.where(cat_name: "음료")
  end
  
  def category5
      @posts = Post.where(cat_name: "빙수")
  end
  
  def category6
      @posts = Post.where(cat_name: "케잌")
  end
  
  def category7
      @posts = Post.where(cat_name: "기타")
  end

  def write
      new_post = Post.new
      new_post.title = params[:title]
      new_post.direction = params[:direction]
      new_post.image_url = params[:image_url]
      new_post.runtime = params[:runtime]
      new_post.content = params[:content]
      new_post.cat_name = params[:cat_name]
      new_post.save
      
      if new_post.cat_name == "공부"
        redirect_to "/category1"
      elsif new_post.cat_name == "사진"
        redirect_to "/category2"
      elsif new_post.cat_name == "커피"
        redirect_to "/category3"
      elsif new_post.cat_name == "밀크티"
        redirect_to "/category4"
      elsif new_post.cat_name == "음료"
        redirect_to "/category5"
      elsif new_post.cat_name == "빙수"
        redirect_to "/category6"
      elsif new_post.cat_name == "케이크"
        redirect_to "/category7"  
      else
        redirect_to "/category8"
      end  
  end

  def edit
      @one_post = Post.find(params[:id])
  end

  def update
    # authorize_action_for @post
    @one_post = Post.find(params[:id])
    
  end

  def update_post
      @one_post=Post.find(params[:id])
      @one_post.title = params[:title]
      @one_post.direction = params[:direction]
      @one_post.image_url = params[:image_url]
      @one_post.runtime = params[:runtime]
      @one_post.content = params[:content]
      @one_post.cat_name = params[:cat_name]
      @one_post.save
    
    redirect_to "/show/#{params[:id]}"
  end

  def show
      @one_post=Post.find(params[:id])
  end
  
  def destroy
      @one_post=Post.find(params[:id])
      @one_post.destroy
      
      redirect_to '/'
  end 
  
  def post_like
    like = Like.new
    like.post_id = params[:id]
    like.like_count = 0
    
    like.save
    
    
    redirect_to '/show/#{params[:p_id]}'
  end  
  
  def like
    
    one_like = Post.find(params[:id]).likes
    
    if one_like.empty? 
      like = Like.new
      like = Post.find(params[:id]).likes.create(like_count: 1)
      like.save      
    
    else
      one_like = Post.find(params[:id]).likes.find(params[:l_id])
      one_like.like_count += 1
      one_like.save
    end

    redirect_to :back
  end  
  
  def comment_create
    comment = Comment.new
    comment.email = params[:email]
    comment.user_id = params[:user_id]
    comment.content = params[:content]
    comment.post_id = params[:id]
    #comment = one_post.comments.create(email: params[:email], content: params[:content])
    comment.save
    
    redirect_to "/show/#{params[:id]}"
  end
  
  def comment_update
    @one_post = Post.find(params[:id])
    @one_comment = Post.find(params[:id]).comments.find(params[:c_id])
  end
  
  def comment_update_post
    one_comment = Post.find(params[:id]).comments.find(params[:c_id])
    one_comment.email = params[:email]
    one_comment.content = params[:content]
    one_comment.save
    
    redirect_to "/show/#{params[:id]}"
  end
  
  def comment_destroy
    
    comment = Post.find(params[:id]).comments.find(params[:c_id])
    comment.destroy
    
    redirect_to "/show/#{params[:id]}"
  end  

  
end
