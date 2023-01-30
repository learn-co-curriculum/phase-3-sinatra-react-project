require 'faker'
I18n.reload!
#reset seeds file
User.destroy_all
Comment.destroy_all 
Joke.destroy_all

# Seed your database here

#Create 20 random usernames
20.times do 
    User.create(username: Faker::Name.name, password: 'password')
end

#create 80 random comments
80.times do 
    Comment.create( 
        # comment: Faker::Lorem.paragraph(sentence_count: 3),
        rating: Faker::Number.between(from: 0, to: 5),
        joke_id: Faker::Number.between(from: 0, to: 108)
    )
end

Comment.create(comment: "anything", rating: 10, joke_id: 402)


#748 lines of dad jokes 🥴
Joke.create(joke: "I'm tired of following my dreams. I'm just going to ask them where they are going and meet up with them later.")
Joke.create(joke: "Did you hear about the guy whose whole left side was cut off? He's all right now.")
Joke.create(joke: "Why didn't the skeleton cross the road? Because he had no guts.")
Joke.create(joke: "What did one nut say as he chased another nut? I'm a cashew!")
Joke.create(joke: "Chances are if you' ve seen one shopping center, you've seen a mall.")
Joke.create(joke: "I knew I shouldn't steal a mixer from work, but it was a whisk I was willing to take.")
Joke.create(joke: "How come the stadium got hot after the game? Because all of the fans left.")
Joke.create(joke: "Why was it called the dark ages? Because of all the knights.")
Joke.create(joke: "A steak pun is a rare medium well done.")
Joke.create(joke: "Why did the tomato blush? Because it saw the salad dressing.")
Joke.create(joke: "Did you hear the joke about the wandering nun? She was a roman catholic.")
Joke.create(joke: "What creature is smarter than a talking parrot? A spelling bee.")
Joke.create(joke: "I'll tell you what often gets over looked. garden fences.")
Joke.create(joke: "Why did the kid cross the playground? To get to the other slide.")
Joke.create(joke: "Why do birds fly south for the winter? Because it's too far to walk.")
Joke.create(joke: "What is a centipedes's favorite Beatle song? I want to hold your hand, hand, hand, hand.")
Joke.create(joke: "My first time using an elevator was an uplifting experience. The second time let me down.")
Joke.create(joke: "To be Frank, I'd have to change my name.")
Joke.create(joke: "Slept like a log last night … woke up in the fireplace.")
Joke.create(joke: "Why does a Moon-rock taste better than an Earth-rock? Because it's a little meteor.")
Joke.create(joke: "I'm tired of following my dreams. I'm just going to ask them where they are going and meet up with them later.")
Joke.create(joke: "Did you hear about the guy whose whole left side was cut off? He's all right now.")
Joke.create(joke: "Why didn't the skeleton cross the road? Because he had no guts.")
Joke.create(joke: "What did one nut say as he chased another nut? I'm a cashew!")
Joke.create(joke: "Chances are if you' ve seen one shopping center, you've seen a mall.")
Joke.create(joke: "I thought my wife was joking when she said she'd leave me if I didn't stop singing 'I'm A Believer'. Then I saw her face.")
Joke.create(joke: "I'm only familiar with 25 letters in the English language. I don't know why.")
Joke.create(joke: "What do you call two barracuda fish? A Pairacuda!")
Joke.create(joke: "What did the father tomato say to the baby tomato whilst on a family walk? Ketchup.")
Joke.create(joke: "Why is Peter Pan always flying? Because he Neverlands.")
Joke.create(joke: "What do you do on a remote island? Try and find the TV island it belongs to.")
Joke.create(joke: "Did you know that protons have mass? I didn't even know they were catholic.")
Joke.create(joke: "Dad I'm hungry' … 'Hi hungry I'm dad!")
Joke.create(joke: "I was fired from the keyboard factory yesterday. I wasn't putting in enough shifts.")
Joke.create(joke: "Whoever invented the knock-knock joke should get a no bell prize.")
Joke.create(joke: "Wife: Honey I'm pregnant. Me: Well…. what do we do now?\nWife: Well, I guess we should go to a baby doctor.\nMe: Hm.. I think I'd be a lot more comfortable going to an adult doctor.")
Joke.create(joke: "When will the little snake arrive? I don't know but he won't be long.")
Joke.create(joke: "Why was Pavlov's beard so soft? Because he conditioned it.")
Joke.create(joke: "Do I enjoy making courthouse puns? Guilty.")
Joke.create(joke: "Why did the kid throw the clock out the window? He wanted to see time fly!")
Joke.create(joke: "Hear about the new restaurant called Karma? There's no menu: You get what you deserve.")
Joke.create(joke: "Why couldn't the kid see the pirate movie? Because it was rated arrr!")
Joke.create(joke: "Man, I really love my furniture. me and my recliner go way back.")
Joke.create(joke: "What did the traffic light say to the car as it passed? Don't look I'm changing!")
Joke.create(joke: "My son is studying to be a surgeon, I just hope he makes the cut.")
Joke.create(joke: "I thought my wife was joking when she said she'd leave me if I didn't stop signing 'I'm A Believer'. Then I saw her face.")
Joke.create(joke: "I'm only familiar with 25 letters in the English language. I don't know why.")
Joke.create(joke: "What do you call two barracuda fish? A Pairacuda!")
Joke.create(joke: "What did the father tomato say to the baby tomato whilst on a family walk? Ketchup.")
Joke.create(joke: "Why is Peter Pan always flying? Because he Neverlands.")
Joke.create(joke: "Why did the man run around his bed? Because he was trying to catch up on his sleep!")
Joke.create(joke: "What did one wall say to the other wall? I'll meet you at the corner!")
Joke.create(joke: "Sometimes I tuck my knees into my chest and lean forward. That's just how I roll.")
Joke.create(joke: "Conjunctivitis.com - now that's a site for sore eyes.")
Joke.create(joke: "How many South Americans does it take to change a lightbulb? A Brazilian.")
Joke.create(joke: "I don't trust stairs. They're always up to something.")
Joke.create(joke: "Why was the robot angry? Because someone kept pressing his buttons!")
Joke.create(joke: "Which is the fastest growing city in the world? Dublin")
Joke.create(joke: "A police officer caught two kids playing with a firework and a car battery. He charged one and let the other one off.")
Joke.create(joke: "What is the difference between ignorance and apathy? I don't know and I don't care.")
Joke.create(joke: "I went to a Foo Fighters Concert once. It was Everlong.")
Joke.create(joke: "Some people eat light bulbs. They say it's a nice light snack.")
Joke.create(joke: "I went to the store to pick up eight cans of sprite. When I got home I realized I'd only picked seven up.")
Joke.create(joke: "I cut my finger chopping cheese, but I think that I may have grater problems.")
Joke.create(joke: "Last night me and my girlfriend watched three DVDs back to back. Luckily I was the one facing the TV.")
Joke.create(joke: "I got a reversible jacket for Christmas, I can't wait to see how it turns out.")
Joke.create(joke: "What did Romans use to cut pizza before the rolling cutter was invented? Lil Caesars.")
Joke.create(joke: "My pet mouse 'Elvis' died last night. He was caught in a trap.")
Joke.create(joke: "Never take advice from electrons. They are always negative.")
Joke.create(joke: "Why are oranges the smartest fruit? Because they are made to concentrate.")
Joke.create(joke: "What did the beaver say to the tree? It's been nice gnawing you.")
Joke.create(joke: "How do you fix a damaged jack-o-lantern? You use a pumpkin patch.")
Joke.create(joke: "What did the late tomato say to the early tomato? I'll ketch up")
Joke.create(joke: "I have kleptomania, but when it gets bad, I take something for it.")
Joke.create(joke: "I used to be addicted to soap, but I'm clean now.")
Joke.create(joke: "When is a door not a door? When it's ajar.")
Joke.create(joke: "I made a belt out of watches once. It was a waist of time.")
Joke.create(joke: "Why did Mozart kill all his chickens? Because when he asked them who the best composer was, they'd all say 'Bach bach bach!")
Joke.create(joke: "This furniture store keeps emailing me, all I wanted was one night stand!")
Joke.create(joke: "How do you find Will Smith in the snow? Look for fresh prints.")
Joke.create(joke: "My sister bet me $15 that I couldn't build a car out of spaghetti. You should have seen the look on her face as I drove pasta.")
Joke.create(joke: "My boss told me to have a good day. So I went home.")
Joke.create(joke: "I just read a book about Stockholm syndrome. It was pretty bad at first, but by the end I liked it.")
Joke.create(joke: "Why do trees seem suspicious on sunny days? Dunno, they're just a bit shady.")
Joke.create(joke: "If at first you don't succeed, sky diving is not for you!")
Joke.create(joke: "I'd like to start a diet, but I've got too much on my plate right now.")
Joke.create(joke: "What kind of music do mummy's like? Rap.")
Joke.create(joke: "What's large, grey, and doesn't matter? An irrelephant.")
Joke.create(joke: "A book just fell on my head. I only have my shelf to blame.")
Joke.create(joke: "What did the dog say to the two trees? Bark bark.")
Joke.create(joke: "What did the beaver say to the tree? It's been nice gnawing you.")
Joke.create(joke: "How do you fix a damaged jack-o-lantern? You use a pumpkin patch.")
Joke.create(joke: "What did the late tomato say to the early tomato? I'll ketch up")
Joke.create(joke: "I have kleptomania, but when it gets bad, I take something for it.")
Joke.create(joke: "I used to be addicted to soap, but I'm clean now.")
Joke.create(joke: "If a child refuses to sleep during nap time, are they guilty of resisting a rest?")
Joke.create(joke: "Why can't your nose be 12 inches long? Because then it'd be a foot!")
Joke.create(joke: "Have you ever heard of a music group called Cellophane? They mostly wrap.")
Joke.create(joke: "What do you call a boy who stopped digging holes? Douglas.")
Joke.create(joke: "What did the mountain climber name his son? Cliff.")

puts "✅ Done seeding!"