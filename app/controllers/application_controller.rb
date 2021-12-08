class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get '/' do
    post = Post.all.order(:created_at)
    post.to_json
  end

  get '/categories' do
    category = Category.all
    category.to_json
  end

  get '/category/id=:id' do
    category = Category.find(params[:id])
    category.to_json
  end

  get '/category/name=:name' do
    category = Category.find_by(name: params[:name])
    category.to_json
  end

  get '/category_posts/name=:name' do
    category = Category.find_by(name: params[:name]).posts
    category.to_json
  end

  delete '/post/:id' do
    post = Post.find(params[:id])
    post.destroy
    post.to_json
  end

  post '/new_post' do
    post =
      Post.create(
        content: params[:content],
        image_url: params[:image_url],
        category_id: params[:category_id],
        contributor_name: params[:contributor_name],
        subject: params[:subject],
      )
    post.to_json
  end
end

# Post
fetch(
  'http://localhost:9292/new_post',
  {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body:
      JSON.stringify(
        {
          content: 'this is a post',
          image_url:
            'https://i2.wp.com/www.cssscript.com/wp-content/uploads/2020/12/Customizable-SVG-Avatar-Generator-In-JavaScript-Avataaars.js.png?fit=438%2C408&ssl=1',
          category_id: 1,
          contributor_name: 'harold',
          subject: 'new post',
        },
      ),
  },
)
# Delete
fetch(`http://localhost:9292/post/27`, { method: 'DELETE' })
  .then((r) => r.json)
  .then((deletedPost) => console.log(deletedPost))
