# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Story.delete_all

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
    user_id: u3.id,
    story_id: s4.id,
    chapter_number: 1,
    body: "I am a sick man. ... I am a spiteful man. I am an unattractive man. I believe my liver is diseased. However, I know nothing at all about my disease, and do not know for certain what ails me. I don't consult a doctor for it, and never have, though I have a respect for medicine and doctors. Besides, I am extremely superstitious, sufficiently so to respect medicine, anyway (I am well-educated enough not to be superstitious, but I am superstitious). No, I refuse to consult a doctor from spite. That you probably will not understand. Well, I understand it, though. Of course, I can't explain who it is precisely that I am mortifying in this case by my spite: I am perfectly well aware that I cannot 'pay out' the doctors by not consulting them; I know better than anyone that by all this I am only injuring myself and no one else. But still, if I don't consult a doctor it is from spite. My liver is bad, well--let it get worse!",
    published: true
)

c2 = Chapter.create!(
    title: 'Part One',
    user_id: u1.id,
    story_id: s1.id,
    chapter_number: 1,
    body: "MOTHER died today. Or, maybe, yesterday; I can’t be sure. The telegram from the Home says: YOUR MOTHER PASSED AWAY. FUNERAL TOMORROW. DEEP SYMPATHY. Which leaves the matter doubtful; it could have been yesterday. The Home for Aged Persons is at Marengo, some fifty miles from Algiers. With the two o’clock bus I should get there well before nightfall. Then I can spend the night there, keeping the usual vigil beside the body, and be back here by tomorrow evening. I have fixed up with my employer for two days’ leave; obviously, under the circumstances, he couldn’t refuse. Still, I had an idea he looked annoyed, and I said, without thinking: “Sorry, sir, but it’s not my fault, you know.”",
    published: true
)

