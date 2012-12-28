Bdu.helpers do
  def get_registered_users(registered_users_url = nil)
    # read from DB
    # Fetch update in the background
    registered_users_url ||= 'http://bigdatauniversity.com/web/registered_users.php'
    users_count = HTTParty.get(registered_users_url).body
    # Update in the DB
    # refresh in the view
    users_count
  end
end