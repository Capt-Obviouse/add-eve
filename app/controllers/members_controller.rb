class MembersController < ApplicationController
	before_filter :authenticate_user!
	def console

		@key_id = current_user.api_keys
		@v_code = current_user.api_vcodes
		past = Time.new
		past = past - 3601
		@characterArray = Array.new
		@current_user = current_user
		@Test = current_user.last_api_call

		def addCharactersToArray
			@account_status = EveOnline::Account::Status.new(@key_id, @v_code)
			characters = EveOnline::Account::Characters.new(@key_id, @v_code)
			@characterOne = characters.characters.first.character_name
			@characterTwo = characters.characters.second.character_name
			@characterThree = characters.characters.third.character_name

			@characterArray.push @characterOne
			@characterArray.push @characterTwo
			@characterArray.push @characterThree

			post_time = Time.new
			current_user.last_api_call = post_time
			current_user.characters = @characterOne
			current_user.user = @characterOne
			current_user.second_characters = @characterTwo
			current_user.third_characters = @characterThree
			current_user.save

		rescue Exception
			@characterArray.push 'Failed to connect to API Server (Check API Keys)'
		end #end addCharactersToArray

		if current_user.last_api_call.blank? or current_user.last_api_call < past #change to < 
			addCharactersToArray
		else
			@characterArray.push current_user.characters
			@characterArray.push current_user.second_characters
			@characterArray.push current_user.third_characters
		end
 	
	end
end
