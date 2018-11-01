require 'pg'
<<<<<<< HEAD
class Chitter
  def initialize(:id, :username, :tweets, :password)
=======

class Chitter
  def initialize(:id, :username, :peeps)
    @id = id
    @username = username
    @peeps = peeps
>>>>>>> 86b65ff2a40df42b8a81a948e5a662bdf942624c
  end

  def self.view
    #if ENV['ENVIRONMENT'] == 'test'
    #  connection = PG.connect(dbname: 'chitter_test')
    #else
    #  connection = PG.connect(dbname: 'chitter')
    #end
    connection = PG.connect(dbname: 'chitter')
    result = connection.exec("SELECT * FROM feed")
    result.map do |feed|
      Chitter.new(id: result[0]['id'], username: result[0]['username'], peeps: result[0]['peeps'])
    end
  end

  def self.create(:username, :peep)
    connection = PG.connect(dbname: 'chitter')
    result = connection.exec("INSERT INTO tweets (username, tweets) VALUES('#{params[:username]}', '#{params[:peep]}') RETURNING id, username, peeps")
    Chitter.new(id: result[0]['id'], username: result[0]['username'], peeps: result[0]['peeps'])
  end

end
