ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address				=> 	'smtp.sendgrid.net',
	:port					=> 	'587',
	:authentication			=> 	:plain,
	:user_name				=> 	'app50363714@heroku.com',
	:password				=>	'tqmgmihj2897',
	:domain					=> 	'heroku.com',
	:enable_starttls_auto	=>	true
}