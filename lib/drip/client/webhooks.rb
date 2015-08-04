module Drip
  class Client
    module Webhooks
      
      def webhooks
        get "#{account_id}/webhooks"
      end
      
      def fetch_webhook(webhook_id)
        get "#{account_id}/webhooks/#{webhook_id}"
      end
      
      def create_webhook(post_url)
        post "#{account_id}/webhooks", generate_resource("webhooks", { "post_url" => post_url })
      end
      
      def delete_webhook(webhook_id)
        delete "#{account_id}/webhooks/#{webhook_id}"
      end
      
    end
  end
end