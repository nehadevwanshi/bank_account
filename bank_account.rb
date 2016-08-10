class BankAccount 
	attr_accessor :account_num, :checking_ammonut, :saving_ammonut 

	@@total_bankaccount = 0

	def initialize 
		#created_account
		@account_num = created_account
		@checking_ammonut= 3000
		@saving_ammonut  = 6000
		@@total_bankaccount += 1
		@interest_rate = 0.02
	end

	def checking_account_balance
		puts "This is your checkig account balance #{checking_ammonut}"
	end

	def saving_account_balance
		puts "This is your checkig account balance #{saving_ammonut}"
	end

	def deposit_money(money, account_name)
		if account_name == "checkig_account"
			puts "money deposited to your checkig account"
			@checkig_ammount += money
		else
			puts "money deposited to your saving account"
			@saving_ammonut += money
		end
	end

	def withdraw_money(money, account_name)
		if account_name == "checkig_account"
			if money <@checkig_ammount
				@checkig_ammount -= money
			else
				puts "You don't have suuficient amount of money"
			end
		else 
			if money <@saving_ammonut
				@saving_ammonut -= money
			else 
				puts "You don't have suuficient amount of money"
			end
		end
	end


	def total_amount
		puts "your total balance is: #{(@checking_ammonut + @saving_ammonut)} "
	end

	def total_bank_account
		puts "you have #{@@total_bankaccount}"
	end

	def account_information
		puts "Hey there, your account number is: #{@account_num}"
		puts "You have this much balance: #{(@checking_ammonut + @saving_ammonut)}"
		puts "your checkig_account balance is: #{@checking_ammonut}"
		puts "your checkig_account balance is: #{@saving_ammonut}"
		puts "your interest_rate is: #{interest_rate}"
	end
	
	private
	attr_accessor :interest_rate 
	def created_account
		#6.times.Random.rand(0..1000).to_s.to_i
		1000 + rand(8999)
	end


end
neha = BankAccount.new
puts neha.account_num
neha.checking_account_balance
neha.saving_account_balance
neha.deposit_money(100, "saving")
neha.deposit_money(200, "checkig")
neha.withdraw_money(100, "saving")
neha.total_amount
neha.total_bank_account
neha.account_information
