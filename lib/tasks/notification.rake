namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
    end
  	#1. Scheduled to run at Sunday at 5pm.
  	#2. Iterate over all employees.
  	#3. Skip AdminUsers
  	#4. Send a link that has instructions and a link to log time.
  	#User.all.each do |user|
  	#	SmsTool.send_sms()
  	#end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    #1. Iterate over the list of pending overtime request
    #2. Check to see if there are any requests
    #3. Iterate over the list of admin users/managers
    #4. Send the email to each admin
    submitted_posts = Post.submitted_posts
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end
end
