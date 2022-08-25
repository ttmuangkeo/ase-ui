Rails.application.routes.draw do
  post 'api/get_layers_to_manage' => 'api#get_layers_to_manage'
  post 'api/get_layer/:layerid' => 'api#get_layer'
  post 'api/new_layer'
  get 'api/delete_layer/:layerid' => 'api#delete_layer'
  # get 'api/get_agent/:agentMasterKey' => 'api#get_agent'
  put 'api/get_agent/:agentMasterKey' => 'api#get_agent'
  get 'api/get_brand/:companyid' => 'api#get_brand'
  get 'api/get_company/' => 'api#get_company'
  
  get 'welcome/index'

  root 'welcome#index'
end
