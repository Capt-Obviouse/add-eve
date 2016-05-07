class MembersController < ApplicationController
	before_filter :authenticate_user!
  def console
  	 	key_id = current_user.api_keys
		v_code = current_user.api_vcodes
		@account_status = EveOnline::Account::Status.new(key_id, v_code)

		character = EveOnline::Account::Characters.new(key_id, v_code)
		

		@characters = Array.new
		@characters.push character.characters.first.character_name
		@characters.push character.characters.second.character_name
		@characters.push character.characters.third.character_name
		
  end
end
