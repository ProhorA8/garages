Rails.application.routes.draw do
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end
  draw :admin

  root 'welcome#show', as: 'home'

  # lavrik - this used?
  resource :users, except: :update
end
