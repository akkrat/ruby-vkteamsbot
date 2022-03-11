module VKTeams
module API 
  @@base_url = "https://myteam.mail.ru/bot/v1"
  def self.base_url
    @@base_url
  end
  def self.base_url=(base_url)
    @@base_url = base_url
  end
  def self.get_events
    @@base_url + '/events/get'
  end
  def self.send_text
    @@base_url + '/messages/sendText'
  end
  def self.edit_text
    @@base_url + '/messages/editText'
  end
  def self.delete_messages
    @@base_url + '/messages/deleteMessages'
  end
  def self.get_info
    @@base_url + '/chats/getInfo'
  end
  def self.get_admins
    @@base_url + '/chats/getAdmins'
  end
  def self.get_members
    @@base_url + '/chats/getMembers'
  end
  def self.get_blocked_users
    @@base_url + '/chats/getBlockedUsers'
  end
  def self.set_title
    @@base_url + '/chats/setTitle'
  end
  def self.set_about
    @@base_url + '/chats/setAbout'
  end
  def self.set_rules
    @@base_url + '/chats/setRules'
  end
  def self.pin_message
    @@base_url + '/chats/pinMessage'
  end
  def self.unpin_message
    @@base_url + '/chats/unpinMessage'
  end
  def self.block_user
    @@base_url + '/chats/blockUser'
  end
  def self.unblock_user
    @@base_url + '/chats/unblockUser'
  end
end
end