c3 = Chapter.create!(
    title: "Chapter One",
    user_id: u2.id,
    story_id: s3.id,
    chapter_number: 1,
    body: "When the fair gold morning of April stirred Mary Hawley awake, she turned over to her husband and saw him, little fingers pulling a frog mouth at her.
    “You’re silly,” she said. “Ethan, you’ve got your comical genius.”
    “Oh say, Miss Mousie, will you marry me?”
    “Did you wake up silly?”
    “The year’s at the day. The day’s at the morn.”
    “I guess you did. Do you remember it’s Good Friday?”
    He said hollowly, “The dirty Romans are forming up for Calvary.”
    “Don’t be sacrilegious. Will Marullo let you close the store at eleven?”
    “Darling chicken-flower—Marullo is a Catholic and a wop. He probably won’t show up at all. I’ll close at noon till the execution’s over.”
    “That’s Pilgrim talk. It’s not nice.”
    “Nonsense, ladybug. That’s from my mother’s side. That’s pirate talk. It was an execution, you know.”
    “They were not pirates. You said yourself, whalers, and you said they had letters of what-you-call-it from the Continental Congress.”
    “The ships they fired on thought they were pirates. And those Roman G.I.’s thought it was an execution.”
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
    He kissed her and she felt the texture of his lips. “What’s the matter?” she asked.
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
    “With all the lovely things—I’ll wait till after dinner for our part. Are you going to be surprised.”
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

c6 = Chapter.create!(
    title: "Prologue",
    user_id: u2.id,
    story_id: s2.id,
    chapter_number: 1,
    body: "One night Mack lay back on his bed in the Palace Flop house and he said, “I ain’t never been satisfied with that book Cannery Row. I would of went about it different.”
    And after a while he rolled over and raised his head on his hand and he said, “I guess I’m just a critic. But if I ever come across the guy that wrote that book I could tell him a few things.”
    “Like what?” said Whitey No. 1.
    “Well,” said Mack, “like this here. Suppose there’s chapter one, chapter two, chapter three. That’s all right, as far as it goes, but I’d like to have a couple of words at the top so it tells me what the chapter’s going to be about. Sometimes maybe I want to go back, and chapter five don’t mean nothing to me. If there was just a couple of words I’d know that was the chapter I wanted to go back to.”
    “Go on,” said Whitey No. 1.  
    “Well, I like a lot of talk in a book, and I don’t like to have nobody tell me what the guy that’s talking looks like. I want to figure out what he looks like from the way he talks. And another thing—I kind of like to figure out what the guy’s thinking by what he says. I like some description too,” he went on. “I like to know what color a thing is, how it smells and maybe how it looks, and maybe how a guy feels about it—but not too much of that.”
    “You sure are a critic,” said Whitey No. 2. “Mack, I never give you credit before. Is that all?”
    “No,” said Mack. “Sometimes I want a book to break loose with a bunch of hooptedoodle. The guy’s writing it, give him a chance to do a little hooptedoodle. Spin up some pretty words maybe, or sing a little song with language. That’s nice. But I wish it was set aside so I don’t have to read it. I don’t want hooptedoodle to get mixed up in the story. So if the guy that’s writing it wants hooptedoodle, he ought to put it right at first. Then I can skip it if I want to, or maybe go back to it after I know how the story come out.”
    Eddie said, “Mack, if the guy that wrote Cannery Row comes in, you going to tell him all that?”
    Whitey No. 2 said, “Hell, Mack can tell anybody anything. Why, Mack could tell a ghost how to haunt a house.”
    “You’re damn right I could,” said Mack, “and there wouldn’t be no table-rapping or chains. There hasn’t been no improvement in house-haunting in years. You’re damn right I could, Whitey!” And he lay back and stared up at the canopy over his bed.
    “I can see it now,” said Mack.
    “Ghosts?” Eddie asked.
    “Hell, no,” said Mack, “chapters….”",
    published: true
)

c7 = Chapter.create!(
    title: "What Happened In Between",
    user_id: u2.id,
    story_id: s2.id,
    chapter_number: 2,
    body: "When the war came to Monterey and to Cannery Row everybody fought it more or less, in one way or another. When hostilities ceased everyone had his wounds.

    The canneries themselves fought the war by getting the limit taken off fish and catching them all. It was done for patriotic reasons, but that didn’t bring the fish back. As with the oysters in Alice, “They’d eaten every one.” It was the same noble impulse that stripped the forests of the West and right now is pumping water out of California’s earth faster than it can rain back in. When the desert comes, people will be sad; just as Cannery Row was sad when all the pilchards were caught and canned and eaten. The pearl-gray canneries of corrugated iron were silent and a pacing watchman was their only life. The street that once roared with trucks was quiet and empty.
    
    Yes, the war got into everybody. Doc was drafted. He put a friend known as Old Jingleballicks in charge of Western Biological Laboratories and served out his time as a tech sergeant in a V.D. section.
    
    Doc was philosophical about it. He whiled away his free hours with an unlimited supply of government alcohol, made many friends, and resisted promotion. When the war was over, Doc was kept on by a grateful government to straighten out certain inventory problems, a job he was fitted for since he had contributed largely to the muck-up. Doc was honorably discharged two years after our victory.
    
    He went back to Western Biological and forced open the water-logged door. Old Jingleballicks hadn’t been there for years. Dust and mildew covered everything. There were dirty pots and pans in the sink. Instruments were rusted. The live-animal cages were empty.
    
    Doc sat down in his old chair and a weight descended on him. He cursed Old Jingleballicks, savoring his quiet poisonous words, and then automatically he got up and walked across the silent street to Lee Chong’s grocery for beer. A well-dressed man of Mexican appearance stood behind the counter, and only then did Doc remember that Lee Chong was gone.
    
    “Beer,” said Doc. “Two quarts.”
    
    “Coming up,” said the Patrón.
    
    “Is Mack around?”
    
    “Sure. I guess so.”
    
    “Tell him I want to see him.”
    
    “Tell him who wants to see him?”
    
    “Tell him Doc is back.”
    
    “Okay, Doc,” said the Patrón. “This kind of beer all right?”
    
    “Any kind of beer’s all right,” said Doc.
    
    Doc and Mack sat late together in the laboratory. The beer lost its edge and a quart of Old Tennis Shoes took its place while Mack filled in the lost years.
    
    Change was everywhere. People were gone, or changed, and that was almost like being gone. Names were mentioned sadly, even the names of the living. Gay was dead, killed by a piece of anti-aircraft fallback in London. He couldn’t keep his nose out of the sky during a bombing. His wife easily remarried on his insurance, but at the Palace Flop house they kept Gay’s bed just as it was, before he went—a little shrine to Gay. No one was permitted to sit on Gay’s bed.
    
    And Mack told Doc how Whitey No. 1 took a job in a war plant in Oakland and broke his leg the second day and spent three months in luxury. In his white hospital bed he learned to play rhythm harmonica, an accomplishment he enjoyed all the rest of his life.

    Then there was the new Whitey, Whitey No. 2, and Mack was proud of him, for Whitey No. 2 had joined First Marines and gone out as a replacement. Someone, not Whitey No. 2, said he had won a Bronze Star, but if he had he’d lost it, so there was no proof. But he never forgave the Marine Corps for taking his prize away from him—a quart jar of ears pickled in brandy. He’d wanted to put that jar on the shelf over his bed, a memento of his ser vice to his country.
    
    Eddie had stayed on his job with Wide Ida at the Café La Ida. The medical examiner, when he looked at his check sheet and saw what was wrong with Eddie, came to the conclusion that Eddie had been technically dead for twelve years. But Eddie got around just the same, and what with the draft taking everybody away he very nearly became a permanent bartender for Wide Ida. Out of sentiment he emptied the wining jug into a series of little kegs, and when each keg was full he bunged it and buried it. Right now the Palace is the best-endowed flop house in Monterey County.
    
    Down about the middle of the first quart of Old Tennis Shoes, Mack told how Dora Flood had died in her sleep, leaving the Bear Flag bereft. Her girls were brokenhearted. They put on a lady-drunk that lasted three days, stuck a “Not Open for Business” sign on the door, but through the walls you could hear them doing honor to Dora in three-part harmony—“Rock of Ages,” “Asleep in the Deep,” and “St. James Infirmary.” Those girls really mourned—they mourned like coyotes.
    
    The Bear Flag was taken over by Dora’s next of kin, an older sister who came down from San Francisco, where for some years she had been running a Midnight Mission on Howard Street, running it at a profit. She had been a silent partner all along and had dictated its unique practices and policies. For instance, Dora had wanted to name her place the Lone Star, because once in her youth she had spent a wonderful weekend in Fort Worth. But her sister insisted that it be called the Bear Flag, in honor of California. She said if you were hustling a state you should do honor to that state. She didn’t find her new profession very different from her old, and she thought of both as a public service. She read horoscopes and continued, after hours at least, to transform the Bear Flag into a kind of finishing school for girls. She was named Flora, but one time in the Mission a gentleman bum finished his soup and said, “Flora, you seem more a fauna-type to me.”
    
    “Say, I like that,” she said. “Mind if I keep it?” And she did. She was Fauna ever afterward.
    
    Now all this was sad enough, but there was a greater sadness that Mack kept putting off. He didn’t want to get to it. And so he told Doc about Henri the painter.
    
    Mack kind of blamed himself for Henri. Henri had built a boat, a perfect little boat with a nice stateroom. But he’d built it up in the woods, because he was afraid of the ocean. His boat sat on concrete blocks and Henri was happy there. One time, when there wasn’t much else to do, Mack and the boys played a trick on him. They were bored. They went down to the sea rocks and chiseled off a sack of barnacles and took them up and glued them on the bottom of Henri’s boat with quick-drying cement. Henri was pretty upset, particularly since he couldn’t tell anybody about it. Doc could have reassured him, but Doc was in the Army. Henri scraped the bottom and painted it, but no sooner was the paint dry than the boys did it again, and stuck a little seaweed on too. They were terribly ashamed when they saw what happened. Henri sold his boat and left town within twenty-four hours. He could not shake the persistent and horrifying notion that the boat was going to sea while he was asleep.
    
    And Mack told how Hazel had been in the Army too, although you couldn’t get anybody to believe it. Hazel was in the Army long enough to qualify for the G.I. bill, and he enrolled at the University of California for training in astrophysics by making a check mark on an application. Three months later, when some of the confusion had died down, the college authorities discovered him. The Department of Psychology wanted to keep him, but it was against the law.

    Hazel often wondered what it was that he had gone to study. He intended to ask Doc, but by the time Doc got back it had slipped his mind.
    
    Doc poured out the last of the first bottle of Old Tennis Shoes, and he said, “You’ve talked about everything else. What happened to you, Mack?”
    
    Mack said, “I just kind of stayed around and kept things in order.”
    
    Well, Mack had kept things in order, and he had discussed war with everybody he’d met. He called his war the Big War. That was the first one. After the war the atom-bomb tests interested him, in a Fourth-of-July kind of way. The huge reward the government offered for the discovery of new uranium deposits set off a chain reaction in Mack, and he bought a second-hand Geiger counter.
    
    At the Monterey bus station the Geiger counter started buzzing and Mack went along with it—first to San Francisco, then to Marysville, Sacramento, Portland. Mack was so scientifically interested that he didn’t notice the girl on the same bus. That is, he didn’t notice her much. Well, one thing led to another, which was not unique in Mack’s experience. The girl was taking the long way to Jacksonville, Florida. Mack would have left her in Tacoma if his Geiger counter hadn’t throbbed him eastward. He got clear to Salina, Kansas, with the girl. On a hot muggy day the girl lunged at a fly on the bus and broke her watch, and only then did Mack discover that he had been following a radium dial. Romance alone was not enough for Mack at his age. He arrived back in Monterey on a flatcar, under a tarpaulin that covered a medium-sized tank destined for Fort Ord. Mack was very glad to get home. He had won a few dollars from a guard on the flatcar. He scrubbed out the Palace Flop house and planted a row of morning glories along the front, and he and Eddie got it ready for the returning heroes. They had quite a time when the heroes straggled back.
    
    Over Doc and Mack a golden melancholy settled like autumn leaves, melancholy concocted equally of Old Tennis Shoes and old times, of friends lost and friends changed. And both of them knew they were avoiding one subject, telling minor stories to avoid a major one. But at last they were dry, and their subject confronted them.
    
    Doc opened with considerable bravery. “What do you think of the new owner over at the grocery?”
    
    “Oh, he’s all right,” said Mack. “Kind of interesting. The only trouble is he can’t never take Lee Chong’s place. There was never a friend like Lee Chong,” Mack said brokenly.
    
    “Yes, he was wise and good,” said Doc.
    
    “And tricky,” said Mack.
    
    “And smart,” said Doc.
    
    “He took care of a lot of people,” said Mack.
    
    “And he took a few,” said Doc.
    
    They volleyed Lee Chong back and forth, and their memories built virtues that would have surprised him, and cleverness and beauty too. While one told a fine tale of that mercantile Chinaman the other waited impatiently to top the story. Out of their memories there emerged a being scarcely human, a dragon of goodness and an angel of guile. In such a way are the gods created.
    
    But the bottle was empty now, and its emptiness irritated Mack, and his irritation oozed toward Lee Chong’s memory.“The son-of-a-bitch was sneaky,” said Mack. “He should of told us he was going to sell out and go away. It wasn’t friendly, doing all that alone without his friends to help.”

    “Maybe that’s what he was afraid of,” said Doc. “Lee wrote to me about it. I couldn’t advise him—I was too far away—so he was safe.”
    
    “You can’t never find out what a Chink’s got on his mind,” said Mack. “Doc, who would of thought he was what you might say—plotting?”
    
    Oh, it had been a shocking thing. Lee Chong had operated his emporium for so long that no one could possibly have foreseen that he would sell out. He was so mixed up in the feeding and clothing of Cannery Row that he was considered permanent. Who could have suspected the secret turnings of his paradoxical Oriental mind, which seems to have paralleled the paradoxical Occidental mind?
    
    It is customary to think of a sea captain sitting in his cabin, planning a future grocery store not subject to wind or bottom-fouling. Lee Chong dreamed while he worked his abacus and passed out pints of Old Tennis Shoes and delicately sliced bacon with his big knife. He dreamed all right—he dreamed of the sea. He did not share his plans or ask advice. He would have got lots of advice.
    
    One day Lee Chong sold out and bought a schooner. He wanted to go trading in the South Seas. He dreamed of palms and Polynesians. In the hold of his schooner he loaded the entire stock of his store—all the canned goods, the rubber boots, the caps and needles and small tools, the fireworks and calendars, even the glass-fronted showcases where he kept gold-plated collar buttons and cigarette lighters. He took it all with him. And the last anyone saw of him, he was waving his blue naval cap from the flying bridge of his dream ship as he passed the whistle buoy at Point Pinos into the sunset. And if he didn’t go down on the way over, that’s where he is now—probably lying in a hammock under an awning on the rear deck, while beautiful Polynesian girls in very scanty clothes pick over his stock of canned tomatoes and striped mechanics’ caps.
    
    “Why do you suppose he done it?” Mack asked.
    
    “Who knows?” said Doc. “Who knows what lies deep in any man’s mind? Who knows what any man wants?”
    
    “He won’t be happy there,” said Mack. “He’ll be lonely out among them foreigners. You know, Doc, I figured it out. It was them goddam movies done it. You remember, he used to close up every Thursday night. That’s because there was a change of bill at the movie house. He never missed a movie. That’s what done it, the movies. I and you, Doc, we know what liars the movies are. He won’t be happy out there. He’ll just be miserable to come back.”
    
    Doc gazed at his run-down laboratory. “I wish I were out there with him,” he said.
    
    “Who don’t?” said Mack. “Why, them South Sea Island girls will kill him. He ain’t as young as he used to be.”
    
    “I know,” said Doc. “You and I should be out there, Mack, to help protect him from himself. I’m wondering, Mack, should I step across the street and get another pint or should I go to bed?”
    
    “Why don’t you flip a coin?”
    
    “You flip the coin,” said Doc. “I don’t really want to go to bed. If you flip it I’ll know how it’s going to come out.”
    
    Mack flipped, and he was right. Mack said, “I’d just as lief step over for you, Doc. You just set here comfortable—I’ll be right back.” And he was.",
    published: true
)

c8 = Chapter.create!(
    title: "The Troubled Life of Joseph and Mary",
    user_id: u2.id,
    story_id: s2.id,
    chapter_number: 3,
    body: "Mack came back with a pint of Old Tennis Shoes and he poured some in Doc’s glass and some in his own.

    Doc said, “What kind of a fellow is the new owner over there—Mexican, isn’t he?”
    
    “Nice fellow,” said Mack. “Classy dresser. Name of Joseph and Mary Rivas. Smart as a whip, but kind of unfortunate, Doc—unfortunate and funny. You know how it is, when a pimp falls in love it don’t make any difference how much he suffers—it’s funny. And Joseph and Mary’s kind of like that.”
    
    “Tell me about him,” said Doc.
    
    “I been studying him,” said Mack. “He told me some stuff and I put two and two together. He’s smart. You know, Doc, there’s a kind of smartness that cuts its own throat. Haven’t you knew people that was so busy being smart they never had time to do nothing else? Well, Joseph and Mary is kind of like that.”
    
    “Tell me,” said Doc.
    
    “I guess you couldn’t find no two people oppositer than what you and him is,” Mack began. “You’re nice, Doc, nice and egg-heady, but a guy would have to be nuts to think you was smart. Everybody takes care of you because you’re wide open. Anybody is like to throw a sneak-punch at Joseph and Mary just because he’s in there dancing and feinting all the time. And he’s nice too, in a way.”
    
    “Where’d he come from?” Doc asked.
    
    “Well, I’ll tell you,” said Mack.
    
    Mack was right. Doc and Joseph and Mary were about as opposite as you can get, but delicately opposite. Their differences balanced like figures of a mobile in a light breeze. Doc was a man whose whole direction and impulse was legal and legitimate. Left to his own devices, he would have obeyed every law, down to pausing at boulevard stop signs. The fact that Doc was constantly jockeyed into illicit practices was the fault of his friends, not of himself—the fault of Wide Ida, whom the liquor laws cramped like a tight girdle, and of the Bear Flag, whose business, while accepted and recognized, was certainly mentioned disparagingly in every conceivable statute book.
    
    Mack and the boys had lived so long in the shadow of the vagrancy laws that they considered them a shield and an umbrella. Their association with larceny, fraud, loitering, illegal congregation, and conspiracy on all levels was not only accepted, but to a certain extent had become a matter of pride to the inhabitants of Cannery Row. But they were lamblike children of probity and virtue compared to Joseph and Mary. Everything he did naturally turned out to be against the law. This had been true from his earliest childhood. In Los Angeles, where he had been born, he led a gang of pachucos while he was still a child. The charge that he lagged with loaded pennies, if not provable, at least seems reasonable. He rejected the theory of private ownership of removable property almost from birth. At the age of eight he was a pool hustler of such success that Navy officers had been known to put him off limits. When the gang wars started in the Mexican district of Los Angeles, Joseph and Mary rose above pachucos. He set up an ambulatory store, well stocked with switch knives, snap guns, brass knuckles, and, for the very poor, socks loaded with sand, cheap and very effective. At twelve he matriculated at reform school, and two years later emerged with honors. He had learned nearly every criminal technique in existence. This fourteen-year-old handsome boy with sad and innocent eyes could operate the tumblers of a safe with either fingers or stethoscope. He could make second stories as though he had suction cups on his feet. But no sooner had he mastered these arts than he abandoned them, reasoning that the odds were too great. He was always a smart boy. Joseph and Mary was looking for a profession wherein the victim was the partner of the predator. The badger game, the swinging panel, and the Spanish treasure were nearer to his ideal. But even they fell short. He had never made a police blotter and he wanted to keep it that way. Somewhere he felt there was a profession illegal enough to satisfy him morally and yet safe enough not to outrage his instinctive knowledge of the law of averages. You might have said he was well launched on his career when, suddenly, puberty smote him, and for a number of years his activities took a different direction.

    In the fields of larceny and fraud Joseph and Mary vegetated for a number of years. He was a man when the fog cleared from before his eyes and he could see again. Then just when he was set to go, the Army got him and kept him as long as it could in good conscience. It is said that his final dishonorable discharge is a masterpiece of understatement.

    J and M never could get set. He started again on his career and took a wrong turning, for he fell under the influence of a young and understanding priest, who drew him into the warm bosom of Mother Church, into which Joseph and Mary had been born anyway. Now Joseph and Mary Rivas approved of confession and forgiveness, and he felt, as perhaps François Villon had, that under the protection of the cloth he might find some outlet for his talent. Father Murphy taught him the theory of honest labor, and when Joseph and Mary had got over the shock of the principle he decided to give it a try. He was still malleable, and he succeeded, where Villon had failed, in keeping his hands off church property. With the help of Father Murphy, who had influence in the city government, Joseph and Mary found himself the possessor of a city job, a position of dignity, with a monthly check to be cashed without fear of fingerprinting.

    The Plaza in Los Angeles is a pretty square, ornamented with small gardens, palms in great pots, and many, many flowers. It is a landmark, a tourist center, a city pride, for it preserves a Mexican-ness unknown in Mexico. Joseph and Mary, then, was in charge of watering and cultivating the plants in the Plaza—a job that was not only easy and pleasant but kept him in direct touch with those tourists who might be interested in small packets of art studies. Although Joseph and Mary realized he could never get rich in this job, he took a certain plea sure in being partly legal. It gave him the satisfaction most people find in sin.

    At about this time the Los Angeles Police Department had a puzzle on its hands. Marijuana was being distributed in fairly large quantities and at a greatly reduced price. The narcotics squad conducted raid after raid without finding the source. Every vacant lot was searched from San Pedro to Eagle Rock. And then the countryside was laid out on graphing paper and the search for the pointed leaves of the marijuana went on in ever-widening circles: north past Santa Barbara; east to the Colorado River; south as far as the border. The border was sealed, and it is well known that muggles does not grow in the Pacific Ocean. Six months of intensive search, with the cooperation of all local officials and the state police, got absolutely nowhere. The supply continued unabated, and the narcotics squad was convinced that the pushers did not know the source.

    Heaven knows how long the situation might have continued if it had not been for Mildred Bugle, thirteen, head of her class in Beginning Botany, Los Angeles High School. One Saturday afternoon she crossed the Plaza, picked some interesting leaves growing around a potted palm, and positively identified them as Cannabis Americana.

    Joseph and Mary Rivas might have been in trouble but for the fact that the Los Angeles Police Department was in worse trouble. They could not bring him to book. How would it look if the newspapers got hold of the story that the Plaza was the source of supply? that the product had been planted and nurtured by a city employee, freshened with city water, and fed with city manure?

    Joseph and Mary was given a floater so strongly worded that it singed his eyelashes. The police even bought him a bus ticket as far as San Luis Obispo.

    Doc chuckled. “You know, Mack,” he said, “you’re almost building a case for honesty.”

    “I always put in a good word for it,” said Mack.

    “How did he get in the wetback business?” Doc asked.

    “Well, he was casing the field for a career,” said Mack, “and wetbacks looked like a gold-brick cinch. Joseph and Mary figured the angles and the percentage. You look at it and you see it couldn’t flop.” He put up his fingers to count facts, then took a quick drink to tide him over the period when his hands would be tied up.

    Mack touched the little finger of his left hand with his right forefinger. “Number one,” he said. “J and M talks Mexican because his old man and his old lady was Mexican before they come to L.A.” He touched his third finger. “Number two, the wetbacks come in by theirself. Nobody makes them come. There’s a steady supply. Number three, they can’t talk English and they don’t know a cop from a bucket. They need somebody like Joseph and Mary to take care of them and get them jobs and take their pay. If one of them gets mean, all J and M got to do is call the federal men, and they deport him without no trouble to J and M. That’s what he was always looking for—a racket with the percentage stacked for the house. He figures he’s got three or four crews working in fruit and vegetables and he can kind of lay back and rest, the way he always wanted. That’s why he bought out Lee Chong. He figured to make the grocery a kind of labor center, where he could rest up his men and sell them stuff at the same time. And what he’s doing ain’t very much against the law.”

    Doc said, “I can tell, from your tone, it didn’t work. What happened?”

    “Music,” said Mack.

    Now it is true that Joseph and Mary did know all the angles, averages, and percentages. His systems couldn’t lose, but they did. The odds are against making your point with the dice, and that law holds until magic intervenes and someone makes a run.

    There were literally millions of wetbacks in the country—quiet, hard-working, ignorant men, content to bend their backs over the demanding earth. It was a setup; it couldn’t lose. How did it happen, then, that in Joseph and Mary’s crew there should be one tenor and one guitar player? Under his horrified eyes an orchestra took shape—two guitars, a guitarón, rhythm and maraca men, a tenor, and two baritones. He would have had the whole lot deported if his nephew, Cacahuete, had not joined them with his hot trumpet.

    Joseph and Mary’s wetbacks abandoned the carrot and cauliflower fields for the dance floors of the little towns in California. They called themselves the Espaldas Mojadas. They played “Ven a Mi, Mi Chica Dolorosa” and “Mujer de San Luis” and “El Nubito Blanco que Llora.”

    The Espaldas Mojadas dressed in tight charro costumes, wore huge Mexican hats, and played for dances in the Spreckel Fireman’s Hall, the Soledad I. O. O. F., the Elks of King City, the Greenfield Garage, the San Ardo Municipal Auditorium. Joseph and Mary stopped fighting them and started booking them. Business was so good he screened new wetbacks for talent. It was Joseph and Mary’s first entrance into show business, and its native dishonesty reassured him that his course was well chosen.

    “So, you see,” said Mack, “it was music done it. You can’t trust nothing no more. You take Fauna now—the Bear Flag ain’t like any hookshop on land or sea. She makes them girls take table-manner lessons and posture lessons, and she reads the stars. You never seen nothing like it. Everything’s changed, Doc, everything.”

    Doc looked around his moldy laboratory, and he shivered. “Maybe I’m changed too,” he said.

    “Hell, Doc, you can’t change. Why, what could we depend on! Doc, if you change a lot of people are going to cash in their chips. Why, we was all just waiting around for you to get back so we could go on being normal.”

    “I don’t feel the same, Mack. I’m restless.”

    “Now you get yourself a girl,” said Mack. “You play some of the churchy music to her on your phonograph. And then I’ll come in and hustle you for a couple of bucks. Make a try, Doc. You owe it to your friends.”

    “I’ll try,” said Doc, “but I have no confidence in it. I’m afraid I’ve changed.”",
    published: true
)

c9 = Chapter.create!(
    title: "Hooptedoodle (1)",
    user_id: u2.id,
    story_id: s2.id,
    chapter_number: 4,
    body: "Looking back, you can usually find the moment of the birth of a new era, whereas, when it happened, it was one day hooked on to the tail of another.

    There were prodigies and portents that winter and spring, but you never notice such things until afterward. On Mount Toro the snow came down as far as Pine Canyon on one side and Jamesburg on the other. A six-legged calf was born in Carmel Valley. A cloud drifting in formed the letters O-N in the sky over Monterey. Mushrooms grew out of the concrete floor of the basement of the Methodist Church. Old Mr. Roletti, at the age of ninety-three, developed senile satyriasis and had to be forcibly restrained from chasing high-school girls. The spring was cold, and the rains came late. Velella in their purple billions sailed into Monterey Bay and were cast up on the beaches, where they died. Killer whales attacked the sea lions near Seal Rocks and murdered a great number of them. Dr. Wick took a kidney stone out of Mrs. Gaston as big as your hand and shaped like a dog’s head, a beagle. The Lions’ Club announced a fifty-dollar prize for the best essay on “Football—Builder of Character.” And last, but far from least, the Sherman rose developed a carnation bud. Perhaps all this meant nothing; you never notice such things until afterward.
    
    Monterey had changed, and so had Cannery Row and its denizens. As Mack said, “The tum-tum changes, giving place to new. And God tum-tums himself in many ways.”
    
    Doc was changing in spite of himself, in spite of the prayers of his friends, in spite of his own knowledge. And why not? Men do change, and change comes like a little wind that ruffles the curtains at dawn, and it comes like the stealthy perfume of wildflowers hidden in the grass. Change may be announced by a small ache, so that you think you’re catching cold. Or you may feel a faint disgust for something you loved yesterday. It may even take the form of a hunger that peanuts will not satisfy. Isn’t overeating said to be one of the strongest symptoms of discontent? And isn’t discontent the lever of change?
    
    Before the war Doc had lived a benign and pleasant life, which aroused envy in some gnat-bitten men. Doc made a living, as good a living as he needed or wanted, by collecting and preserving various marine animals and selling them to schools, colleges, and museums. He was able to turn affable and uncritical eyes on a world full of excitement. He combined the beauty of the sea with man’s loveliest achievement—music. Through his superb phonograph he could hear the angelic voice of the Sistine Choir and could wander half lost in the exquisite masses of William Byrd. He believed there were two human achievements that towered above all others: the Faust of Goethe and the Art of the Fugue of J. S. Bach. Doc was never bored. He was beloved and preyed on by his friends, and this contented him. For he remembered the words of Diamond Jim Brady who, when told that his friends were making suckers of him, remarked, “It’s fun to be a sucker—if you can afford it.” Doc could afford it. He had not the vanity which makes men try to be smart.
    
    Doc’s natural admiration and desire for women had always been satisfied by women themselves. He had few responsibilities except to be a kindly, generous, and amused man. And these he did not find difficult. All in all, he had always been a fulfilled and contented man. A specimen so rare aroused yearning in other men, for how few men like their work, their lives—how very few men like themselves. Doc liked himself, not in an adulatory sense, but just as he would have liked anyone else. Being at ease with himself put him at ease with the world.
    
    In the Army there had been times when he longed for his music, for his little animals, and for the peace and interest of his laboratory. Coming home, forcing open the water-swollen door, was a plea sure and a pain to him. He sighed as he looked at his bookshelves. It took him ten minutes to decide which record to play first. And then the past was gone and he was faced with the future. Old Jingleballicks had kept the little business going in a manner even more inefficient than Doc had, and then had left it to founder. The stocks of preserved animals were depleted. The business contacts had lapsed. The bank that held his mortgage was no longer checked by patriotism. There was some question whether Doc could ever build back his marginal business. In the old days he would have forgotten such considerations in multiple pleasures and interests. Now discontent nibbled at him—not painfully, but constantly.

    Where does discontent start? You are warm enough, but you shiver. You are fed, yet hunger gnaws you. You have been loved, but your yearning wanders in new fields. And to prod all these there’s time, the bastard Time. The end of life is now not so terribly far away—you can see it the way you see the finish line when you come into the stretch—and your mind says, “Have I worked enough? Have I eaten enough? Have I loved enough?” All of these, of course, are the foundation of man’s greatest curse, and perhaps his greatest glory. “What has my life meant so far, and what can it mean in the time left to me?” And now we’re coming to the wicked, poisoned dart: “What have I contributed in the Great Ledger? What am I worth?” And this isn’t vanity or ambition. Men seem to be born with a debt they can never pay no matter how hard they try. It piles up ahead of them. Man owes something to man. If he ignores the debt it poisons him, and if he tries to make payments the debt only increases, and the quality of his gift is the mea sure of the man.
    
    Doc’s greatest talent had been his sense of paying as he went. The finish line had meant nothing to him except that he had wanted to crowd more living into the stretch. Each day ended with its night; each thought with its conclusion; and every morning a new freedom arose over the eastern mountains and lighted the world. There had never been any reason to suppose it would be otherwise. People made pilgrimages to the laboratory to bask in Doc’s designed and lovely purposelessness. For what can a man accomplish that has not been done a million times before? What can he say that he will not find in Lao-Tse or the Bhagavadgita or the Prophet Isaiah? It is better to sit in appreciative contemplation of a world in which beauty is eternally supported on a foundation of ugliness: cut out the support, and beauty will sink from sight. It was a good thing Doc had, and many people wished they had it too.
    
    But now the worm of discontent was gnawing at him. Maybe it was the beginning of Doc’s middle age that caused it—glands slackening their flow, skin losing its bloom, taste buds weakening, eyes not so penetrating, and hearing dulled a little. Or it might have been the new emptiness of Cannery Row—the silent machines, the rusting metal. Deep in himself Doc felt a failure. But he was a reasonably realistic man. He had his eyes examined, his teeth X-rayed. Dr. Horace Dormody went over him and discovered no secret focus of infection to cause the restlessness. And so Doc threw himself into his work, hoping, the way a man will, to smother the unease with weariness. He collected, preserved, injected, until his stock shelves were crowded again. New generations of cotton rats crawled on the wire netting of the cages, and four new rattlesnakes abandoned themselves to a life of captivity and ease.
    
    But the discontent was still there. The pains that came to Doc were like a stir of uneasiness or the flick of a skipped heartbeat. Whisky lost its sharp delight and the first long pull of beer from a frosty glass was not the joy it had been. He stopped listening in the middle of an extended story. He was not genuinely glad to see a friend. And sometimes, starting to turn over a big rock in the Great Tide Pool—a rock under which he knew there would be a community of frantic animals—he would drop the rock back in place and stand, hands on hips, looking off to sea, where the round clouds piled up white with pink and black edges. And he would be thinking, What am I thinking? What do I want? Where do I want to go? There would be wonder in him, and a little impatience, as though he stood outside and looked in on himself through a glass shell. And he would be conscious of a tone within himself, or several tones, as though he heard music distantly.

    Or it might be this way. In the late night Doc might be working at his old and battered microscope, delicately arranging plankton on a slide, moving them with a thread of glass. And there would be three voices singing in him, all singing together. The top voice of his thinking mind would sing, “What lovely little particles, neither plant nor animal but somehow both—the reservoir of all the life in the world, the base supply of food for everyone. If all of these should die, every other living thing might well die as a consequence.” The lower voice of his feeling mind would be singing, “What are you looking for, little man? Is it yourself you’re trying to identify? Are you looking at little things to avoid big things?” And the third voice, which came from his marrow, would sing, “Lonesome! Lonesome! What good is it? Who benefits? Thought is the evasion of feeling. You’re only walling up the leaking loneliness.”
    
    Sometimes he would leave his work and walk out to the lighthouse to watch the white flail of light strike at the horizons. Once there, of course, his mind would go back to the plankton, and he would think, It’s a protein food of course. If I could find a way to release this food directly to humans, why, nobody in the world would have to go hungry again. And the bottom voice would sing, “Lonesome, lonesome! You’re trying to buy your way in.”
    
    Doc thought he was alone in his discontent, but he was not. Everyone on the Row observed him and worried about him. Mack and the boys worried about him. And Mack said to Fauna, “Doc acts like a guy that needs a dame.”
    
    “He can have the courtesy of the house anytime,” said Fauna.
    
    “I don’t mean that,” said Mack. “He needs a dame around. He needs a dame to fight with. Why, that can keep a guy so goddam busy defending himself he ain’t got no time to blame himself.”
    
    Fauna regarded marriage with a benevolent eye. Not only was it a desirable social condition, but it sent her some of her best customers.
    
    “Well, let’s marry him off,” said Fauna.
    
    “Oh no,” said Mack. “I wouldn’t go that far. My God! Not Doc!”
    
    Doc tried to solve his problem in the ancient way. He took a long, leisurely trip to La Jolla, four hundred miles south. He traveled in the old manner, with lots of beer and a young lady companion whose interest in invertebrate zoology Doc thought might be flexible—and it was.
    
    The whole trip was a success: weather calm and warm, tides low. Under the weed-wreathed boulders of the intertidal zone Doc found, by great good fortune, twenty-eight baby octopi with tentacles four or five inches long. It was a little bonanza for him if he could keep them alive. He handled them tenderly, put them in a wooden collecting bucket, and floated seaweed over them for protection. An excitement was growing in him.
    
    His companion began to be a little disappointed. Doc’s enthusiasm for the octopi indicated that he was not as flexible as she. And no girl likes to lose center stage, particularly to an octopus. The four-hundred-mile trip back to Monterey was made in a series of short dashes, for Doc stopped every few miles to dampen the sack that covered the collecting bucket.
    
    “Octopi can’t stand heat,” he said.He recited no poetry to her. The subject of her eyes, her feelings, her skin, her thought, did not come up. Instead Doc told her about octopi—a subject that would have fascinated her two days before.

    Doc said, “They’re wonderful animals, delicate and complicated and shy.”
    
    “Ugly brutes,” said the girl.
    
    “No, not ugly,” said Doc. “But I see why you say it. People have always been repelled and at the same time fascinated by octopi. Their eyes look baleful and cruel. And all kinds of myths have grown up around octopi too. You know the story of the kraken, of course.”
    
    “Of course,” she said shortly.
    
    “Octopi are timid creatures really,” Doc said excitedly. “Most complicated. I’ll show you when I get them in the aquarium. Of course there can’t be any likeness, but they do have some traits that seem to be almost human. Mostly they hide and avoid trouble, but I’ve seen one deliberately murder another. They appear to feel terror too, and rage. They change color when they’re disturbed and angry, almost like the rage blush of a man.”
    
    “Very interesting,” said the girl, and she tucked her skirt in around her knees.
    
    Doc went on, “Sometimes they get so mad they collapse and die of something that parallels apoplexy. They’re highly emotional animals. I’m thinking of writing a paper about them.”
    
    “You might find out what causes human apoplexy,” said the girl, and because he wasn’t listening for it, Doc didn’t hear the satire in her tone.
    
    There’s no need for giving the girl a name. She never came back to Western Biological. Her interest in science blinked out like a candle, but a flame was lighted in Doc.
    
    The flame of conception seems to flare and go out, leaving man shaken, and at once happy and afraid. There’s plenty of precedent of course. Everyone knows about Newton’s apple. Charles Darwin and his Origin of Species flashed complete in one second, and he spent the rest of his life backing it up; and the theory of relativity occurred to Einstein in the time it takes to clap your hands. This is the greatest mystery of the human mind—the inductive leap. Everything falls into place, irrelevancies relate, dissonance becomes harmony, and nonsense wears a crown of meaning. But the clarifying leap springs from the rich soil of confusion, and the leaper is not unfamiliar with pain.
    
    The girl said good-by and went away, and Doc did not know she was gone. For that matter he did not know she had been with him.
    
    With infinite care Doc scrubbed out a big aquarium, carpeted it with sea sand, and laid in stones populated with sponges and hydroids and anemones. He planted seaweeds and caught little crabs and eels and tide-pool Johnnys. He carried buckets of sea water from the beach and set up a pump to circulate the water from tank to aquarium and back. He considered every factor within his knowledge—relations of plant and animal life, food, filtering, oxygenation. He built an octopus world within walls of glass, trying to anticipate every octopus need and to eliminate every octopus enemy or danger. He considered light and heat.
    
    Eight of his octopi were dead, but the twenty living ones scuttled to the bottom of their new home and hid themselves, throbbing and blushing with emotion. Doc drew a stool close and peered into the little world he had made, and his mind was filled with cool green thoughts and stately figures. For the moment he was at peace. The pale expressionless eyes of the octopi seemed to be looking into his eyes.
    
    In the days that followed, Doc’s disposition was so unpredictable that Mack exhausted every other possibility before he moved in on Western Biological for the two dollars he thought he needed.
    
    Mack’s campaign was probably the most elaborate of his career. It began quietly, and only after a thorough preparation did it begin to take shape. Then spinnerets of emotion laced in and the heavy notes of tragic necessity began to be faintly heard. Drama grew, as it should, out of its inherent earth. Mack’s voice was controlled and soft—no trembling yet—just a reasonable, clear, but potentially passionate growth. Mack knew he was doing well. He could hear himself, and he knew that if he were on the receiving end he would find it impossible not to weaken. Why, then, did not Doc turn his eyes from the dimly lit aquarium? He had certainly said “hello” when Mack came in. A little shakily Mack cut in the vox angelica, the vox dolorosa, and finally a bendiga stupenda so moving that Mack himself was in tears.

    Doc did not turn his head.
    
    Mack stood stunned. It is a frightening thing to lay out everything you have, to finish, and have no response. He didn’t know what to do next. He said loudly, “Doc!”
    
    “Hello,” said Doc.
    
    “Don’t you feel good?”
    
    “Sure, Mack. How much do you want?”
    
    “Two dollars.”
    
    Doc reached in his hip pocket for his wallet without lifting his eyes. Mack’s great performance had been wasted. He might just as well have simply come in and asked for the money. He knew he could never reach such a height again. A sudden anger came over him, and he considered refusing the money, but his natural good sense saved him. He stood there rolling the dollar bills between his fingers. “What’s got into you, Doc?” he said.
    
    Doc turned slowly toward him. “There’s going to be one great difficulty,” he said. “How am I going to light them? It’s always a problem, but in this case it might be insuperable.”
    
    “Light what, Doc?”
    
    “We start with two obvious problems,” Doc continued. “First, they can’t stand heat, and second, they are to a certain extent photophobic. I don’t know how I’m going to get enough cold light on them. Would it be possible, do you suppose, to condition them, to light them constantly, so that the photophobia subsides?”
    
    “Oh sure,” said Mack uneasily.
    
    “Don’t be too sure,” said Doc. “The very process of conditioning might, if it did not kill them, change their normal reactions. It’s always difficult to evaluate responses that approximate emotions. If I place them in an abnormal situation, can I trust the response to be normal?”
    
    “No,” said Mack.
    
    “You cannot dissect for emotion,” Doc went on. “If a human body were found by another species and dissected, there would be no possible way of knowing about its emotions or its thoughts. Now, it occurs to me that the rage, or rather the symptom that seems like rage, must be fairly abnormal in itself. I have seen it happen in aquariums. Does it occur on the sea bottom? Is the observed phenomenon not perhaps limited to the aquarium? No, I can’t permit myself to believe that, or my whole thesis falls.”
    
    “Doc!” Mack cried. “Look, Doc, it’s me—Mack!”
    
    “Hello, Mack,” said Doc. “How much did you say?”
    
    “You’ve already given it to me,” said Mack, and he felt like a fool the moment he’d said it.
    
    “I need better equipment,” said Doc. “Goddam it, I can’t see without better equipment.”
    
    “Doc, how’s about you and me stepping over and getting a half-pint of Old Tennis Shoes?”“Fine,” said Doc.

    “I’ll buy,” said Mack. “I’ve got a couple of loose bucks.”
    
    Doc said sharply, “I’ll have to get some money. Where can I get some money, Mack?”
    
    “I told you, I’ll buy, Doc.”
    
    “I’ll need a wide-angle binocularscope and light. I’ll have to find out about light—maybe a pinpoint spot from across the room. No, they’d move out of that. Maybe there are new kinds of lights. I’ll have to look into it.”
    
    “Come on, Doc.”
    
    Doc bought a pint of Old Tennis Shoes and later sent Mack out with money to buy another pint. The two of them sat in the laboratory side by side, staring into the aquarium, resting their elbows on the shelf, and they got to the point where they were mixing a little water with the whisky.
    
    “I got an uncle with an eye like them,” said Mack. “Rich old bastard too. I wonder why, when you get rich, you get a cold eye.”
    
    “Self-protection,” said Doc solemnly. “Conditioned by relatives, I guess.”
    
    “Like I was saying, Doc. Everybody in the Row is worried about you. You don’t have no fun. You wander around like you was lost.”
    
    “I guess it’s re orientation,” said Doc.
    
    “Well, some people think you need a dame to kind of nudge you out of it. I know a guy that every time he gets feeling low he goes back to his wife. Makes him appreciate what he had. He goes away again and feels just fine.”
    
    “Shock therapy,” said Doc. “I’m all right, Mack. Don’t let anybody give me a wife though—don’t let them give me a wife! I guess a man needs a direction. That’s what I’ve been needing. You can only go in circles so long.”
    
    “I kind of like it that way,” said Mack.
    
    “I’m going to call my paper ‘Symptoms in Some Cephalopods Approximating Apoplexy.’”
    
    “Great God Almighty!” said Mack.",
    published: true
)

c10 = Chapter.create!(
    title: "There Would Be No Game",
    user_id: u2.id,
    story_id: s2.id,
    chapter_number: 5,
    body: "As he got to know him, Joseph and Mary regarded Doc with something akin to love—for love feeds on the unknown and unknowable. Doc’s honesty was exotic to Joseph and Mary. He found it strange. It attracted him in spite of the fact that he could not understand it. He felt that there was something he had missed, though he could not figure what it was.

    One day, sitting in Western Biological, Joseph and Mary saw a chess board and, finding that it was a game and being good at games, he asked Doc to teach him. J and M easily absorbed the characters and qualities of castles and bishops and knights and royalty and pawns. During the first game Doc was called to the telephone, and when he returned he said, “You’ve moved a pawn of mine and your queen and knight.”
    
    “How’d you know?” the Patrón asked.
    
    “I know the game,” said Doc. “Look, Joseph and Mary, chess is possibly the only game in the world in which it is impossible to cheat.”
    
    Joseph and Mary inspected this statement with amazement. “Why not?” he demanded.
    
    “If it were possible to cheat there would be no game,” said Doc.
    
    J and M carried this away with him. It bothered him at night. He looked at it from all angles. And he went back to ask more about it. He was charmed with the idea, but he couldn’t understand it.
    
    Doc explained patiently, “Both players know exactly the same things. The game is played in the mind.”
    
    “I don’t get it.”
    
    “Well, look! You can’t cheat in mathematics or poetry or music because they’re based on truth. Untruth or cheating is just foreign, it has no place. You can’t cheat in arithmetic.”
    
    Joseph and Mary shook his head. “I don’t get it,” he said.
    
    It was a shocking conception, and he was drawn to it because, in a way, its outrageousness seemed to him like a new, strange way of cheating. In the back of his mind an idea stirred. Suppose you took honesty and made a racket of it—it might be the toughest of all to break. It was so new to him that his mind recoiled from it, but still it wouldn’t let him alone. His eyes narrowed. “Maybe he’s worked out a system,” he said to himself.",
    published: true
)

c11 = Chapter.create!(
    title: "Enter Suzy",
    user_id: u2.id,
    story_id: s2.id,
    chapter_number: 6,
    body: "It is popular to picture a small-town constable as dumb and clumsy. In the books he plays the stock bumpkin part. And people retain this attitude even when they know it’s not true. We have so many beliefs we know are not true.

    A constable, if he has served for a few years, knows more about his town than anyone else and on all levels. He is aware of the delicate political balance between mayor and councilmen, Fire Department and insurance companies. He knows why Mrs. Geltham is giving a big party and who is likely to be there. Usually he knows, when Mabel Andrews reports a burglar, whether it is a rat in the dining room, a burglar, or just wishful thinking. A constable knows that Mr. Geltham is sleeping with the schoolteacher and how often. He knows when high-school boys have switched from gin to marijuana. He is aware of every ripple on the town’s surface. If there is a crime the constable usually knows who didn’t do it and often who did. With a good constable on duty a hundred things don’t happen that might. Sometimes there’s a short discussion in an alley; sometimes a telephone call; sometimes only his shadow under a street light. When he gets a cat down out of a tree he knows all about the owner of the cat. And many weeping, parent-prodded little boys and girls put small things, stolen from the Five-and-Dime, in the constable’s hands, and he, if he is a good constable, gives them a sense of mercy-in-justice without injuring the dignity of the law.
    
    A stranger getting off the Del Monte Express in Monterey wouldn’t be aware that his arrival was noted, but if something happened that night he would know it all right.
    
    Monterey’s Joe Blaikey was a good constable. He wouldn’t ever be chief—didn’t much want to be. Everybody in town liked Joe and trusted him. He was the only man in town who could stop a husband-and-wife fight. He came by his techniques in both social life and in violence from being the youngest of fifteen nice but violent children. Just getting along at home had been his teacher. Joe knew everyone in Monterey and he could size up a stranger almost instantly.
    
    When a girl named Suzy got off the Greyhound bus, she looked up and down the street, fixed her lipstick, then lifted her beat-up suitcase and headed for the Golden Poppy Restaurant. Suzy was a pretty girl with a flat nose and a wide mouth. She had a good figure, was twenty-one, five-feet-five, hair probably brown (dyed blond), brown cloth coat, rabbit-skin collar, cotton print dress, brown calf shoes (heel taps a little run over), scuff on the right toe. She limped slightly on her right foot. Before she picked up her suitcase she opened her brown purse of simulated leather. In it were mirror, comb with two teeth missing, Lucky Strikes, matchbook that said “Hotel Rosaline, San Francisco,” half pack of Peppermint Life Savers, eighty-five cents in silver, no folding money, lipstick but no powder, tin box of aspirin, no keys.
    
    If there had been a murder that night Joe Blaikey could have written all that down, but now he wasn’t even aware that he knew it. Joe acted pretty much by instinct. He got into the Golden Poppy just as the waitress was putting a cup of coffee on the counter in front of Suzy.
    
    Joe slipped onto the stool next to her. “Hi, Ella,” he said to the waitress. “Cup of coffee.”
    
    “Coming up,” said Ella. “How’s your wife, Joe?”
    
    “Oh, pretty good. Wish she’d get her strength back, though.”
    
    “Takes it out of you,” said Ella. “Man can’t understand that. Give her a tonic and let her rest. I’ll have fresh coffee in a minute if you want to wait.”
    
    “Yeah,” said Joe.
    
    Ella went to the head of the counter, put coffee in the Silex, and filled the bowl.
    
    Joe said quietly to Suzy, “What’s on your mind, sister?”
    
    “Not a thing,” said Suzy. She didn’t look at him but she could see him in the shine of a malted machine behind the counter.
    
    “Vacation?”
    
    “Sure.”
    
    “How long?”
    
    “Don’t know.”
    
    “Looking for a job?”
    
    “Maybe.”
    
    Ella started toward them, saw what was happening, and got busy at the other end of the counter.
    
    Joe asked, “Know anybody here?”
    
    “I got an aunt here.”
    
    “What’s her name?”
    
    “That your business?”
    
    “Yep.”
    
    “All right, I got no aunt.”
    
    Joe smiled at her, and Suzy felt better. She liked a guy who was worried about his wife.
    
    He said to her, “On the bum?”
    
    “Not yet,” said Suzy. “You gonna give me trouble, mister?”
    
    “Not if I can help it,” said Joe. “You got a Social Security card?”
    
    “Lost it,” said Suzy.
    
    Joe said, “It’s a tough town. All organized. Don’t work the street. The authorities won’t have it. If you need a buck to blow town, come to me. My name’s Joe Blaikey.”
    
    “Thanks, Joe. But I ain’t hustling, honest.”
    
    “Not yet, you ain’t,” said Joe. “It’s a hell of a town to get a job in since the canneries closed. Take it easy.” He stood up and stretched. “I’ll get the coffee later, Ella,” he said and went out.
    
    Ella’s work seemed to be all done. She mopped the counter with a damp cloth. “Swell fella,” she said. “More coffee? Fresh is ready.”
    
    “Seemed like,” said Suzy. “Yeah.”
    
    Ella brought a fresh cup. “Where you staying?”
    
    “Don’t know yet.”
    
    “My sister rents rooms—pretty nice. Four dollars a week. I can give her a ring, see if she’s got one vacant.”
    
    “I think I’ll look around town a little,” said Suzy. “Say, mind if I leave my suitcase here? It’s kind of heavy.”
    
    “Sure. I’ll put it back of the counter here.”
    
    “Well, s’pose you’re off shift when I come back?” Ella looked levelly at Suzy. “Sister,” she said, “I ain’t never off shift.”
    
    Suzy looked in the store windows on Alvarado Street and then she went to the wharf and watched the fishing boats at their moorings. A school of tiny fish always lay in the shade of the pier and two little boys fished with hand lines and never caught anything. About four o’clock she strolled along deserted Cannery Row, bought a package of Lucky Strikes at the grocery, glanced casually at Western Biological, and knocked on the door of the Bear Flag.
    
    Fauna received her in the combination bedroom and office.
    
    “I’ll tell you the truth,” said Fauna, “business ain’t been good. It may pick up some in June. I wish I could put you on. Ain’t you got a hard-luck story that would kind of sway me?”
    
    “Nope,” said Suzy.
    
    “You broke?”
    
    “Yep.”
    
    “But you don’t make nothing of it.” Fauna leaned back in her swivel chair and squinted her eyes. “I used to work a Mission,” she said. “I know hard-luck stories from both ends. I guess if you laid all the hard luck I’ve heard end to end, why, the Bible would look short. And some of them stories was true. Now, I could make a guess about you.”
    
    Suzy sat silent—posture, hands, face, noncommittal.
    
    “Lousy home,” said Fauna. “Fighting all the time. Probably you wasn’t more than fifteen or sixteen when you married the guy, or maybe he wouldn’t. Done it just to get away from the fighting.”
    
    Suzy made no reply.
    
    Fauna looked away so that she wouldn’t see the hands slowly grip each other. “Got in a family way right off,” said Fauna. “That made the guy restless, and he powdered. What did you say?”
    
    “I didn’t say nothing,” said Suzy.
    
    “Where’s the baby?”
    
    “I lost it.”
    
    “Do you hate the guy?”
    
    “I got nothing to say,” said Suzy.
    
    “Okay with me. I ain’t really very interested. There’s some dames born for this business. Some are too lazy to work and some hate men. Don’t hardly none of them enjoy what they’re doing. That would be like a bartender that loves to drink. You don’t look like a natural-born hustler to me. You ain’t lazy. Why don’t you get a job?”
    
    “I worked waitress and I worked Five-and-Dime. Only difference is, you get took to a movie instead of three bucks,” said Suzy.
    
    “You trying to make a stake?”
    
    “Maybe.”
    
    “Got a boy?”“Nope.”

    “Hate boys?”
    
    “Nope.”
    
    Fauna sighed. “You got me, sister. I can feel myself being got. You’re a tough kid. Doing your own time, like an old con. I like that. It works better with me than a hard-luck story. Tell me, you hot?”
    
    “Huh?”
    
    “Under raps, I mean. Anybody got anything on you?”
    
    “Nope.”
    
    “Ever done time?”
    
    “Once. Thirty days. Vagrancy.”
    
    “Nothing else on the blotter?”
    
    “Nope.”
    
    “Can you give off a smile? You’d freeze the customers.” Suzy grinned at Fauna.
    
    “Good God Almighty!” said Fauna. “You look like somebody’s sister! I’m afraid you’ll cost me. Why do I have to be a pushover? Ever worked a house?”
    
    “Nope.”
    
    “Well, it ain’t as bad as the street. Doc Wilkins will be in tomorrow.”
    
    Suzy asked, “Can I get my suitcase?”
    
    “I guess so.” Fauna opened a wallet on her desk. “J. C. Penney’s is open till six. Get yourself a dress—fancy but cheap. Get a new toothbrush. And when you come back, for God’s sake go to work on your hair. You could be a good-looking kid if you worked it up.”
    
    “I been riding a bus,” said Suzy.
    
    “That’ll do it,” said Fauna. “We eat at half-past six. How long since you ate?”
    
    “Yesterday.”
    
    “Beef stew to night, creamed carrots, cherry Jell-O for dessert.”
    
    On her way to the door Suzy paused and her hand patted the doorframe. “Cop worked me over today,” she said. “Name’s Joe Blaikey.”
    
    “He’s a nice fella. Why, he’d lend you dough,” said Fauna.
    
    “That’s what he said,” Suzy replied. “I love beef stew.”
    
    
    At the Golden Poppy, Ella handed the suitcase over the counter. “You look like a kid with a job,” said Ella.
    
    “Looks like. Say, where’s J. C. Penney?”
    
    “Turn right and go a block and a half. Yellow front. Be seeing you.”
    
    “Sure,” said Suzy.
    
    On the sidewalk Joe Blaikey fell into step beside her and took her suitcase from her hand. “That’s a good woman,” he said. “You just keep your nose clean and you’ll be all right.”
    
    “How’d you know?” Suzy asked.
    
    “She called me,” said Joe. “See you around.”
    
    “Okay,” said Suzy.
    
    She took her suitcase from him and turned into J. C. Penney’s.
    
    “Can I help you?”
    
    “Dress. Not too dear.”
    
    “Over here.”
    
    “I like that tomatoey one.”
    
    “That’s a new shade, ‘Love Apples.’”
    
    “Tomato color.”
    
    “It’s rayon. It’ll give you good ser vice.”
    
    “It better. Size twelve.”
    
    “Shoes to match?”
    
    Suzy took a very deep breath. “Yes, by God!” she said.",
    published: true
)

c12 = Chapter.create!(
    title: "The Creative Cross",
    user_id: u2.id,
    story_id: s2.id,
    chapter_number: 7,
    body: "For days the flame burned in Doc, his phoenix thought. True, he didn’t have a proper microscope, but he had eyes and he had, thank God, an analytic mind that could slough off sensations, emotions, pains. As he stared at the octopi his thesis took form. With a glass needle he stimulated one to fear and rage until it attacked and killed its brother. He removed one passive octopus to a separate jar where he subjected it to mild solutions of menthol, of Epsom salts, sickening it a little and then bringing it back to health again. Then he aroused rage, and when the body colors pulsed and changed he introduced a small amount of cocaine sulphate and saw the emotion disappear into sleep, if you can say an octopus sleeps. Then he aroused it with saline and touched it here and there with the frustrating needle, noted the flush, the growing intensity of color, the uncertain whipping and groping of the arms, until suddenly it collapsed and died. Doc removed the body and dissected the tissue, trying to find burst vesicles.

    “It works!” he said aloud. “I haven’t proper equipment to see how it happens, but this animal dies with the appearance of apoplexy. There must be leakage even if I can’t see it. I can start my paper with observation.”
    
    Doc bought a package of yellow pads and two dozen pencils. He laid them out on his desk, the pencils sharpened to needle points and lined up like yellow soldiers. At the top of a page he printed: OBSERVATIONS AND SPECULATIONS. His pencil point broke. He took up another and drew lace around the O and the B, made a block letter of the S and put fish hooks on each end. His ankle itched. He rolled down his sock and scratched, and that made his ear itch. “Someone’s talking about me,” he said and looked at the yellow pad. He wondered whether he had fed the cotton rats. It is easy to forget when you’re thinking.
    
    Watching the rats scrabble for the food he gave them Doc remembered that he had not eaten. When he finished a page or two he would fry some eggs. But wouldn’t it be better to eat first so that his flow of thought would not be interrupted later? For some days he had looked forward to this time of peace, of unbroken thought. These were the answer to his restlessness: peace and the life of the mind. It would be better to eat first. He fried two eggs and ate them, staring at the yellow pad under the hanging light. The light was too bright. It reflected painfully on the paper. Doc finished his eggs, got out a sheet of tracing paper, and taped it to the bottom of the shade below the globe. It took time to make it neat. He sat in front of the yellow pad again and drew lace around all the letters of the title, tore off the page, and threw it away. Five pencil points were broken now. He sharpened them and lined them up with their brothers.
    
    A car drove up in front of the Bear Flag. Doc went to the window and looked out. No one he knew, but he saw Mack go into the grocery. He remembered he wanted to ask Mack something.
    
    It’s always hard to start to concentrate. The mind darts like a chicken, trying to escape thinking even though thinking is the most rewarding function of man. Doc could take care of this. When you know what you’re doing you can handle it. He set his jaw and was starting to turn back to his desk when he saw out of the corners of his eyes the flash of a skirt. He looked out the window again. A girl had come out of the Bear Flag and was walking along Cannery Row toward Monterey. Doc couldn’t see her face, but she had a fine walk, thigh and knee and ankle swinging free and proud, no jerk and totter the way so many women walked as they fell from step to step. No, this girl walked with her shoulders back and her chin up and her arms swinging in rhythm. It’s a gay walk, Doc thought. You can tell so much by a walk—discouragement or sickness, determination. There are squinched-up mean walks and blustering walks, shy creeping walks, but this was a gay walk, as though the walker were going happily to a meeting with someone she loved. There was pride in the walk too, but not vanity. Doc hoped she would not turn the corner, but she did. There was a flick of skirt and she was gone. But Doc could see in his mind her swinging limbs, the melody of her lithe, swift movement. Probably ugly as a mud fence, he thought, and then he laughed at himself. “That’s full circle,” he said. “Mind, I congratulate you. You jumped me to sex, translated it to aesthetics, and ended with sour grapes. How dishonest can I be? And all because I don’t want to go to work. I’ll work my head off to avoid work. Come, mind. This time you don’t get away with it—back to the desk.”
    
    He picked up a pencil and wrote, “The observed specimens were twenty small octopi taken in the intertidal zone near the town of La Jolla. Specimens were placed in a large aquarium under conditions as nearly approximating their natural habitat as possible. Sea water was continuously filtered and replaced every twenty-four hours. Animals from a typical ecological community were introduced, together with sand, rock, and algae taken from the collecting point. Small crustaceans were supplied. In spite of precautions, five individuals died within one week. The remaining fifteen seemed to become acclimatized and readily captured and consumed the small grapsoid crabs placed in the aquarium. The lights—” His pencil point broke. He took another, and it broke with a jerk, making a little tear in the paper. He read what he had written; dull, desiccated, he thought. Why should I presume that an animal so far removed from the human—perhaps I’m fooling myself. The middle voice sang subtly, “Looking for yourself in the water—searching, little man, among the hydroids for your soul—looking for contentment in vanity. Are you better than Mack that you should use the secret priestly words of science to cover the fact that you have nothing to say?”
    
    And the bottom voice mourned, “Lonesome! Lonesome! Let me up into the light and warmth. Lonesome!”
    
    Doc jumped up and went to the aquarium and stared into the lighted water. From under a rock an octopus looked out and one of its arms flicked rhythmically, as though it led an orchestra, and the beat was gay and free and fluid—like the swinging thigh and knee and ankle.
    
    Doc put his face in the palm of his hand and pressed blackness on his eyes until specks of green and red light swarmed on his vision. And then he got up and went across the street for beer.",
    published: true
)

c13 = Chapter.create!(
    title: "Tinder Is as Tinder Does",
    user_id: u2.id,
    story_id: s2.id,
    chapter_number: 8,
    body: "Joseph and Mary Rivas liked Fauna, even admired her. But he did feel that it was a little indecent for a woman to own the Bear Flag, a paying institution with a steady income. Operate it, yes, but not own it. The proprieties told Joseph and Mary there should be a man in the background to drain off the profits. It was his observation that when women had access to money they got nervous. To his mind, a healthy woman was a broke woman. A dame with money was a kind of a half-assed man. She stopped working at being a woman, and, as everybody knows, the finest thing about a woman is that she is a woman.

    Joseph and Mary had given some thought to relieving Fauna of the responsibility of the profits: if he owned the Bear Flag and Fauna ran it, there would be a natural and practical balance. Fauna had so far figured her way out from under his philanthropy, but Joseph and Mary did not give up, particularly when it was no trouble not to.
    
    A good stock manipulator reads the financial page and looks for the stock he has, but he also notices other quotations too, just in case. Joseph and Mary kept that kind of eye on the Bear Flag. He felt that someday Fauna might look away from the dealer for a moment. Now that his own affairs ran smoothly, he was able to cast a benevolently rapacious eye about him. He knew about Suzy before she had even got her clothes washed, and he felt that Fauna was slipping.
    
    “You got a quail there,” he told Fauna. “That’s Mary trouble if I ever seen it.”
    
    “I guess so,” said Fauna.
    
    “Why’d you take her on?”
    
    “I let myself make a mistake once in a while,” said Fauna. “She ain’t a good hustler, but when I get through with her she might make somebody a damn fine wife.”
    
    “She’s making a patsy of you,” said the Patrón.
    
    “People got to be a patsy now and then,” said Fauna. “You never feel real good if you never been a sucker. Once I went missionary down in South America.”
    
    “Why?” asked the Patrón.
    
    “Can’t remember right off.”
    
    “What did you do?”
    
    “Taught them to love one another.”
    
    “What did they do?”
    
    “Taught me to shrink heads.”
    
    “Savages!” said the Patrón.
    
    “No they wasn’t. Them headhunters was pretty nice people—honest too. When they sell you a head they give good value. But there’s always a wise guy. Like this Athatoolagooloo—a natural-born head-hustler. He’d worked out a way to push monkey heads. Gave them a close shave, didn’t have to shrink them much. There’s people will buy anything.”
    
    “I know,” said the Patrón.
    
    “Well, the Bishop come through,” said Fauna, “and he give me holy hell for buying up them monkey heads.”
    
    “You mean to say you bought them?” said the Patrón.
    
    “Sure I bought them. I got a box of them in the woodshed. Everybody said I was a fool, but it paid off.”
    
    “How’d it pay off?”
    
    “Well, look,” said Fauna. “My bunch was honest and they shrunk honest heads. S’pose a shipment goes out and this joker Athatoolagooloo slips in a couple of his monkey heads—pretty soon nobody don’t trust nobody. Why, people would get to looking asspants at a real nice head. I bought them up to keep them off the market. I had my reputation to think of.”
    
    “Yeah, but this joker—” the Patrón began.
    
    “I know what you’re going to say—and he done it too. He had me. He charged me more for them monkey heads than I paid for the real article. He knew he had me.”
    
    “That’s what I thought. Anybody would,” said the Patrón.
    
    “Oh, it all worked out,” said Fauna. “If you ever buy a Chungla head you’ll know you got the best.”
    
    “Yeah, but how about the joker?” said the Patrón.
    
    Fauna opened up her desk drawer and took out a beautiful little item, black as polished ebony and no bigger than a lemon. “He made up real nice, didn’t he?” said Fauna.
    
    The Patrón looked nervously away. “I got to get back,” he said. “I left my nephew in the store.”
    
    “Don’t he play trumpet?”
    
    “Drives me crazy,” said Joseph and Mary. “Got a new trumpet. Can’t get away from it. Made him go practice down on the beach. Figured the waves and the sea lions would kind of drown him out. The other night he give a passing signal to a Navy tug, and they’re still looking for what passed them. But last night was the worst. He was practicing down on the beach and he aimed his damn trumpet into the sewer pipe. Got resonance, he said. I don’t know if it’s true, but I heard that every toilet in the whole neighborhood give off with ‘Stormy Weather.’ Old lady Somers was taking an enema. I don’t believe what they said happened. I got to get back. That kid can break glass with a high note.”
    
    “Come over and visit again,” said Fauna.
    
    “You mind what I said about Suzy.”
    
    “I will,” said Fauna.
    
    
    It’s a funny thing, but you never like to trade at your own place. The store across the street has always got fresher cigarettes than you have. The girls at the Bear Flag never got cigarettes from the slot machine at the Bear Flag. When they wanted Luckies or a 7 Up they went to the Patrón’s. For that matter, nearly everyone in Cannery Row went nearly every place in Cannery Row nearly every day.
    
    Joseph and Mary had hardly got back to the grocery before Suzy came in. You wouldn’t recommend Joseph and Mary as a celebrator of God’s loveliest creation, but if you wanted a quick assay on a babe you couldn’t ask for better than Joseph and Mary’s. If he was not involved in an emotional way he was good. Between the time Suzy got change and the time she pushed the Lucky Strike button on his cigarette machine, each had gone over the other and registered the result.
    
    Suzy’s note: “Greaseball, smart and mean. Look out if he gives you something. A percentage boy. Smiles with his mouth. Eyes like a snake. May trip himself someday by being too smart.”
    
    Patrón’s note: “Lousy risk for a house. A character. Won’t play the rules. Might reverse the field. Too friendly. If she likes a guy she might toss in her roll.”
    
    The Patrón would have kicked her out of the Bear Flag. He knew that the only person you can trust is an absolutely selfish person. He always runs true to form. You know everything he’ll do. But you take somebody with an underlying kindness, and he might fool you. The only satisfactory sucker is the one who is entirely selfish. You never have any trouble with that kind. Fauna was laying herself wide open.
    
    Joseph and Mary tabulated Suzy the way he might have bought a used car. Pretty good figure, good ankles and legs, too light in the butt and too heavy in the chest. That’s a bad sign: a good hustler is flat-chested. Face kind of pretty if she felt like it. Face reflected how she felt. Good-looking if she felt good. A good hustler has a mask, looks the same to everybody, pretty, but you don’t remember what she looked like the next morning. Suzy you wouldn’t forget. A real bad risk. Suzy liked people or she didn’t like them. That in itself was bad.
    
    Cacahuete, the Patrón’s nephew, was dusting shelves, and he flashed a gold smile at Suzy.
    
    Suzy lighted up. She didn’t smile—she grinned. Her lips were full and mouth wide, and when she grinned her eyes crinkled and something warm and scary came out of her. That’s a bad risk. On top of this was toughness, but not dependable dull toughness. Suzy might take a poke at Jack Dempsey. She wasn’t smart. All in all, Joseph and Mary would’ve dumped Suzy in a minute. She’d be the kind of dumb dame who’d fall for some guy without finding out his bank balance. She was the kind, he thought, who’d give one guy a helluva lot of trouble but who’d be lousy playing the field. She had something of the same quality Doc had. The Patrón decided to warn Fauna again. This kid could be pure murder in a hookshop. Such was the Patrón’s reasoned opinion, and the Patrón was a professional. If you’d take a doctor’s advice about a disease, you’d surely take the Patrón’s about a hustler. Both could be wrong, of course.
    
    The appraisals and judgments were almost instantaneous, so that by the time Suzy had opened her cigarettes, put one in her mouth, and lighted it, the judgment was complete.
    
    “How are you?” Joseph and Mary asked.
    
    “Okay,” said Suzy. “Fauna wants some yellow pads and a couple of pencils—soft pencils.”
    
    The Patrón laid them out. “She does a lot of writing,” he said. “She’s used six pads in about a month.”
    
    “She’s doing astrology.”
    
    “You believe that stuff?”
    
    “No, but it don’t do no harm.”
    
    “I knew a guy made a good living with it,” said the Patrón.
    
    “Oh, she don’t charge nothing,” said Suzy.
    
    “I know,” said the Patrón. “I can’t figure why not. Fauna ain’t dumb.”
    
    “She sure ain’t,” said Suzy.
    
    Doc came in with two empty beer bottles. “Get a couple of cold ones back on the ice, will you?” he asked.
    
    Suzy glanced at him, took him in, and looked away. His beard shocked her a little. She didn’t stare at him the way you don’t stare at a cripple.
    
    The Patrón said, “Why don’t you put in an icebox? Then you can take a case at a time.”
    
    “It’s easier to let you keep the ice,” said Doc.“You know Suzy here? She’s new at the Bear Flag.”

    “How do you do?” said Doc.
    
    “How do you do?” said Suzy. She would have said “Hi” to anyone else.
    
    When Doc had gone the Patrón said, “That’s a funny guy.”
    
    “It takes all kinds,” said Suzy.
    
    “He knows stuff I ain’t even heard of.” The Patrón was defending Doc the way everyone did.
    
    “Kind of hoity-toity?” asked Suzy.
    
    “Hell no! That’s the way he always talks. He don’t know no other way.”
    
    “Well, I guess it takes all kinds,” said Suzy.
    
    “He gets bugs and stuff out of the ocean and sells them.”
    
    “Who to?”
    
    “Why, there’s people’ll buy anything,” said the Patrón.
    
    “I guess so. Why don’t other people do it?”
    
    “Too much work, and you got to know what to get.”
    
    “Say, why does he wear that beard? I used to know a wrestler wore one.”
    
    “I don’t know why,” said the Patrón. “Why’d the wrestler?”
    
    “Thought it made him look tough.”
    
    “Well, maybe Doc the same—but no, he don’t want to be tough.” The Patrón went on, “In the Army they made a guy with a beard shave it off. Said a guy with a beard wanted to be different, and the best way to not get along in the barracks is to be different.”
    
    “Maybe that’s it,” said Suzy. “I don’t mind a different guy if he ain’t too different.”
    
    “Dames can take it,” said the Patrón. “They don’t like it but they can take it. What the hell am I doing all this talking for? I got work to do!”
    
    Suzy asked, “You Mexican?”
    
    “American. My old man was Mexican.”
    
    “Can you talk that spick talk?”
    
    “Sure.”
    
    “Polly-voo?”
    
    “That ain’t the same kind,” said the Patrón.
    
    “Be seeing you,” said Suzy, and she went out and let the screen door slam.
    
    She ain’t a bad kid, the Patrón thought, but I’d sure kick her the hell out of the Bear Flag.
    
    
    Doc looked out the window of Western Biological. He watched Suzy walk past the vacant lot and up to the front porch of the Bear Flag. Just as she was about to climb the steps she turned and looked around. She thought someone was looking at her. She didn’t see Doc.",
    published: true
)

c14 = Chapter.create!(
    title: "The Great Roque War",
    user_id: u2.id,
    story_id: s2.id,
    chapter_number: 9,
    body: "Pacific Grove and Monterey sit side by side on a hill bordering the bay. The two towns touch shoulders but they are not alike. Whereas Monterey was founded a long time ago by foreigners, Indians and Spaniards and such, and the town grew up higgledy-piggledy without plan or purpose, Pacific Grove sprang full blown from the iron heart of a psycho-ideo-legal religion. It was formed as a retreat in the 1880s and came fully equipped with laws, ideals, and customs. On the town’s statute books a deed is void if liquor is ever brought on the property. As a result, the sale of iron-and-wine tonic is fantastic. Pacific Grove has a law that requires you to pull your shades down after sundown, and forbids you to pull them down before. Scorching on bicycles is forbidden, as is sea bathing and boating on Sundays. There is one crime which is not defined but which is definitely against the law. Hijinks are forbidden. It must be admitted that most of these laws are not enforced to the hilt. The fence that once surrounded the Pacific Grove retreat is no longer in existence.

    Once, during its history, Pacific Grove was in trouble, deep trouble. You see, when the town was founded many old people moved to the retreat, people you’d think didn’t have anything to retreat from. These old people became grumpy after a while and got to interfering in everything and causing trouble, until a philanthropist named Deems presented the town with two roque courts.
    
    Roque is a complicated kind of croquet, with narrow wickets and short-handled mallets. You play off the sidelines, like billiards. Very complicated, it is. They say it develops character.
    
    In a local sport there must be competition and a prize. In Pacific Grove a cup was given every year for the winning team on the roque courts. You wouldn’t think a thing like that would work up much heat, particularly since most of the contestants were over seventy. But it did.
    
    One of the teams was called the Blues and the other the Greens. The old men wore little skullcaps and striped blazers in their team colors.
    
    Well, it wasn’t more than two years before all hell broke loose. The Blues would practice in the court right alongside the Greens but they wouldn’t speak to them. And then it got into the families of the teams. You were a Blue family or a Green family. Finally the feeling spread outside the family. You were a partisan of the Blues or a partisan of the Greens. It got so that the Greens tried to discourage intermarriage with the Blues, and vice versa. Pretty soon it reached into politics, so that a Green wouldn’t think of voting for a Blue. It split the church right down the middle. The Blues and the Greens wouldn’t sit on the same side. They made plans to build separate churches.
    
    Of course everything got really hot at tournament time. Things were very touchy. Those old men brought a passion to the game you wouldn’t believe. Why, two octogenarians would walk away into the woods and you’d find them locked in mortal combat. They even developed secret languages so that each wouldn’t know what the other was talking about.
    
    Well, things got so hot and feeling ran so high that the county had to take notice of it. A Blue got his house burned down and then a Green was found clubbed to death with a roque mallet in the woods. A roque mallet is short-handled and heavy and can be a very deadly weapon. The old men got to carrying mallets tied to their wrists by thongs, like battle-axes. They didn’t go anyplace without them. There wasn’t any crime each didn’t charge the other with, including things they’d outgrown and couldn’t have done if they’d wanted to. The Blues wouldn’t trade in Green stores. The whole town was a mess.
    
    The original benefactor, Mr. Deems, was a nice old fellow. He used to smoke a little opium, when it was legal, and this kept him healthy and rested so that he didn’t get high blood pressure or tuberculosis. He was a benevolent man, but he was also a philosopher. When he saw what he had created by giving the roque courts to the Pacific Grove retreat he was saddened and later horrified. He said he knew how God felt.
    
    The tournament came July 30, and feeling was so bad that people were carrying pistols. Blue kids and Green kids had gang wars. Mr. Deems, after a period of years, finally figured that as long as he felt like God he might as well act like God. There was too much violence in town.
    
    On the night of July 29 Mr. Deems sent out a bulldozer. In the morning, where the roque courts had been, there was only a deep, ragged hole in the ground. If he’d had time he would have continued God’s solution. He’d have filled the hole with water.
    
    They ran Mr. Deems out of Pacific Grove. They would have tarred and feathered him if they could have caught him, but he was safe in Monterey, cooking his yen shi over a peanut-oil lamp.
    
    Every July 30, to this day, the whole town of Pacific Grove gets together and burns Mr. Deems in effigy. They make a celebration of it, dress up a life-size figure, and hang it from a pine tree. Later they burn it. People march underneath with torches, and the poor helpless figure of Mr. Deems goes up in smoke every year.
    
    
    There are people who will say that this whole account is a lie, but a thing isn’t necessarily a lie even if it didn’t necessarily happen.",
    published: true
)