class EndPointsController < ApplicationController
  def index
    @endpoints = {
      postman_doc: "https://documenter.getpostman.com/view/12318086/TVCcWTzB",
      github_repo: "https://github.com/Ahmed-Abd-elhamid/ecommerce-api" ,
      category: [
        {
          method: 'GET',
          path: request.url + 'categories',
          description: ''
        },
        {
          method: 'GET',
          path: request.url + 'categories/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url + 'categories',
          params: 'title',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url + 'categories/:id',
          params: 'title',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url + 'categories/:id',
          description: ''
        }
      ],
      sub_category: [
        {
          method: 'GET',
          path: request.url + 'sub_categories',
          description: ''
        },
        {
          method: 'GET',
          path: request.url + 'sub_categories/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url + 'sub_categories',
          params: 'title, category_id',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url + 'sub_categories/:id',
          params: 'title, category_id',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url + 'sub_categories/:id',
          description: ''
        }
      ],
      item: [
        {
          method: 'GET',
          path: request.url + 'items',
          description: ''
        },
        {
          method: 'GET',
          path: request.url + 'items',
          params: 'search',
          description: ''
        },
        {
          method: 'GET',
          path: request.url + 'items/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url + 'items',
          params: 'title, brand, description, stock, price, images[], sub_category_id',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url + 'items/:id',
          params: 'title, brand, description, stock, price, images[], sub_category_id',
          description: ''
        }
      ],
      cart: [
        {
          method: 'GET',
          path: request.url + 'carts',
          description: ''
        },
        {
          method: 'GET',
          path: request.url + 'carts/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url + 'carts',
          params: 'item_id, user_id, quantity',
          description: ''
        },
        {
          method: 'POST',
          path: request.url + 'carts/items/:id',
          params: 'item_id',
          description: 'Remove Item from cart'
        },
        {
          method: 'DELETE',
          path: request.url + 'carts/:id',
          description: ''
        }
      ],
      order: [
        {
          method: 'GET',
          path: request.url + 'orders',
          description: ''
        },
        {
          method: 'GET',
          path: request.url + 'orders/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url + 'orders',
          params: 'user_id, country, city, address, telephone',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url + 'orders/:id',
          params: 'country, city, address, telephone',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url + 'orders/deliver/:id',
          description: 'Update Order state to "delivered"'
        },
        {
          method: 'DELETE',
          path: request.url + 'orders/:id',
          description: ''
        }
      ],
      user: [
        {
          method: 'GET',
          path: request.url + 'users',
          description: ''
        },
        {
          method: 'GET',
          path: request.url + 'users/:id',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url + 'users/:id',
          description: ''
        },
        {
          method: 'POST',
          path: request.url + 'users',
          params: 'name, email, password, password_confirmation, avatar',
          description: ''
        },
        {
          method: 'PUT',
          path: request.url + 'users',
          params: 'password, password_confirmation',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url + 'users',
          description: ''
        },
        {
          method: 'POST',
          path: request.url + 'users/sign_in',
          params: 'email, password',
          description: ''
        },
        {
          method: 'DELETE',
          path: request.url + 'users/sign_out',
          params: 'uid, access-token, client',
          description: ''
        }
      ]
    }

    render json: @endpoints
  end
end