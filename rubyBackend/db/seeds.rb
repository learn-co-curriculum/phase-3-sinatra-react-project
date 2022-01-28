

puts "🌱 Seeding some fake random shit..."

# What to do :  then we need to update front end input fields to match




futureDay = Faker::Date.between(from: 30.days.ago, to: Date.today)

work_site = ["in-person","remote","hybrid"]
language = ["python","javascript","ruby","go","react","typescript","SQL","angular","java","pascal","C++"]



 50.times do 
    Job.create(
        company_name: Faker::Company.name, job_title: Faker::Job.title,location:Faker::Address.city,employment_type:Faker::Job.employment_type,work_site:work_site.sample,job_url:Faker::Internet.domain_name,salary:Faker::Number.between(from: 45000, to: 150000) 
    )
end

5.times do 
    User.create(
        name: Faker::Name.first_name
    )
end

100.times do 
    UserJob.create(job_id:Job.all.sample.id ,user_id:User.all.sample.id )
end

100.times do 
    Language.create(language: language.sample)
end
500.times do 
    Joblang.create(language_id:Language.all.sample.id,job_id:Job.all.sample.id)
end




puts "✅ Done seeding bro!"

