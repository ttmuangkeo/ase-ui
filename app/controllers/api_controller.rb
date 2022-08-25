class ApiController < ApplicationController
  layout 'blank'
  skip_before_action :verify_authenticity_token

  def get_agent
    res = Search.get_agent(params[:agentMasterKey])
    render :json => res
  end

  def get_brand
    res = Brand.get_brand(params[:companyid])
    render :json => res
  end

  def get_company
    res = Brand.get_company(params[:companyid])
    render :json => res
  end

end