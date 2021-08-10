
class DatabaseDriver
  def initialize(database, user, password)
    @database = database
    @user = user
    @password = password
    @connected = false
  end

  def connect
    # connects to database
    @connected = true
    puts "Connected to #{@database} as #{@user}."
  end

  def disconnect
    # disconnects from database
    puts "Disconnected."
  end

  def execute(sql)
    raise "Not connected!" unless @connected
    puts "Executing #{sql}..."
    # executes SQL
  end

  def self.open(database, user, password)
    databasedriver = self.new(database, user, password)
    databasedriver.connect

    return databasedriver unless block_given?

    begin
      yield(databasedriver)
    ensure
      databasedriver.disconnect
    end
  end

end

DatabaseDriver.open("my_database", "admin", "secret") do |driver|
  driver.execute("SELECT * FROM ORDERS")
  driver.execute("SELECT * FROM USERS")
end

DatabaseDriver.open("my_database", "admin", "secret") do |driver|
  driver.execute("DELETE * FROM ORDERS")
  raise "Boom!"
  driver.execute("DELETE * FROM USERS")
end

driver = DatabaseDriver.open("my_database", "admin", "secret")
driver.execute("SELECT * FROM ORDERS")
driver.execute("SELECT * FROM USERS")
driver.disconnect
