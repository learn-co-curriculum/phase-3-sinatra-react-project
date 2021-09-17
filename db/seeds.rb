require 'pry'
require 'nokogiri'
require 'open-uri'

puts "🌱 Seeding spices..."

jeff = Student.create(user_name: "jthomassen")
michael = Student.create(user_name: "mkenton")



Lab.create(name: "phase-3-ruby-oo-self-count-sentences-lab", num_commits: "12", date_of_commit: "Sep 7, 2021", time_of_commit: "01:23 AM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-control-flow-conditional-statements", num_commits: "7", date_of_commit: "Sep 10, 2021", time_of_commit: "05:23 AM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-ruby-oo-basics-instance-methods-lab", num_commits: "9", date_of_commit: "Sep 1, 2021", time_of_commit: "09:23 AM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-ruby-oo-self-count-sentences-lab", num_commits: "10", date_of_commit: "Sep 11, 2021", time_of_commit: "10:23 AM MDT", completed: "No", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-control-flow-conditional-statements", num_commits: "6", date_of_commit: "Sep 13, 2021", time_of_commit: "04:23 AM MDT", completed: "No", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-ruby-oo-basics-instance-methods-lab", num_commits: "13", date_of_commit: "Sep 14, 2021", time_of_commit: "09:23 AM MDT", completed: "No", tasked: false, student_id: michael.id)

puts jeff.get_labs_by_student

# binding.pry

# puts michael.labs.map(&:num_commits)




# user = "mkenton"
# labs = ["phase-3-ruby-oo-self-count-sentences-lab"]
# url = "https://github.com/#{user}/#{labs[0]}/tree/fis-wip"
# html = URI.open(url)
# # html = URI.open("https://github.com/mkenton/phase-3-ruby-oo-self-count-sentences-lab/tree/fis-wip")

# doc = Nokogiri::HTML(html)

# num_commits = doc.search('//li//a//span//strong').text
# # binding.pry
# # commit = doc.search('//relative-time')
# timedate_of_commit = doc.search('//relative-time').first.text
# date_of_commit = doc.search('//relative-time').first['datetime']

# puts "number of commits: #{num_commits}"
# puts
# puts "date/time of commit: #{timedate_of_commit}"
# puts
# puts "Date of commit: #{date_of_commit}"

# # lab_obj = {lab_name: labs[0], num_commits: num_commits, timedate: timedate_of_commit}
# # print lab_obj


# # Lab.create(name: "phase-3-ruby-oo-basics-instance-methods-lab", num_commits: num_commits, date_of_commit: @date_of_commit, time_of_commit: "09:23 AM MDT", student_id: michael.id)

puts "✅ Done seeding!"