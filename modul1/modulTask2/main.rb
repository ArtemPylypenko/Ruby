#Task 2
class Phone
  attr_accessor :id, :lastName, :name, :fathersName, :address,
                :cardNumber, :debit, :credit, :timeCity, :timeCountry

  @@all = []

  def initialize(id, lastName, name, fathersName, address, cardNumber, debit, credit, timeCity, timeCountry)
      @id = id,
      @lastName = lastName
      @name = name
      @fathersName = fathersName
      @address = address
      @cardNumber = cardNumber
      @debit = debit
      @credit = credit
      @timeCity = timeCity
      @timeCountry = timeCountry
  end

  def self.all
    @@all
  end
  def show()
    @id.to_s + " " + @lastName.to_s + " " + @name.to_s + " " + @fathersName.to_s + " " + @debit.to_s + " " + @credit.to_s + " " + @timeCity.to_s + " " + @timeCountry.to_s+"\n"
  end

end

def methodA(time, users)
  users.select { |u| u.timeCity > time }.each { |u| print u.show() }
end
def methodB(users)
  users.select { |u| u.timeCountry.to_i > 0 }.each { |u| print u.show() }
end
def methodC(users)
  users.sort_by{|u| [u.lastName, u.name, u.fathersName]}.each { |u| print u.show() }
end

users = ([
  Phone.new(1, "User1Last", "User1First", "User1Fathers", "address1", 11, 12, 0, 10, 0),
  Phone.new(2, "User2Last", "User2First", "User2Fathers", "address2", 22, 22, 10, 34, 7),
  Phone.new(3, "User3Last", "User3First", "User3Fathers", "address3", 33, 23, 0, 50, 6),
  Phone.new(4, "User4Last", "User4First", "User4Fathers", "address4", 44, 24, 0, 34, 0),
])
print "A\n"
methodA(12, users)
print "B\n"
methodB(users)
print "C\n"
methodC(users)
