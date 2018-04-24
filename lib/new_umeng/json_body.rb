module NewUmeng
  module JsonBody
    def android_params(opts={})
      {
        payload: {
          display_type: opts[:key_value][:display_type],
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
            alert: opts[:key_value]["desc"],
            sound: 'aiff'
          }
        }.merge(opts[:key_value])
      }
    end
  end
end
