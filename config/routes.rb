Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root "dashboard#home", as: "root"

  get "blogs#homeBlogs", to: "blogs#homeBlogs",  as: "public"



  get "/index/usuarios", to: "users#index", as: "indexUsers"

  get "/newUsuario", to: "users#newUser", as: "newUser"

  post "/createUsuario", to: "users#create", as: "createUser"
  
  get "/showUsuario", to: "users#show", as: "showUser"

  get "/Usuario/:id", to: "users#edit", as: "editUser"

  put "/Usuario/update/:id", to: "users#update", as: "updateUser"

  patch "/Usuario/update/:id", to: "users#update"

  delete "/Usuario/delete/:id_user", to: "users#delete", as: "deleteUser"



  get "/blog", to: "blogs#index", as: "indexBlogs"

  get "/showBlog/:id_blog", to: "blogs#showBlog", as: "showBlog"

  get "/showBlogAdmin/:id_blog", to: "blogs#showBlogAdmin", as: "showBlogAdmin"

  get "/newBlog", to: "blogs#newBlog", as: "newBlogs", as: "newBlog"

  post "/createBlog", to: "blogs#createBlog", as: "createBlog"

  get "/Blog/edit/:id", to: "blogs#editBlog", as: "editBlog"

  put "/Blog/updateBlog/:id", to: "blogs#updateBlog", as: "updateBlog"

  patch "/Blog/updateBlog/:id", to: "blogs#updateBlog"

  delete "/Blog/deleteBlog/:id", to: "blogs#deleteBlog", as: "deleteBlog"


  #get "/comentarios", to: "comentarios#index", as: "indexComentarios"

  post "/addComentario", to: "blogs#addComentario", as: "addComentario"

  delete "/Comentario/delete/:id_comentario", to: "blogs#deleteComentario", as: "deleteComentario" 

  #password_digest
  #password_digest
  #<%= image_tag image.portada.thumb.url, :class=>'figure-img img-fluid rounded' %>

  get "/categoria", to: "categoria_blogs#index", as: "indexCategoria"

  get "/newCategoria", to: "categoria_blogs#newCategoria", as: "newCategoria"

  post "/createCategoria", to: "categoria_blogs#createCategoria", as: "createCategoria"

  get "/Categoria/:id_categoria", to: "categoria_blogs#editCategoria", as: "editCategoria"

  put "/Categoria/update/:id_categoria", to: "categoria_blogs#updateCategoria", as: "updateCategoria"

  patch "/Categoria/update/:id_categoria", to: "categoria_blogs#updateCategoria"

  delete "/Categoria/delete/:id_categoria", to: "categoria_blogs#deleteCategoria", as: "deleteCategoria"





end
