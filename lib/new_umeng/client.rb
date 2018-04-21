require 'json'
require 'faraday'
require 'digest'
require 'new_umeng/send_message'

module new_umeng
  new_umeng_HOST = 'http://msg.umeng.com'

  class Client
    include new_umeng::SendMessage

    attr_accessor :appkey, :app_master_secretm, :plantform

    def initialize(appkey, app_master_secret, plantform)
      @plantform = plantform
      @appkey = appkey
      @app_master_secret = app_master_secret
    end
  end
end
