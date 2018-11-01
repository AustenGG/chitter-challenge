require 'pg'
class Chitter
  def initialize(:id, :username, :tweets, :password)
  end
  def self.view
  end
  def self.create
    connection = PG.connect(dbname: 'chitter')
    connection.exec("INSERT INTO tweets (username, tweets) VALUES('#{params[:username]}', '#{params[:peep]}')")
  end

end
