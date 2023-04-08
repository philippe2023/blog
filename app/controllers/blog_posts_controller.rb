class BlogPostsController < ApplicationController
    def index
        @blog_posts = BlogPost.all
    end

    def show
        @blog_post = BlogPost.find(params[:id])
            # the following line serves to redirect to the root folder
            # in case the requested id do not exist to that we do not have an error message.
            rescue ActiveRecord::RecordNotFound
                redirect_to root_path
    end

    private
    def method_name
        
    end
end
