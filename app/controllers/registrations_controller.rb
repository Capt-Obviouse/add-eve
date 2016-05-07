class RegistrationsController < Devise::RegistrationsController
	private

	def sign_up_params
			params.require(:user).permit(:email, :password, :password_confirmation, :characters, :api_keys, :api_vcodes, :second_characters, :third_characters)
	end

	def account_update_params
		params.require(:user).permit(:email, :password, :password_confirmation, :characters, :current_password, :api_keys, :api_vcodes, :second_characters, :third_characters)
	end

	def after_update_path_for(resource)
		console_path
	end
end
