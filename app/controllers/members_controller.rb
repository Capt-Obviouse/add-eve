class MembersController < ApplicationController
	before_filter :authenticate_user!
	def console

		
 		@news = News.all

 		#ADD TABLE LATER
 		@at_war = 0
 		@in_alliance = 0


 		view = ViewSetting.find(current_user)
  		@show_corporation_information = view.corporation_information		
 		@show_programs = view.programs
  		@show_operations = view.operations
 		@show_communications = view.communications
  		@show_finances = view.finances
 		@show_general_information = view.general_information
 		@show_new_members = view.new_members
 		@show_eve_account_information = view.eve_account_information
 		@show_officers = view.officers
 		@show_directors = view.directors
	end
end
