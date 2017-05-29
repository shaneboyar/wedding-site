configure :development do
  set :database, 'sqlite3:db/database.db'
end

configure :production do
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')

 ActiveRecord::Base.establish_connection(
   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
   :host     => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )

 #Configure Carrierwave
  CarrierWave.configure do |config|
    config.root = File.dirname(__FILE__) + "/public"
  end
end