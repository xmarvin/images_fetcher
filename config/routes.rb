Rails.application.routes.draw do
  match '/fetch' => 'requests#fetch'
end

