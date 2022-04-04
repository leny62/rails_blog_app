# app/views/posts/_post.json.jbuilder
json.extract! post, :id, :title, :description, :created_at, :updated_at
json.url post_url(post, format: :json)


# app/views/posts/index.json.jbuilder
json.array! @posts, partial: "posts/post", as: :post

# app/views/posts/show.json.jbuilder
json.partial! "posts/post", post: @post