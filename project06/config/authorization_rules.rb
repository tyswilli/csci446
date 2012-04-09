authorization do
  role :admin do
    has_permission_on [:users, :games], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    has_permission_on [:user_sessions], :to => [:new, :create,:destroy]
  end
  role :user do
      has_permission_on :games, :to => [:index, :show, :new, :create, :edit, :update]
      has_permission_on :games, :to => [:index, :show, :edit, :update]
      has_permission_on [:user_sessions], :to => [:new, :create,:destroy]
  role :guest do
    has_permission_on :games, :to => [:index, :show]
    has_permission_on [:user_sessions], :to => [:new, :create]
  end
end