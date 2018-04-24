require 'json'
require 'faraday'
require 'digest'
require 'new_umeng/send_message'

module NewUmeng
  UMENG_HOST = 'http://msg.umeng.com'

  class Client
    include NewUmeng::SendMessage

    attr_accessor :appkey, :app_master_secretm, :plantform

    def initialize(appkey, app_master_secret, plantform)
      @plantform = plantform
      @appkey = appkey
      @app_master_secret = app_master_secret
    end
  end
end
