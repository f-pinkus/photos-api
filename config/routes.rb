Rails.application.routes.draw do
  get "/photos", controller: "photos", action: "index"
  post "/photos", controller: "photos", action: "create"
  get "/photos/:id", controller: "photos", action: "show"
  patch "/photos/:id", controller: "photos", action: "update"
  delete "/photos/:id", controller: "photos", action: "destroy"
end
