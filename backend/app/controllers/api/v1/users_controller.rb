class Api::V1::UsersController < ApplicationController
  def index
    users = [
      { id: 1, name: 'Alice', role: 'admin' },
      { id: 2, name: 'Bob', role: 'user' }
    ]

    render json: { status: 'SUCCESS', message: 'Loaded users', data: users }
  end
end