class Search

  # def self.get_agent(agentMasterKey)
  #   RestClient.get "https://feed.moxi.bz/api/ase/realogy/agents/#{agentMasterKey}?api_key=rQME8YdXXhxXHjXPWDvw7PJAukQN7t3VBRc4jzjn88qDRqah2T"
  # end

  def self.get_agent(agentMasterKey)
    RestClient.put "https://feed.moxi.bz/api/ase/realogy/agents/#{agentMasterKey}?api_key=rQME8YdXXhxXHjXPWDvw7PJAukQN7t3VBRc4jzjn88qDRqah2T", {}
  end

end
