require 'pry'
require 'nokogiri'
require 'open-uri'

puts "🌱 Seeding spices..."

jeff = Student.create(user_name: "jthomassen")
michael = Student.create(user_name: "mkenton")



Lab.create(name: "phase-3-ruby-oo-self-count-sentences-lab", num_commits: "12", date_of_commit: "Sep 7, 2021", time_of_commit: "01:23 AM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-control-flow-conditional-statements", num_commits: "7", date_of_commit: "Sep 10, 2021", time_of_commit: "05:23 AM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-ruby-oo-basics-instance-methods-lab", num_commits: "9", date_of_commit: "Sep 1, 2021", time_of_commit: "09:23 AM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-metaprogramming-custom-errors", num_commits: "43", date_of_commit: "Sep 10, 2021", time_of_commit: "09:50 AM MDT", completed: "Yes", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-orms-mapping-database-records-to-ruby-objects", num_commits: "7", date_of_commit: "Sep 2, 2021", time_of_commit: "5:42 PM MDT", completed: "Yes", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-active-record-mechanics", num_commits: "12", date_of_commit: "Sep 6, 2021", time_of_commit: "08:12 PM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-sql-database-basics", num_commits: "38", date_of_commit: "Sep 9, 2021", time_of_commit: "01:03 PM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-ruby-remote-data-practice-scraping", num_commits: "13", date_of_commit: "Sep 5, 2021", time_of_commit: "04:27 PM MDT", completed: "Yes", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-active-record-writing-migrations-lab", num_commits: "51", date_of_commit: "Sep 6, 2021", time_of_commit: "11:51 AM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-running-ruby-code", num_commits: "31", date_of_commit: "Sep 11, 2021", time_of_commit: "12:01 PM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-active-record-using-seed-data", num_commits: "15", date_of_commit: "Sep 10, 2021", time_of_commit: "7:59 PM MDT", completed: "Yes", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-sql-setting-up-sqlite", num_commits: "23", date_of_commit: "Sep 8, 2021", time_of_commit: "9:25 AM MDT", completed: "Yes", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-active-record-associations-many-to-many", num_commits: "17", date_of_commit: "Sep 12, 2021", time_of_commit: "9:06 PM MDT", completed: "Yes", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-enumerables-debugging", num_commits: "30", date_of_commit: "Sep 14, 2021", time_of_commit: "6:20 PM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-scraping-flatiron-code-along", num_commits: "23", date_of_commit: "Sep 16, 2021", time_of_commit: "02:34 PM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-active-record-intro-to-rake", num_commits: "53", date_of_commit: "Sep 7, 2021", time_of_commit: "12:01 PM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-active-record-migrations", num_commits: "28", date_of_commit: "Sep 12, 2021", time_of_commit: "9:25 AM MDT", completed: "Yes", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-sql-writing-database-commands-to-a-file", num_commits: "38", date_of_commit: "Sep 5, 2021", time_of_commit: "6:20 PM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-sql-select-and-update", num_commits: "17", date_of_commit: "Sep 7, 2021", time_of_commit: "08:12 PM MDT", completed: "No", tasked: false, student_id: jeff.id)
Lab.create(name: "phase-3-debugging-with-pry", num_commits: "11", date_of_commit: "Sep 4, 2021", time_of_commit: "5:42 PM MDT", completed: "Yes", tasked: false, student_id: jeff.id)

Lab.create(name: "phase-3-ruby-oo-self-count-sentences-lab", num_commits: "10", date_of_commit: "Sep 02, 2021", time_of_commit: "10:23 AM CDT", completed: "Yes", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-control-flow-conditional-statements", num_commits: "6", date_of_commit: "Sep 04, 2021", time_of_commit: "04:23 AM CDT", completed: "Yes", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-ruby-oo-basics-instance-methods-lab", num_commits: "13", date_of_commit: "Jul 05, 2021", time_of_commit: "09:23 AM CDT", completed: "No", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-metaprogramming-custom-errors", num_commits: "43", date_of_commit: "Sep 8, 2021", time_of_commit: "09:39 AM CDT", completed: "Yes", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-sinatra-with-active-record-post-patch-delete", num_commits: "43", date_of_commit: "Jul 20, 2021", time_of_commit: "09:55 AM CDT", completed: "No", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-ruby-oo-self-person-lab", num_commits: "47", date_of_commit: "Sep 05, 2021", time_of_commit: "04:27 AM CDT", completed: "Yes", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-ruby-oo-basics-email-parser-lab", num_commits: "35", date_of_commit: "Sep 07, 2021", time_of_commit: "02:18 AM CDT", completed: "Yes", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-ruby-oo-basics-anagram-detector", num_commits: "35", date_of_commit: "Sep 07, 2021", time_of_commit: "01:44 AM CDT", completed: "Yes", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-ruby-oo-basics-putting-the-pieces-together-lab", num_commits: "82", date_of_commit: "Sep 07, 2021", time_of_commit: "01:21 AM CDT", completed: "Yes", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-ruby-oo-basics-object-initialization-lab", num_commits: "28", date_of_commit: "Sep 05, 2021", time_of_commit: "02:04 AM CDT", completed: "Yes", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-dynamic-orm-inheritance", num_commits: "35", date_of_commit: "Jul 10, 2021", time_of_commit: "12:30 PM CDT", completed: "No", tasked: false, student_id: michael.id)
Lab.create(name: "phase-3-ruby-oo-basics-attribute-accessors-lab", num_commits: "43", date_of_commit: "Sep 05, 2021", time_of_commit: "01:59 AM CDT", completed: "Yes", tasked: false, student_id: michael.id)




puts jeff.get_labs_by_student

# binding.pry

# puts michael.labs.map(&:num_commits)


# # Scrape test for submitted branch of lab
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