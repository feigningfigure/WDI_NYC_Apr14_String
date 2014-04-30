
class Atm
	# - ATM should have a $ balance
	# - ATM should allow the client to make deposits and withdrawal
	# 	- both methods should perform the exchange between the client's account and ATM balance
	# -  ATM should have a to_s method, along the lines of: "Your new balance is: $something"

	attr_accessor :user, :balance 

	def initialize(user)
		@user = user									#presumes login security accepted
		@balance = nil
		update_balances()
		@last_deposit_amount = nil
		@last_withdrawl_amount = nil

	end

	def update_balances
		@balance = user.balance
	end


	def deposit(amount = last_deposit_amount)
		user.balance = user.balance + ammount
		update_balances
	end

	def withdrawl(amount = last_withdrawl_amount)
		user.balance = user.balance - ammount
		update_balances
	end


	
end




class Client
	# **- Client Object**
	# - Name your file `client.rb`
	# - Client should have a name
	# - Client should have a $ balance
	# - Client should have a to_s method, along the lines of: 
	#   "Welcome so-and-so. Your balance is such-and-such."
	attr_accessor :name, :balance
					#ToDo: firstname, lastname, SSN, 

	def initialize(name, account_balance = 0)
		@name = name
		@balance = balance
	end

	def to_s
		# account_balance_string_array = account_balance.split(//)
		# account_balance_dollars = account_balance(0...-2).join.to_i
		# account_balance_cents = account_balance(-2..-1).join.to_i
		return "Welcome #{@name}. Your account balance is $#{@account_balance}"
	end

end


# 
### Cash Bonus*

# **- Transaction Machine**
# 	- use the file `accounts.rb` for your "bank"
# 	- ask the client to enter his or her name
# 	- welcome the client and provide his or her current balance
# 	- allow the client to deposit money
# 	- allow the client to withdraw money
# 	- although we can't save the transaction for future sessions, allow the client's balance 
# 	  to be altered across any number of deposits and withdrawals within one session 
# 	  (these clients just like using the machine)


class Ui
	def display_menu
		puts "Please enter your name"
		name = gets.chomp
		puts name.name

		puts "(D)eposit or (W)ithdrawl?"
		gets choice.chomp.downcase

		case choice
		when "d"
		when "w"
		end


	end
end







client001 = Client.new('Joe')
client002 = Client.new('Jane', 10000)












# dummy entries

$client = {}

$client["Helena"] = Client.new("Helena Wells", "5.00")
$client["Thomas"] = Client.new("Thomas Jefferson", "25.00")
$client["Cotton"] = Client.new("Cotton Mather", "15.00")
$client["Mercy"] = Client.new("Mercy Harbison", "10.00")
$client["James"] = Client.new("James Ralph", "20.00")
