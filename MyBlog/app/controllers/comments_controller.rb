class CommentsController < ApplicationController
    def create
        @blog = Blog.find(params[:blog_id])

        @comment = @blog.comments.create(comment_params)

        redirect_to blog_path(@blog) 
    end

    def destroy
        @comment.destroy
        @blog = Blog.find(params[:blog:id])
        respond_to do |format|
            format.html { redirect_to blog_path(@blog), notice: 'Blog was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
    private
    	def comment_params
      		params.require(:comment).permit(:Per, :body)
    end
end
