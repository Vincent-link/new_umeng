module NewUmeng
  module JsonBody
    def android_params(opts={})
      {
        payload: {
          display_type: 'message',
          body: {
            custom: opts[:key_value]
          }
        }
      }
    end

    def ios_params(opts={})
      {
        payload: {
          aps: {
            alert: opts[:key_value]["content"],
            sound: 'aiff'
          }
        }.merge(opts[:key_value])
      }
    end
  end
end
