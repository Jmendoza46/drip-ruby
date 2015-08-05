module Drip
  class Client
    module Campaigns
      
      def campaigns
        get "#{account_id}/campaigns"  
      end
      
      def fetch_campaign(campaign_id)
        get "#{account_id}/campaigns/#{campaign_id}"
      end
      
      def activate_campaign(campaign_id)
        post "#{account_id}/campaigns/#{campaign_id}/activate"
      end
      
      def pause_campaign(campaign_id)
        post "#{account_id}/campaigns/#{campaign_id}/pause"
      end

      def campaign_subscribers(campaign_id, options = {})
        get "#{account_id}/campaigns/#{campaign_id}/subscribers", options
      end
      
    end
  end
end