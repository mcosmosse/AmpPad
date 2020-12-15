# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

u1 = User.create!(
    username: 'albertcamus',
    password: 'qwertyio'
)

u2 = User.create!(
    username: 'johnsteinbeck',
    password: 'asdfghjk'
)

u3 = User.create!(
    username: 'tester',
    password: 'hunter12'
)

u4 = User.create!(
    username: 'DemoUser',
    password: 'demouser'
)

s1 = Story.create!(
    title: 'The Stranger',
    user_id: u1.id,
    description: "With the intrigue of a psychological thriller, Camus's masterpiece gives us the story of an ordinary man unwittingly drawn into a senseless murder on an Algerian beach. 
    Behind the intrigue, Camus explores what he termed 'the nakedness of man faced with the absurd' and describes the condition of reckless alienation and spiritual exhaustion that characterized so much of twentieth-century life.",
    complete: true
)

s2 = Story.create!(
    title: 'Sweet Thursday',
    user_id: u2.id,
    description: "In Monterey, on the California coast, Sweet Thursday is what they call the day after Lousy Wednesday, which is one of those days that are just naturally bad. Returning to the scene of Cannery Row, the weedy lots and junk heaps and flophouses of Monterey, John Steinbeck once more brings to life the denizens of a netherworld of laughter and tears from Fauna, new headmistress of the local brothel, to Hazel, a bum whose mother must have wanted a daughter.",
    complete: true
)

s3 = Story.create!(
    title: 'The Winter of Our Discontent',
    user_id: u2.id,
    description: "Ethan Allen Hawley, the protagonist of Steinbeck’s last novel, works as a clerk in a grocery store that his family once owned. With Ethan no longer a member of Long Island’s aristocratic class, his wife is restless, and his teenage children are hungry for the tantalizing material comforts he cannot provide. Then one day, in a moment of moral crisis, Ethan decides to take a holiday from his own scrupulous standards.",
    complete: true
)

s4 = Story.create!(
    title: 'My Unfinished Work',
    user_id: u3.id,
    description: "My First Story!",
    complete: false
)

s5 = Story.create!(
    title: 'qwerty',
    user_id: u4.id,
    description: "asdf",
    complete: false
)

c1 = Chapter.create!(
    title: 'Part I',
    user_id: u4.id,
    story_id: s5.id,
    chapter_number: 1,
    body: "I am a sick man. ... I am a spiteful man. I am an unattractive man. I believe my liver is diseased. However, I know nothing at all about my disease, and do not know for certain what ails me. I don't consult a doctor for it, and never have, though I have a respect for medicine and doctors. Besides, I am extremely superstitious, sufficiently so to respect medicine, anyway (I am well-educated enough not to be superstitious, but I am superstitious). No, I refuse to consult a doctor from spite. That you probably will not understand. Well, I understand it, though. Of course, I can't explain who it is precisely that I am mortifying in this case by my spite: I am perfectly well aware that I cannot 'pay out' the doctors by not consulting them; I know better than anyone that by all this I am only injuring myself and no one else. But still, if I don't consult a doctor it is from spite. My liver is bad, well--let it get worse!",
    published: true
)

c2 = Chapter.create!(
    title: 'Part One',
    user_id: u1.id,
    story_id: s1.id,
    chapter_number: 1,
    body: "MOTHER died today. Or, maybe, yesterday; I can’t be sure. The telegram from the
    Home says: YOUR MOTHER PASSED AWAY. FUNERAL TOMORROW. DEEP
    SYMPATHY. Which leaves the matter doubtful; it could have been yesterday.
    The Home for Aged Persons is at Marengo, some fifty miles from Algiers. With
    the two o’clock bus I should get there well before nightfall. Then I can spend the
    night there, keeping the usual vigil beside the body, and be back here by tomorrow
    evening. I have fixed up with my employer for two days’ leave; obviously, under the
    circumstances, he couldn’t refuse. Still, I had an idea he looked annoyed, and I said,
    without thinking: “Sorry, sir, but it’s not my fault, you know.”",
    published: true
)

c3 = Chapter.create!(
    title: "Chapter 1",
    user_id: u2.id,
    story_id: s3.id,
    chapter_number: 1,
    body: "When the fair gold morning of April stirred Mary Hawley awake, she turned
    over to her husband and saw him, little fingers pulling a frog mouth at her.
    “You’re silly,” she said. “Ethan, you’ve got your comical genius.”
    “Oh say, Miss Mousie, will you marry me?”
    “Did you wake up silly?”
    “The year’s at the day. The day’s at the morn.”
    “I guess you did. Do you remember it’s Good Friday?”
    He said hollowly, “The dirty Romans are forming up for Calvary.”
    “Don’t be sacrilegious. Will Marullo let you close the store at eleven?”
    “Darling chicken-flower—Marullo is a Catholic and a wop. He probably
    won’t show up at all. I’ll close at noon till the execution’s over.”
    “That’s Pilgrim talk. It’s not nice.”
    “Nonsense, ladybug. That’s from my mother’s side. That’s pirate talk. It was
    an execution, you know.”
    “They were not pirates. You said yourself, whalers, and you said they had
    letters of what-you-call-it from the Continental Congress.”
    “The ships they fired on thought they were pirates. And those Roman G.I.’s
    thought it was an execution.”
    “I’ve made you mad. I like you better silly.”
    “I am silly. Everybody knows that.”",
    published: true
)

c4 = Chapter.create!(
    title: "Chapter Two",
    user_id: u2.id,
    story_id: s3.id,
    chapter_number: 2,
    body: "Mary came from the stove and took one of the big grocery bags from him.
    “I’ve got so much to tell you. Can’t wait.”
    He kissed her and she felt the texture of his lips. “What’s the matter?” she
    asked.
    “Little tired.”
    “But you were closed three hours.”
    “Plenty to do.”
    “I hope you aren’t gloomy.”
    “It’s a gloomy day.”
    “It’s been a wonderful day. Wait till you hear.”
    “Where are the kids?”
    “Upstairs with the radio. They’ve got something to tell you too.”
    “Trouble?”
    “Now why do you say that?”
    “I don’t know.”
    “You don’t feel well.”
    “Damn it, I do too.”
    “With all the lovely things—I’ll wait till after dinner for our part. Are you
    going to be surprised.”
    ",
    published: true
)

c5 = Chapter.create!(
    title: "poiuyt",
    user_id: u4.id,
    story_id: s5.id,
    chapter_number: 2,
    body: "asdfjkl;",
    published: false
)