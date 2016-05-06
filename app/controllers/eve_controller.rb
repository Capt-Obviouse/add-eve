class EveController < ApplicationController
	before_filter :authenticate_user!
 	def status
 		key_id = 4401623
		v_code = '2WPjGh2aleUh9c8ySkG0Ip3yY6uSYUFQTADmXWHzgdJ7Zurc9ygrdw8YzkwAOQCd'
		@account_status = EveOnline::Account::Status.new(key_id, v_code)

		@characters = EveOnline::Account::Characters.new(key_id, v_code)
		@characters = @characters.characters.second
		@current_u = 'test'
 	end
end
