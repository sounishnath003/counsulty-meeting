class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_comment, only: [:create, :destroy]
    before_action :set_meeting
  
  
    private
  
    def set_comment
      # code here
      @comment = Comment.find(params[:id])
    end
  
    def comment_params
      params.require(:comment).permit(:id, :reply, :meeting_id)
    end
  
    public
  
    def destroy
      # code here
      @comment = @meeting.comment.find(params[:id])
      @comment.destroy

      redirect_to meeting_path(@meeting)
    end
  
    public
  
    def new
      # code here
      @comment = @meeting.comments.create(params[:reply, :meeting_id])
    end
  
    def create
      @comment = @meeting.comments.create(params[:comment].permit(:reply, :meeting_id, :current_user))
      @comment.user_id = current_user.id

      respond_to do |format|
         if comment.save 
          format.html { redirect_to meeting_path(@meeting) }
          format.js # redirect to create.js file //

      else 
        format.html{redirect_to  meeting_path(@meeting), notice: "Your comment did not save !. Please try again. "}
        format.js
      end
       
    end
    
  
    private
  
    def set_meeting
      # code here
      @meeting = Meeting.find(params[:meeting_id])
    end
  
  end
  