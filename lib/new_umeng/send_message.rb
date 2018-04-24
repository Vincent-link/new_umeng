require 'new_umeng/services'
require 'new_umeng/json_body'

module NewUmeng
  module SendMessage
    include NewUmeng::Services
    include NewUmeng::JsonBody

    # 广播
    def push_broadcast(opts={})
      params = {
        type: 'broadcast',
        production_mode: opts[:production_mode]
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
        device_tokens: device_tokens,
        type: 'unicast',
        production_mode: opts[:production_mode]
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
        device_tokens: device_tokens,
        type: 'listcast',
        production_mode: opts[:production_mode]
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

    # 组播
    def push_groupcast(filter, opts={})
      params = {
        type: 'groupcast',
        filter: {
          where: {
            and: {
              or: filter
            }
          }
        },
        production_mode: opts[:production_mode]
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
