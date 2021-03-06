class Message < ActiveRecord::Base
    belongs_to :conversation
    belongs_to :user
    validates_presence_of :body, :conversation_id, :user_id

    def message_time
     created_at.strftime(ā%m/%d/%y at %l:%M %pā)
    end
    
   end