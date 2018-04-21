require 'new_umeng/services'
require 'new_umeng/json_body'

module new_umeng
  module SendMessage
    include new_umeng::Services
    include new_umeng::JsonBody

    module APIKey
      PRODUCTION_MODE = :production_mode
      DEVICE_TOKENS = :device_tokens
      PUSH_TYPE = :type
    end

    # 广播
    def push_broadcast(opts={})
      params = {
        PUSH_TYPE => 'broadcast',
        PRODUCTION_MODE => opts[PRODUCTION_MODE]
      }
      case @plantform
      when 'Android'
        params.merge! android_params(opts)
        push(params)
      when 'iOS'
        params.merge! ios_params(opts)
        push(params)
      end
    end

    # 单播
    def push_unicast(device_tokens, opts={})
      params = {
        DEVICE_TOKENS => device_tokens,
        PUSH_TYPE => 'unicast',
        PRODUCTION_MODE => opts[PRODUCTION_MODE]
      }
      case @plantform
      when 'Android'
        params.merge! android_params(opts)
        push(params)
      when 'iOS'
        params.merge! ios_params(opts)
        push(params)
      end
    end

    # 列播
    def push_listcast(device_tokens, opts={})
      params = {
        DEVICE_TOKENS => device_tokens,
        PUSH_TYPE => 'listcast',
        PRODUCTION_MODE => opts[PRODUCTION_MODE]
      }
      case @plantform
      when 'Android'
        params.merge! android_params(opts)
        push(params)
      when 'iOS'
        params.merge! ios_params(opts)
        push(params)
      end
    end

  end
end