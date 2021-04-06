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

# co1 = Collection.create!(
#     title: 'good books',
#     user_id: u4.id
# )

# co2 = Collection.create!(
#     title: 'my books in progress',
#     user_id: u4.id
# )

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
    body: "Mother died today. Or, maybe, yesterday; I can't be sure. The telegram from the Home says: YOUR MOTHER PASSED AWAY. FUNERAL TOMORROW. DEEP SYMPATHY. Which leaves the matter doubtful; it could have been yesterday.

    The Home for Aged Persons is at Marengo, some fifty miles from Algiers. With the two o'clock bus I should get there well before nightfall. Then I can spend the night there, keeping the usual vigil beside the body, and be back here by tomorrow evening. I have fixed up with my employer for two days' leave; obviously, under the circumstances, he couldn't refuse. Still, I had an idea he looked annoyed, and I said, without thinking: “Sorry, sir, but it's not my fault, you know.”
    
    Afterwards it struck me I needn't have said that. I had no reason to excuse myself; it was up to him to express his sympathy and so forth. Probably he will do so the day after tomorrow, when he sees me in black. For the present, it's almost as if Mother weren't really dead. The funeral will bring it home to me, put an official seal on it, so to speak…
    
    I took the two-o'clock bus. It was a blazing hot afternoon. I'd lunched, as usual, at Céleste's restaurant. Everyone was most kind, and Céleste said to me, “There's no one like a mother.” When I left they came with me to the door. It was something of a rush, getting away, as at the last moment I had to call in at Emmanuel's place to borrow his black tie and mourning band. He lost his uncle a few months ago.
    
    I had to run to catch the bus. I suppose it was my hurrying like that, what with the glare off the road and from the sky, the reek of gasoline, and the jolts, that made me feel so drowsy. Anyhow, I slept most of the way. When I woke I was leaning against a soldier; he grinned and asked me if I'd come from a long way off, and I just nodded, to cut things short. I wasn't in a mood for talking.
    
    The Home is a little over a mile from the village. I went there on foot. I asked to be allowed to see Mother at once, but the doorkeeper told me I must see the warden first. He wasn't free, and I had to wait a bit. The doorkeeper chatted with me while I waited; then he led me to the office. The warden was a very small man, with gray hair, and a Legion of Honor rosette in his buttonhole. He gave me a long look with his watery blue eyes. Then we shook hands, and he held mine so long that I began to feel embarrassed. After that he consulted a register on his table, and said:
    
    “Madame Meursault entered the Home three years ago. She had no private means and depended entirely on you.”
    
    I had a feeling he was blaming me for something, and started to explain. But he cut me short.
    
    “There's no need to excuse yourself, my boy. I've looked up the record and obviously you weren't in a position to see that she was properly cared for. She needed someone to be with her all the time, and young men in jobs like yours don't get too much pay. In any case, she was much happier in the Home.”
    
    I said, “Yes, sir; I'm sure of that.”
    
    Then he added: “She had good friends here, you know, old folks like herself, and one gets on better with people of one's own generation. You're much too young; you couldn't have been much of a companion to her.”
    
    That was so. When we lived together, Mother was always watching me, but we hardly ever talked. During her first few weeks at the Home she used to cry a good deal. But that was only because she hadn't settled down. After a month or two she'd have cried if she'd been told to leave the Home. Because this, too, would have been a wrench. That was why, during the last year, I seldom went to see her. Also, it would have meant losing my Sunday—not to mention the trouble of going to the bus, getting my ticket, and spending two hours on the journey each way.
    
    The warden went on talking, but I didn't pay much attention. Finally he said:
    
    “Now, I suppose you'd like to see your mother?”
    
    I rose without replying, and he led the way to the door. As we were going down the stairs he explained:
    
    “I've had the body moved to our little mortuary—so as not to upset the other old people, you understand. Every time there's a death here, they're in a nervous state for two or three days. Which means, of course, extra work and worry for our staff.”
    
    We crossed a courtyard where there were a number of old men, talking amongst themselves in little groups. They fell silent as we came up with them. Then, behind our backs, the chattering began again. Their voices reminded me of parakeets in a cage, only the sound wasn't quite so shrill. The warden stopped outside the entrance of a small, low building.
    
    “So here I leave you, Monsieur Meursault. If you want me for anything, you'll find me in my office. We propose to have the funeral tomorrow morning. That will enable you to spend the night beside your mother's coffin, as no doubt you would wish to do. Just one more thing; I gathered from your mother's friends that she wished to be buried with the rites of the Church. I've made arrangements for this; but I thought I should let you know.”
    
    I thanked him. So far as I knew, my mother, though not a professed atheist, had never given a thought to religion in her life.
    
    I entered the mortuary. It was a bright, spotlessly clean room, with whitewashed walls and a big skylight. The furniture consisted of some chairs and trestles. Two of the latter stood open in the center of the room and the coffin rested on them. The lid was in place, but the screws had been given only a few turns and their nickeled heads stuck out above the wood, which was stained dark walnut. An Arab woman—a nurse, I supposed—was sitting beside the bier; she was wearing a blue smock and had a rather gaudy scarf wound round her hair.
    
    Just then the keeper came up behind me. He'd evidently been running, as he was a little out of breath.
    
    “We put the lid on, but I was told to unscrew it when you came, so that you could see her.”
    
    While he was going up to the coffin I told him not to trouble.
    
    “Eh? What's that?” he exclaimed. “You don't want me to…?”
    
    “No,” I said.
    
    He put back the screwdriver in his pocket and stared at me. I realized then that I shouldn't have said, “No,” and it made me rather embarrassed. After eying me for some moments he asked:
    
    “Why not?” But he didn't sound reproachful; he simply wanted to know.
    
    “Well, really I couldn't say,” I answered.
    
    He began twiddling his white mustache; then, without looking at me, said gently:
    
    “I understand.”
    
    He was a pleasant-looking man, with blue eyes and ruddy cheeks. He drew up a chair for me near the coffin, and seated himself just behind. The nurse got up and moved toward the door. As she was going by, the keeper whispered in my ear:
    
    “It's a tumor she has, poor thing.”
    
    I looked at her more carefully and I noticed that she had a bandage round her head, just below her eyes. It lay quite flat across the bridge of her nose, and one saw hardly anything of her face except that strip of whiteness.
    
    As soon as she had gone, the keeper rose.
    
    “Now I'll leave you to yourself.”
    
    I don't know whether I made some gesture, but instead of going he halted behind my chair. The sensation of someone posted at my back made me uncomfortable. The sun was getting low and the whole room was flooded with a pleasant, mellow light. Two hornets were buzzing overhead, against the skylight. I was so sleepy I could hardly keep my eyes open. Without looking round, I asked the keeper how long he'd been at the Home. “Five years.” The answer came so pat that one could have thought he'd been expecting my question.
    
    That started him off, and he became quite chatty. If anyone had told him ten years ago that he'd end his days as doorkeeper at a home at Marengo, he'd never have believed it. He was sixty-four, he said, and hailed from Paris.
    
    When he said that, I broke in. “Ah, you don't come from here?”
    
    I remembered then that, before taking me to the warden, he'd told me something about Mother. He had said she'd have to be buried mighty quickly because heat in these parts, especially down in the plain. “At Paris they keep the body for three days, sometimes four.” After that he had mentioned that he'd spent the best part of his life in Paris, and could never manage to forget it. “Here,” he had said, “things have to go with a rush, like. You've hardly time to get used to the idea that someone's dead, before you're hauled off to the funeral.” “That's enough,” his wife had put in. “You didn't ought to say such things to the poor young gentleman.” The old fellow had blushed and begun to apologize. I told him it was quite all right. As a matter of fact, I found it rather interesting, what he'd been telling me; I hadn't thought of that before.
    
    Now he went on to say that he'd entered the Home as an ordinary inmate. But he was still quite hale and hearty, and when the keeper's job fell vacant, he offered to take it on.
    
    I pointed out that, even so, he was really an inmate like the others, but he wouldn't hear of it. He was “an official, like.” I'd been struck before by his habit of saying “they” or, less often, “them old folks,” when referring to inmates no older than himself. Still, I could see his point of view. As doorkeeper he had a certain standing, and some authority over the rest of them.
    
    Just then the nurse returned. Night had fallen very quickly; all of a sudden, it seemed, the sky went black above the skylight. The keeper switched on the lamps, and I was almost blinded by the blaze of light.
    
    He suggested I should go to the refectory for dinner, but I wasn't hungry. Then he proposed bringing me a mug of café au lait. As I am very partial to café au lait I said, “Thanks,” and a few minutes later he came back with a tray. I drank the coffee, and then I wanted a cigarette. But I wasn't sure if I should smoke, under the circumstances—in Mother's presence. I thought it over; really, it didn't seem to matter, so I offered the keeper a cigarette, and we both smoked.
    
    After a while he started talking again. “You know, your mother's friends will be coming soon, to keep vigil with you beside the body. We always have a ‘vigil’ here, when anyone dies. I'd better go and get some chairs and a pot of black coffee.”
    
    The glare off the white walls was making my eyes smart, and I asked him if he couldn't turn off one of the lamps. “Nothing doing,” he said. They'd arranged the lights like that; either one had them all on or none at all. After that I didn't pay much more attention to him. He went out, brought some chairs, and set them out round the coffin. On one he placed a coffeepot and ten or a dozen cups. Then he sat down facing me, on the far side of Mother. The nurse was at the other end of the room, with her back to me. I couldn't see what she was doing, but by the way her arms moved I guessed that she was knitting. I was feeling very comfortable; the coffee had warmed me up, and through the open door came scents of flowers and breaths of cool night air. I think I dozed off for a while.
    
    I was wakened by an odd rustling in my ears. After having had my eyes closed, I had a feeling that the light had grown even stronger than before. There wasn't a trace of shadow anywhere, and every object, each curve or angle, seemed to score its outline on one's eyes. The old people, Mother's friends, were coming in. I counted ten in all, gliding almost soundlessly through the bleak white glare. None of the chairs creaked when they sat down. Never in my life had I seen anyone so clearly as I saw these people; not a detail of their clothes or features escaped me. And yet I couldn't hear them, and it was hard to believe they really existed.
    
    Nearly all the women wore aprons, and the strings drawn tight round their waists made their big stomachs bulge still more. I'd never yet noticed what big paunches old women usually have. Most of the men, however, were as thin as rakes, and they all carried sticks. What struck me most about their faces was that one couldn't see their eyes, only a dull glow in a sort of nest of wrinkles.
    
    On sitting down, they looked at me, and wagged their heads awkwardly, their lips sucked in between their toothless gums. I couldn't decide if they were greeting me and trying to say something, or if it was due to some infirmity of age. I inclined to think that they were greeting me, after their fashion, but it had a queer effect, seeing all those old fellows grouped round the keeper, solemnly eying me and dandling their heads from side to side. For a moment I had an absurd impression that they had come to sit in judgment on me.
    
    A few minutes later one of the women started weeping. She was in the second row and I couldn't see her face because of another woman in front. At regular intervals she emitted a little choking sob; one had a feeling she would never stop. The others didn't seem to notice. They sat in silence, slumped in their chairs, staring at the coffin or at their walking sticks or any object just in front of them, and never took their eyes off it. And still the woman sobbed. I was rather surprised, as I didn't know who she was. I wanted her to stop crying, but dared not speak to her. After a while the keeper bent toward her and whispered in her ear; but she merely shook her head, mumbled something I couldn't catch, and went on sobbing as steadily as before.
    
    The keeper got up and moved his chair beside mine. At first he kept silent; then, without looking at me, he explained.
    
    “She was devoted to your mother. She says your mother was her only friend in the world, and now she's all alone.”
    
    I had nothing to say, and the silence lasted quite a while. Presently the woman's sighs and sobs became less frequent, and, after blowing her nose and snuffling for some minutes, she, too, fell silent.
    
    I'd ceased feeling sleepy, but I was very tired and my legs were aching badly. And now I realized that the silence of these people was telling on my nerves. The only sound was a rather queer one; it came only now and then, and at first I was puzzled by it. However, after listening attentively, I guessed what it was; the old men were sucking at the insides of their cheeks, and this caused the odd, wheezing noises that had mystified me. They were so much absorbed in their thoughts that they didn't know what they were up to. I even had an impression that the dead body in their midst meant nothing at all to them. But now I suspect that I was mistaken about this.We all drank the coffee, which the keeper handed round. After that, I can't remember much; somehow the night went by. I can recall only one moment; I had opened my eyes and I saw the old men sleeping hunched up on their chairs, with one exception. Resting his chin on his hands clasped round his stick, he was staring hard at me, as if he had been waiting for me to wake. Then I fell asleep again. I woke up after a bit, because the ache in my legs had developed into a sort of cramp.

    There was a glimmer of dawn above the skylight. A minute or two later one of the old men woke up and coughed repeatedly. He spat into a big check handkerchief, and each time he spat it sounded as if he were retching. This woke the others, and the keeper told them it was time to make a move. They all got up at once. Their faces were ashen gray after the long, uneasy vigil. To my surprise each of them shook hands with me, as though this night together, in which we hadn't exchanged a word, had created a kind of intimacy between us.
    
    I was quite done in. The keeper took me to his room, and I tidied myself up a bit. He gave me some more “white” coffee, and it seemed to do me good. When I went out, the sun was up and the sky mottled red above the hills between Marengo and the sea. A morning breeze was blowing and it had a pleasant salty tang. There was the promise of a very fine day. I hadn't been in the country for ages, and I caught myself thinking what an agreeable walk I could have had, if it hadn't been for Mother.
    
    As it was, I waited in the courtyard, under a plane tree. I sniffed the smells of the cool earth and found I wasn't sleepy any more. Then I thought of the other fellows in the office. At this hour they'd be getting up, preparing to go to work; for me this was always the worst hour of the day. I went on thinking, like this, for ten minutes or so; then the sound of a bell inside the building attracted my attention. I could see movements behind the windows; then all was calm again. The sun had risen a little higher and was beginning to warm my feet. The keeper came across the yard and said the warden wished to see me. I went to his office and he got me to sign some document. I noticed that he was in black, with pin-stripe trousers. He picked up the telephone receiver and looked at me.
    
    “The undertaker's men arrived some moments ago, and they will be going to the mortuary to screw down the coffin. Shall I tell them to wait, for you to have a last glimpse of your mother?”
    
    “No,” I said.
    
    He spoke into the receiver, lowering his voice. “That's all right, Figeac. Tell the men to go there now.”
    
    He then informed me that he was going to attend the funeral, and I thanked him. Sitting down behind his desk, he crossed his short legs and leaned back. Besides the nurse on duty, he told me, he and I would be the only mourners at the funeral. It was a rule of the Home that inmates shouldn't attend funerals, though there was no objection to letting some of them sit up beside the coffin, the night before.
    
    “It's for their own sakes,” he explained, “to spare their feelings. But in this particular instance I've given permission to an old friend of your mother to come with us. His name is Thomas Pérez.” The warden smiled. “It's a rather touching little story in its way. He and your mother had become almost inseparable. The other old people used to tease Pérez about having a fiancée. ‘When are you going to marry her?’ they'd ask. He'd turn it with a laugh. It was a standing joke, in fact. So, as you can guess, he feels very badly about your mother's death. I thought I couldn't decently refuse him permission to attend the funeral. But, on our medical officer's advice, I forbade him to sit up beside the body last night.”
    
    For some time we sat there without speaking. Then the warden got up and went to the window. Presently he said:
    
    “Ah, there's the padre from Marengo. He's a bit ahead of time.”
    
    He warned me that it would take us a good three quarters of an hour, walking to the church, which was in the village. Then we went downstairs.
    
    The priest was waiting just outside the mortuary door. With him were two acolytes, one of whom had a censer. The priest was stooping over him, adjusting the length of the silver chain on which it hung. When he saw us he straightened up and said a few words to me, addressing me as, “My son.” Then he led the way into the mortuary.
    
    I noticed at once that four men in black were standing behind the coffin and the screws in the lid had now been driven home. At the same moment I heard the warden remark that the hearse had arrived, and the priest starting his prayers. Then everybody made a move. Holding a strip of black cloth, the four men approached the coffin, while the priest, the boys, and myself filed out. A lady I hadn't seen before was standing by the door. “This is Monsieur Meursault,” the warden said to her. I didn't catch her name, but I gathered she was a nursing sister attached to the Home. When I was introduced, she bowed, without the trace of a smile on her long, gaunt face. We stood aside from the doorway to let the coffin by; then, following the bearers down a corridor, we came to the front entrance, where a hearse was waiting. Oblong, glossy, varnished black all over, it vaguely reminded me of the pen trays in the office.
    
    Beside the hearse stood a quaintly dressed little man, whose duty it was, I understood, to supervise the funeral, as a sort of master of ceremonies. Near him, looking constrained, almost bashful, was old M. Pérez, my mother's special friend. He wore a soft felt hat with a pudding-basin crown and a very wide brim—he whisked it off the moment the coffin emerged from the doorway—trousers that concentrated on his shoes, a black tie much too small for his high white double collar. Under a bulbous, pimply nose, his lips were trembling. But what caught my attention most was his ears; pendulous, scarlet ears that showed up like blobs of sealing wax on the pallor of his cheeks and were framed in wisps of silky white hair.
    
    The undertaker's factotum shepherded us to our places, with the priest in front of the hearse, and the four men in black on each side of it. The warden and myself came next, and, bringing up the rear, old Pérez and the nurse.
    
    The sky was already a blaze of light, and the air stoking up rapidly. I felt the first waves of heat lapping my back, and my dark suit made things worse. I couldn't imagine why we waited so long for getting under way. Old Pérez, who had put on his hat, took it off again. I had turned slightly in his direction and was looking at him when the warden started telling me more about him. I remember his saying that old Pérez and my mother used often to have a longish stroll together in the cool of the evening; sometimes they went as far as the village, accompanied by a nurse, of course.
    
    I looked at the countryside, at the long lines of cypresses sloping up toward the skyline and the hills, the hot red soil dappled with vivid green, and here and there a lonely house sharply outlined against the light—and I could understand Mother's feelings. Evenings in these parts must be a sort of mournful solace. Now, in the full glare of the morning sun, with everything shimmering in the heat haze, there was something inhuman, discouraging, about this landscape.
    
    At last we made a move. Only then I noticed that Pérez had a slight limp. The old chap steadily lost ground as the hearse gained speed. One of the men beside it, too, fell back and drew level with me. I was surprised to see how quickly the sun was climbing up the sky, and just then it struck me that for quite a while the air had been throbbing with the hum of insects and the rustle of grass warming up. Sweat was running down my face. As I had no hat I tried to fan myself with my handkerchief.
    
    The undertaker's man turned to me and said something that I didn't catch. At that same time he wiped the crown of his head with a handkerchief that he held in his left hand, while with his right he tilted up his hat. I asked him what he'd said. He pointed upward.
    
    “Sun's pretty bad today, ain't it?”
    
    “Yes,” I said.
    
    After a while he asked: “Is it your mother we're burying?”
    
    “Yes,” I said again.
    
    “What was her age?”
    
    “Well, she was getting on.” As a matter of fact, I didn't know exactly how old she was.
    
    After that he kept silent. Looking back, I saw Pérez limping along some fifty yards behind. He was swinging his big felt hat at arm's length, trying to make the pace. I also had a look at the warden. He was walking with carefully measured steps, economizing every gesture. Beads of perspiration glistened on his forehead, but he didn't wipe them off.
    
    I had an impression that our little procession was moving slightly faster. Wherever I looked I saw the same sun-drenched countryside, and the sky was so dazzling that I dared not raise my eyes. Presently we struck a patch of freshly tarred road. A shimmer of heat played over it and one's feet squelched at each step, leaving bright black gashes. In front, the coachman's glossy black hat looked like a lump of the same sticky substance, poised above the hearse. It gave one a queer, dreamlike impression, that blue-white glare overhead and all this blackness round one: the sleek black of the hearse, the dull black of the men's clothes, and the silvery-black gashes in the road. And then there were the smells, smells of hot leather and horse dung from the hearse, veined with whiffs of incense smoke. What with these and the hangover from a poor night's sleep, I found my eyes and thoughts growing blurred.
    
    I looked back again. Pérez seemed very far away now, almost hidden by the heat haze; then, abruptly, he disappeared altogether. After puzzling over it for a bit, I guessed that he had turned off the road into the fields. Then I noticed that there was a bend of the road a little way ahead. Obviously Pérez, who knew the district well, had taken a short cut, so as to catch up with us. He rejoined us soon after we were round the bend; then began to lose ground again. He took another short cut and met us again farther on; in fact, this happened several times during the next half-hour. But soon I lost interest in his movements; my temples were throbbing and I could hardly drag myself along.
    
    After that everything went with a rush; and also with such precision and matter-of-factness that I remember hardly any details. Except that when we were on the outskirts of the village the nurse said something to me. Her voice took me by surprise; it didn't match her face at all; it was musical and slightly tremulous. What she said was: “If you go too slowly there's the risk of a heatstroke. But, if you go too fast, you perspire, and the cold air in the church gives you a chill.” I saw her point; either way one was in for it.
    
    Some other memories of the funeral have stuck in my mind. The old boy's face, for instance, when he caught up with us for the last time, just outside the village. His eyes were streaming with tears, of exhaustion or distress, or both together. But because of the wrinkles they couldn't flow down. They spread out, crisscrossed, and formed a smooth gloss on the old, worn face.
    
    And I can remember the look of the church, the villagers in the street, the red geraniums on the graves, Pérez's fainting fit—he crumpled up like a rag doll—the tawny-red earth pattering on Mother's coffin, the bits of white roots mixed up with it; then more people, voices, the wait outside a café for the bus, the rumble of the engine, and my little thrill of pleasure when we entered the first brightly lit streets of Algiers, and I pictured myself going straight to bed and sleeping twelve hours at a stretch.",
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
    “I am silly. Everybody knows that.”
    “You always mix me up. You’ve got every right to be proud— Pilgrim Fathers and whaling captains right in one family.”
    “Have they?”
    “What do you mean?”
    “Would my great ancestors be proud to know they produced a goddam grocery clerk in a goddam wop store in a town they used to own?”
    “You are not. You’re more like the manager, keep the books and bank the money and order the goods.”
    “Sure. And I sweep out and carry garbage and kowtow to Marullo, and if I was a goddam cat, I’d be catching Marullo’s mice.”
    She put her arms around him. “Let’s be silly,” she said. “Please don’t say swear words on Good Friday. I do love you.”
    “Okay,” he said after a moment. “That’s what they all say. Don’t think that lets you lie jaybird naked with a married man.”
    “I was going to tell you about the children.”
    “They in jail?”
    “Now you’re silly again. Maybe it’s better if they tell you.”
    “Now why don’t you—”
    “Margie Young-Hunt’s going to read me again today.”
    “Like a book? Who’s Margie Young-Hunt, what is she, that all our swains—”
    “You know if I was jealous—I mean they say when a man pretends he don’t notice a pretty girl—”
    “Oh, that one. Girl? She’s had two husbands.”
    “The second one died.”
    “I want my breakfast. Do you believe that stuff?”
    “Well Margie saw about Brother in the cards. Someone near and dear, she said.”
    “Someone near and dear to me is going to get a kick in the pants if she doesn’t haul freight—”
    “I’m going—eggs?”
    “I guess so. Why do they call it Good Friday? What’s good about it?”
    “Oh! You!” she said. “You always make jokes.”
     
    The coffee was made and the eggs in a bowl with toast beside them when Ethan Allen Hawley slid into the dinette near the window.
    “I feel good,” he said. “Why do they call it Good Friday?”
    “Spring,” she said from the stove.
    “Spring Friday?”
    “Spring fever. Is that the children up?”
    “Fat chance. Lazy little bastards. Let’s get ’em up and whip ’em.”
    “You talk terrible when you’re silly. Will you come home twelve to three?”
    “Nope.”
    “Why not?”
    “Women. Sneak ’em in. Maybe that Margie.”
    “Now Ethan, don’t you talk like that. Margie’s a good friend. She’d give you the shirt off her back.”
    “Yah? Where’d she get the shirt?”
    “That’s Pilgrim talk again.”
    “I bet you anything we’re related. She’s got pirate blood.”
    “Oh! You’re just silly again. Here’s your list.” She tucked it in his breast pocket. “Seems like a lot. But it’s Easter weekend, don’t forget—and two dozen eggs, don’t forget. You’re going to be late.”
    “I know. Might miss a two-bit sale for Marullo. Why two dozen?”
    “For dyeing. Allen and Mary Ellen asked specially. You better go.”
    “Okay, bugflower—but can’t I just go up and beat the hell out of Allen and Mary Ellen?”
    “You spoil them rotten, Eth. You know you do.”
    “Farewell, O ship of state,” he said, and slammed the screen door after him and went out into the green-gold morning.
    He looked back at the fine old house, his father’s house and his great-grandfather’s, white-painted shiplap with a fanlight over the front door, and Adam decorations and a widow’s walk on the roof. It was deep-set in the greening garden among lilacs a hundred years old, thick as your waist, and swelling with buds. The elms of Elm Street joined their tops and yellowed out in new-coming leaf. The sun had just cleared the bank building and flashed on the silvery gas tower, starting the kelp and salt smell from the old harbor.
    Only one person in early Elm Street, Mr. Baker’s red setter, the banker’s dog, Red Baker, who moved with slow dignity, pausing occasionally to sniff the passenger list on the elm trunks.
    “Good morning, sir. My name is Ethan Allen Hawley. I’ve met you in pissing.”
    Red Baker stopped and acknowledged the greeting, with a slow sway of his plumed tail.
    Ethan said, “I was just looking at my house. They knew how to build in those days.”
    Red cocked his head and reached with a hind foot to kick casually at his ribs.
    “And why not? They had the money. Whale oil from the seven seas, and spermaceti. Do you know what spermaceti is?”
    Red gave a whining sigh.
    “I see you don’t. A light, lovely rose-smelling oil from the head cavity of the sperm whale. Read Moby-Dick, dog. That’s my advice to you.”
    The setter lifted his leg on the cast-iron hitching post at the gutter.
    Turning to walk away, Ethan said over his shoulder, “And make a book report. You might teach my son. He can’t even spell spermaceti, or—or anything.”
    Elm Street runs at an angle into High Street two blocks from the old Ethan Allen Hawley house. Halfway down the first block a delinquent gang of English sparrows were fighting on the new-coming lawn of the Elgar house, not playing but rolling and picking and eye-gouging with such ferocity and so noisily that they didn’t see Ethan approach. He stopped to watch the battle.
    “Birds in their little nests agree,” he said. “So why can’t we? Now there’s a bunch of horse crap for you. You kids can’t get along even on a pretty morning. And you’re the bastards Saint Francis was nice to. Screw!” He ran at them, kicking, and the sparrows rose with a whispered roar of wings, complaining bitterly in door-squeak voices. “Let me tell you this,” Ethan said after them. “At noon the sun will darken and a blackness will fall on the earth and you will be afraid.” He came back to the sidewalk and proceeded on his way.
    The old Phillips house in the second block is a boarding house now. Joey Morphy, teller at the First National, came out of the front door. He picked his teeth and straightened his Tattersall waistcoat and said, “Hi,” to Ethan. “I was just going to call on you, Mr. Hawley,” he said.
    “Why do they call it Good Friday?”
    “It’s from the Latin,” said Joey. “Goodus, goodilius, goodum, meaning lousy.”
    Joey looked like a horse and he smiled like a horse, raising a long upper lip to show big square teeth. Joseph Patrick Morphy, Joey Morphy, Joey-boy—“the Morph”—a real popular guy for one only a few years at New Baytown. A joker who got off his gags veily-eyed like a poker player, but he whinnied at other people’s jokes, whether or not he had heard them. A wise guy, the Morph, had the inside dope on everything—and everybody from Mafia to Mountbatten—but he gave it out with a rising inflection, almost like a question. That took the smartaleck tone out of it, made his listener a party to it so that he could repeat it as his own. Joey was a fascinating monkey—a gambler but no one ever saw him lay down a bet, a good book-keeper and a wonderful bank teller. Mr. Baker, First National president, trusted Joey so completely that he let the teller do most of the work. The Morph knew everyone intimately and never used a first name. Ethan was Mr. Hawley. Margie Young-Hunt was Mrs. Young-Hunt to Joey, even though it was whispered that he was laying her. He had no family, no connections, lived alone in two rooms and private bath in the old Phillips house, ate most of his meals at the Foremaster Grill and Bar. His banking past was known to Mr. Baker and the bonding company and it was immaculate, but Joey-boy had a way of telling things that had happened to someone else in a way that made you suspect they had happened to Joey, and if that was so, he had really been around. Not taking credit made people like him even more. He kept his fingernails very clean, dressed well and sharply, and always had a clean shirt and a shoeshine.
    The two men strolled together down Elm Street toward High.
    “I’ve been meaning to ask you. You related to Admiral Hawley ?”
    “Don’t you mean Admiral Halsey?” Ethan asked. “We’ve had lots of captains but I never heard of an admiral in the family.”
    “I heard your granddad was a whaling captain. Kind of connected up in my mind with the admiral, I guess.”“Town like this has got myths,” said Ethan. “Like they say people on my dad’s side did some pirating way back and my mother’s family came over in the Mayflower.”
    “Ethan Allen,” Joey said. “My God—you related to him too?”
    “Might be. Must be,” said Ethan. “What a day—ever see a prettier? What was it you wanted to see me about?”
    “Oh, yes. I guess you’re closing the store twelve to three. Would you make me a couple of sandwiches about half past eleven? I’ll run in and get them. And a bottle of milk.”
    “Bank’s not closing?”
    “Bank is. I’m not. Little Joey’ll be right in there, chained to the books. Big weekend like this—everybody and his dog cashing checks.”
    “I never thought of that,” said Ethan.
    “Oh, sure. Easter, Memorial Day, Fourth of July, Labor Day—any long weekend. If I wanted to stick up a bank, I’d do it just before a long weekend. The stuff’s right there all laid out, waiting.”
    “You ever get stuck up, Joey?”
    “No. But I had a friend that did twice.”
    “What did he say about it?”
    “Said he was scared. Just took orders. Laid down on the floor and let ’em have it. Said the money was better insured than he was.”
    “I’ll bring you the sandwiches when I close up. I’ll knock on the back door. What kind you want?”
    “Don’t bother, Mr. Hawley. I’ll slip across the alley—one ham and one cheese on rye, lettuce and mayonnaise, and maybe one bottle of milk and a Coke for later.”
    “Got some nice salami—that’s Marullo.”
    “No, thanks. How’s the one-man Mafia holding up?”
    “All right, I guess.”
    “Well, even if you don’t like guineas, you got to admire a guy can build a pushcart into all the property he owns. He’s pretty cute. People don’t know how much he’s got salted away. Maybe I shouldn’t say that. Banker’s not supposed to tell.”
    “You didn’t tell.”
    They had come to the corner where Elm angles into High Street. Automatically they stopped and turned to look at the pink brick and plaster mess that was the old Bay Hotel, now being wrecked to make room for the new Woolworth’s. The yellow-painted bulldozer and the big crane that swung the wrecking ball were silent like waiting predators in the early morning.
    “I always wanted to do that,” Joey said. “Must be a kick to swing that steel ball and see a wall go down.”
    “I saw enough go down in France,” Ethan said.
    “Yeah! Your name’s on the monument down by the water-front.”
    “Did they ever catch the robbers that stuck up your friend?” Ethan was sure the friend was Joey himself. Anyone would have been.
    “Oh, sure. Caught ’em like mice. It’s lucky robbers aren’t smart. If Joey-boy wrote a book how to rob a bank, the cops would never catch anybody.”
    Ethan laughed. “How’d you go about it?”
    “I got a pipeline, Mr. Hawley. I just read the papers. And I used to know a guy pretty well was a cop. You want the two-dollar lecture?”
    “ ’Bout six bits’ worth. I’ve got to open the store.”
    “Ladies and gentlemen,” said Joey, “I am here this morning—No, look! How do they catch bank robbers? Number one—record, got caught before. Number two—get fighting over the profits and someone blows it. Number three—dames. Can’t let dames alone, and that ties into number four—they got to spend that money. Watch new spenders and you got them.”
    “So what’s your method, professor, sir?”
    “Simple as socks. Everything opposite. Never rob a bank if you ever got caught or booked for anything. No confederates— do it alone and don’t tell a soul, nobody. Forget dames. And don’t spend it. Put it away, maybe for years. Then, when you’ve got some excuse for having some money, bring it out a little at a time and invest. Don’t spend.”
    “How about if the robber got recognized?”
    “If he covers his face and don’t talk, who’s going to recognize him? You ever read descriptions by eyewitnesses? They’re nuts. My cop friend says sometimes when they’d plant him in the line-up, he got picked out over and over again. People swore their eyes out he did whatever it was. That’ll be six bits, please.”
    Ethan put his hand in his pocket. “I’ll have to owe you.”
    “I’ll take it out in sandwiches,” said Joey.
    The two crossed High Street and entered the alley that right-angled from the other side. Joey went in the back door of the First National Bank on his side of the alley, and Ethan unlocked the alley door of Marullo’s Fruit and Fancy Groceries on his side. “Ham and cheese?” he called.
    “On rye—lettuce and mayonnaise.”
    A little light, grayed by the dusty iron-barred window, came into the storeroom from the narrow alley. Ethan paused in the twilight place shelved to the ceiling and stacked with the cartons and wooden cases of canned fruits, vegetables, fish, processed meats, and cheese. He sniffed for mice among the seminal smells of flour and dried beans and peas, the paper-and-ink odor of boxed cereals, thick rich sourness of cheeses, and sausage, reek of hams and bacon, ferment of cabbage trimmings, lettuce, and beet tops from the silvery garbage cans beside the back door. Perceiving no rusty must of mouse, he opened the alley door again and rolled the covered garbage cans into the alley. A gray cat darted to get in, but he drove it away.
    “No you don’t,” he remarked to the cat. “Mice and rats are feed for cats, but you’re a sausage nibbler. Aroint! You hear me—aroint!” The seated cat was licking a curled pink paw but at the second “aroint” he hightailed away and scrambled over the board fence behind the bank. “That must be a magic word,” Ethan said aloud. He returned to the storeroom and closed the door after him.
    Now through the dusty room to the swinging door of the grocery—but at the cubicle of the toilet he heard the whispering of seeping water. He opened the plywood door, switched on the light, and flushed the toilet. Then he pushed open the wide door with wire-netted glass peekhole and wedged it open, kicking the wood block firmly in with his toe.
    The store was greeny from the drawn shades over the big front windows. Again shelves to the ceiling, filled neatly with gleaming canned and glassed foods, a library for the stomach. On one side—counter, cash register, bags, string, and that glory in stainless steel and white enamel, the cold cabinet, in which the compressor whispered to itself. Ethan flipped a switch and flooded the cold cuts, cheeses, sausage, chops, steaks, and fish with a cold bluish neon glare. A reflected cathedral light filled the store, a diffused cathedral light like that of Chartres. Ethan paused to admire it, the organ pipes of canned tomatoes, the chapels of mustard and olives, the hundred oval tombs of sardines.
    “Unimum et unimorum,” he intoned in a nasal litanic tone. “Uni unimouse quod unibug in omnem unim, domine— ahhhhhmen,” he sang. And he could hear his wife commenting, “That’s silly and besides it might hurt somebody’s feelings. You can’t go around hurting feelings.”
    A clerk in a grocery store—Marullo’s grocery store—a man with a wife and two darling children. When is he alone, when can he be alone? Customers in the daytime, wife and kiddies in the evening; wife at night, customers in the daytime, wife and kiddies in the evening. “Bathroom—that’s when,” Ethan said loudly, and right now, before I open the sluice. Oh! the dusky, musky, smelly-welly, silly-billy time—the slovenly-lovely time. “Now whose feelings can I hurt, sugarfoot?” he said to his wife. “There ain’t nobody nor nobody’s feelings here. Just me and my unimum unimorum until—until I open that goddam front door.”
    From a drawer behind the counter by the cash register he took a clean apron and unfolded it and straightened the tapes, put it around his thin middle, brought the tapes around and back again. He reached behind his back with both hands and fumbled a bowknot.
    The apron was long, halfway down his shins. He raised his right hand, cupped loosely, palm upward, and he declaimed, “Hear me O ye canned pears, ye pickles and ye piccalilli—‘As soon as it was day, the elders of the people and the chief priests and the scribes came together and led Him into their council—’ as soon as it was day. The buggers went to work early, didn’t they? They didn’t waste no time nohow. Let’s see now. ‘And it was about the sixth hour’—that’s maybe twelve o’clock—‘and there was a darkness over all the earth until the ninth hour. And the sun was darkened.’ Now how do I remember that? Good God, it took Him a long time to die—a dreadful long time.” He dropped his hand and looked wondering at the crowded shelves as though they might answer him. “You don’t speak to me now, Mary, my dumpling. Are you one of the Daughters of Jerusalem? ‘Weep not for me,’ He said. ‘Weep for yourselves and for your children. . . . For if they do these things in a green tree, what shall be done in the dry?’ Still breaks me up. Aunt Deborah wrought better than she knew. It’s not the sixth hour yet—not yet.”
    He raised the green shades on the big windows, saying, “Come in, day!” And then he unlocked the front doors. “Enter, world.” He swung the iron-barred doors open and latched them open. And the morning sun lay softly on the pavement as it should, for in April the sun arose right where the High Street ran into the bay. Ethan went back to the toilet for a broom to sweep the sidewalk.
    A day, a livelong day, is not one thing but many. It changes not only in growing light toward zenith and decline again, but in texture and mood, in tone and meaning, warped by a thousand factors of season, of heat or cold, of still or multi winds, torqued by odors, tastes, and the fabrics of ice or grass, of bud or leaf or black-drawn naked limbs. And as a day changes so do its subjects, bugs and birds, cats, dogs, butterflies and people.
    Ethan Allen Hawley’s quiet, dim, and inward day was done. The man who swept the morning pavement with metronomic strokes was not the man who could sermonize to canned goods, not a unimum unimorum man, not even a silly-billy man. He gathered cigarette ends and gum wrappers, bud cases from the pollenizing trees, and simple plain dust in the sweep of his broom and moved the windrow of derelict toward the gutter, to await the town men with their silver truck.
    Mr. Baker took his measured decent way from his house on Maple Street toward the red brick basilica of a First National Bank. And if his steps were not of equal length, who was to know that out of ancient habit he avoided breaking his mother’s back?
    “Good morning, Mr. Baker,” Ethan said and held his stroke to save the banker’s neat serge pants from dust.
    “Morning, Ethan. Fine morning.”
    “Fine,” said Ethan. “Spring’s in, Mr. Baker. Groundhog was right again.”
    “He was, he was.” Mr. Baker paused. “I’ve been wanting to talk to you, Ethan. That money your wife got by her brother’s will—over five thousand, isn’t it?”
    “Sixty-five hundred after taxes,” Ethan said.
    “Well, it’s just lying in the bank. Ought to be invested. Like to talk to you about that. Your money should be working.”
    “Sixty-five hundred dollars can’t do much work, sir. It can only stand by for emergencies.”
    “I’m not a believer in idle money, Ethan.”
    “Well, this also serves—just standing and waiting.”
    The banker’s voice became frosty. “I don’t understand.” His inflection said he did understand and found it stupid, and his tone twisted a bitterness in Ethan, and the bitterness spawned a lie.
    The broom traced a delicate curve against the pavement. “It’s this way, sir. That money is Mary’s temporary security if anything should happen to me.”“Then you should use part of it to insure your life.”
    “But it’s only temporary, sir. That money was Mary’s brother’s estate. Her mother is still living. She may live many years.”
    “I understand. Old people can be a burden.”
    “They can also sit on their money.” Ethan glanced at Mr. Baker’s face as he said his lie, and he saw a trace of color rise out of the banker’s collar. “You see, sir, if I invested Mary’s money I might lose it, the way I lost my own, the way my father lost the pot.”
    “Water under the bridge, Ethan—water under the bridge. I know you got burned. But times are changing, new opportunities opening up.”
    “I had my opportunity, Mr. Baker, more opportunity than good sense. Don’t forget I owned this store right after the war. Had to sell half a block of real estate to stock it—the last of our business property.”
    “I know, Ethan. I’m your banker. Know your business the way your doctor knows your pulse.”
    “Sure you know. Took me less than two years to damn near go bankrupt. Had to sell everything but my house to pay my debts.”
    “You can’t take all the blame for that. Fresh out of the Army— no business experience. And don’t forget you ran smack into a depression, only we called it recession. Some pretty seasoned businessmen went under.”
    “I went under all right. It’s the first time in history a Hawley was ever a clerk in a guinea grocery.”
    “Now that’s what I don’t understand, Ethan. Anybody can go broke. What I don’t see is why you stay broke, a man of your family and background and education. It doesn’t have to be permanent unless your blood has lost its guts. What knocked you out, Ethan? What kept you knocked out?”
    Ethan started an angry retort—Course you don’t understand; you’ve never had it—and then he swept a small circle of gum wrappers and cigarette butts into a pyramid and moved the pyramid toward the gutter. “Men don’t get knocked out, or I mean they can fight back against big things. What kills them is erosion; they get nudged into failure. They get slowly scared. I’m scared. Long Island Lighting Company might turn off the lights. My wife needs clothes. My children—shoes and fun. And suppose they can’t get an education? And the monthly bills and the doctor and teeth and a tonsillectomy, and beyond that suppose I get sick and can’t sweep this goddam sidewalk? Course you don’t understand. It’s slow. It rots out your guts. I can’t think beyond next month’s payment on the refrigerator. I hate my job and I’m scared I’ll lose it. How could you understand that?”
    “How about Mary’s mother?”
    “I told you. She sits on it. She’ll die sitting on it.”
    “I didn’t know. I thought Mary came from a poor family. But I know when you’re sick you need medicine or maybe an operationor maybe a shock. Our people were daring men. You know it. They didn’t let themselves get nibbled to death. And now times are changing. There are opportunities our ancestors never dreamed of. And they’re being picked up by foreigners. Foreigners are taking us over. Wake up, Ethan.”
    “And how about the refrigerator?”
    “Let it go if you have to.”
    “And how about Mary and the children?”
    “Forget them for a while. They’ll like you better if you climb out of the hole. You’re not helping them by worrying about them.”
    “And Mary’s money?”
    “Lose it if you have to but risk it. With care and good advice you don’t have to lose it. Risk isn’t loss. Our people have always been calculated-risk people and they didn’t lose. I’m going to shock you, Ethan. You’re letting down the memory of old Cap’n Hawley. You owe his memory something. Why, he and my daddy owned the Belle-Adair together, one of the last built and finest of all whaling bottoms. Get off your ass, Ethan. You owe the Belle-Adair something you haven’t paid in guts. The hell with the finance company.”
    Ethan coaxed a reluctant piece of cellophane over the gutter’s edge with his broom tip. He said softly, “The Belle-Adair burned to the waterline, sir.”
    “I know she did, but did that stop us? It did not.”
    “She was insured.”
    “Of course she was.”
    “Well, I wasn’t. I saved my house and nothing else.”
    “You’ll have to forget that. You’re brooding on something past. You’ve got to scrape up some courage, some daring. That’s why I said you should invest Mary’s money. I’m trying to help you, Ethan.”
    “Thank you, sir.”
    “We’ll get that apron off you. You owe that to old Cap’n Hawley. He wouldn’t believe it.”
    “I guess he wouldn’t.”
    “That’s the way to talk. We’ll get that apron off.”
    “If it wasn’t for Mary and the children—”
    “Forget them, I tell you—for their own good. There’s some interesting things going to happen here in New Baytown. You can be part of it.”
    “Thank you, sir.”
    “Just let me think about it.”
    “Mr. Morphy says he’s going to work when you close at noon. I’m making him some sandwiches. Want me to make you some?”
    “No thanks. I’m letting Joey do the work. He’s a good man. There’s some property I want to look up. In the County Clerk’s office, that is. Nice and private there from twelve till three. Might be something in that for you. We’ll talk soon. So long.” He took a long first step to miss a crack and crossed the alley entrance to the front door of the First National Bank, and Ethan smiled at his retreating back.
    He finished his sweeping quickly, for people were trickling and fresheting to work now. He set the stands of fresh fruit at the entrance of the store. Then, making sure no one was passing, he removed three stacked cans of dog food and, reaching behind, brought out the grim little bag of currency, replaced the dog food, and, ringing “no sale” on the cash register, distributed the twenties, tens, fives, and one-dollar bills in their places under the small retaining wheels. And in the oaken cups at the front of the cash drawer he segregated the halves, quarters, dimes, nickels, and pennies, and slammed the drawer shut. Only a few customers showed up, children sent for a loaf of bread or a carton of milk or a pound of forgotten coffee, little girls with sleep-messy hair.
    Margie Young-Hunt came in, pert-breasted in a salmon sweater. Her tweed skirt clung lovingly in against her thighs and tucked up under her proud fanny, but it was in her eyes, her brown myopic eyes, that Ethan saw what his wife could never see because it wasn’t there when wives were about. This was a predator, a huntress, Artemis for pants. Old Cap’n Hawley called it a “roving eye.” It was in her voice too, a velvet growl that changed to a thin, mellow confidence for wives.
    “Morning, Eth,” Margie said. “What a day for a picnic!”
    “Morning. Want to take a bet you ran out of coffee?”
    “If you guess I ran out of Alka-Seltzer, I’m going to avoid you.”
    “Big night?”
    “In a small way. Traveling-salesman story. A divorced woman’s safe. Brief case of free samples. Guess you’d call him a drummer. Maybe you know him. Name of Bigger or Bogger, travels for B. B. D. and D. Reason I mention it is he said he was coming in to see you.”
    “We buy from Waylands mostly.”
    “Well, maybe Mr. Bugger’s just drumming up business, if he feels better than I do this morning. Say, could you give me a glass of water? I’ll take a couple of fizzers now.”
    Ethan went to the storeroom and brought back a Dixie cup of water from the tap. She dropped three of the flat tablets in and let them fizz. Then, “Mud in your eye,” she said and tossed it back. “Get to work, you devils,” she said.
    “I hear you’re going to read Mary’s fortune today.”
    “Oh, Lord! I nearly forgot. I should go in the business. I could made my own fortune.”
    “Mary loves it. Are you good at it?”
    “Nothing to be good at. You let people—women, that is— talk about themselves and then tell it back to them and they think you’ve got second sight.”
    “And tall dark strangers?”
    “There’s that, sure. If I could read men, I wouldn’t have pulled the bellywhoppers I have. Brother! did I misread a couple of characters.”
    “Didn’t your first husband die?”
    “No, my second, peace be to his ashes, the son of a— No, let it ride. Peace be to his ashes.”
    Ethan greeted the entering elderly Mrs. Ezyzinski solicitously and lingered over the transference of a quarter of a pound of butter, even passed a complimentary word or two about the weather, but Margie Young-Hunt, relaxed and smiling, inspected the gold-sealed cans of pâté de foie gras and the minuscule jewel-cases of caviar in back of the counter by the cash register.
    “Now,” said Margie when the old lady tottered out, muttering to herself in Polish.
    “Now—what?”
    “I was just thinking—if I knew as much about men as I do about women, I’d put out my shingle. Why don’t you teach me about men, Ethan?”
    “You know enough. Maybe too much.”
    “Oh, come on! Don’t you have a silly bone in your body?”
    “Want to start now?”
    “Maybe some evening.”
    “Good,” he said. “A group. Mary and you and the two kids. Subject: men—their weakness and stupidity and how to use them.”
    Margie ignored his tone. “Don’t you ever work late— accounts first of the month, that stuff?”
    “Sure. I take the work home.”
    She raised her arms over her head and her fingers moused in her hair.
    “Why?” she asked.
    “Cat’s why to make kittens’ britches.”
    “See what you could teach me if you would?”
    Ethan said, “ ‘And after that they had mocked Him, they took the robe off from Him and put His own raiment on Him and led Him away to crucify Him. And as they came out they found a man of Cyrene, Simon by name. Him they compelled to bear His cross. And when they were come unto a place called Golgotha—that is to say, a place of a skull—’ ”
    “Oh, for God’s sake!”
    “Yes—yes—that is correct. . . .”
    “Do you know what a son of a bitch you are?”“Yes, O Daughter of Jerusalem.”
    Suddenly she smiled. “Know what I’m going to do? I’m going to read one hell of a fortune this morning. You’re going to be a big shot, did you know? Everything you touch will turn to gold—a leader of men.” She walked quickly to the door and then turned back, grinning. “I dare you to live up to it and I dare you not to. So long, Savior!” How strange the sound of heeltaps on pavement, striking in anger.
    At ten o’clock everything changed. The big glass doors of the bank folded open and a river of people dipped in for money and brought the money to Marullo’s and took away the fancy foods Easter calls for. Ethan was busy as a water skater until the sixth hour struck.
    The angry firebell from its cupola on the town hall clanged the sixth hour. The customers drifted away with their bags of baked meats. Ethan brought in the fruit stands and closed the front doors, and then for no reason except that a darkness fell on the world and on him, he pulled down the thick green shades and the darkness fell on the store. Only the neon in the cold counter glared a ghostly blue.
    Behind the counter he cut four fat slices of rye bread and buttered them liberally. He slid open the cold doors and picked out two slices of processed Swiss cheese and three slices of ham. “Lettuce and cheese,” he said, “lettuce and cheese. When a man marries he lives in the trees.” He mortared the top slices of bread with mayonnaise from a jar, pressed the lids down on the sandwiches, and trimmed the bits of lettuce and ham fat from the edges. Now a carton of milk and a square of waxed paper for wrapping. He was folding the ends of the paper neatly when a key rattled in the front door and Marullo came in, wide as a bear and sack-chested so that his arms seemed short and stood out from his body. His hat was on the back of his head so that his stiff iron-gray bangs showed like a cap. Marullo’s eyes were wet and sly and sleepy, but the gold caps on his front teeth shone in the light from the cold counter. Two top buttons of his pants were open, showing his heavy gray underwear. He hooked little fat thumbs in the roll of his pants under his stomach and blinked in the half-darkness.
    “Morning, Mr. Marullo. I guess it’s afternoon.”
    “Hi, kid. You shut up good and quick.”
    “Whole town’s shut. I thought you’d be at mass.”
    “No mass today. Only day in the year with no mass.”
    “That so? I didn’t know that. Anything I can do for you?”
    The short fat arms stretched and rocked back and forth on the elbows. “My arms hurt, kid. Arthritis. . . . Gets worse.”
    “Nothing you can do?”
    “I do everything—hot pads, shark oil, pills—still hurts. All nice and shut up. Maybe we can have a talk, eh, kid?” His teeth flashed.
    “Anything wrong?”
    “Wrong? What’s wrong?”
    “Well, if you’ll wait a minute, I’ll just take these sandwiches to the bank. Mr. Morphy asked for them.”
    “You’re a smart kid. You give service. That’s good.”
    Ethan went through the storeroom, crossed the alley, and knocked on the back door of the bank. He passed the milk and sandwiches in to Joey.
    “Thanks. You didn’t need to.”
    “It’s service. Marullo told me.”
    “Keep a couple of Cokes cold, will you? I got dry zeros in my mouth.”
    When Ethan returned, he found Marullo peering into a garbage can.
    “Where do you want to talk, Mr. Marullo?”
    “Start here, kid.” He picked cauliflower leaves from the can. “You cutting off too much.”
    “Just to make them neat.”
    “Cauliflower is by weight. You throwing money in the garbage. I know a smart Greek fella owns maybe twenty restaurants. He says the big secret is watch the garbage cans. What you throw out, you don’t sell. He’s a smart fella.”
    “Yes, Mr. Marullo.” Ethan moved restlessly toward the front of the store with Marullo behind him bending his elbows back and forth.
    “You sprinkling good the vegetables like I said?”
    “Sure.”
    The boss lifted a head of lettuce. “Feels dry.”
    “Well, hell, Marullo, I don’t want to waterlog them—they’re one-third water now.”
    “Makes them look crisp, nice and fresh. You think I don’t know? I start with one pushcart—just one. I know. You got to learn the tricks, kid, or you go broke. Meat, now—you paying too much.”
    “Well, we advertise Grade A beef.”
    “A, B, C—who knows? It’s on the card, ain’t it? Now, we going to have a nice talk. We got dead wood on our bills. Anybody don’t pay by the fifteenth—off the books.”
    “We can’t do that. Some of these people have been trading here for twenty years.”
    “Listen, kid. Chain stores won’t let John D. Rockefeller charge a nickel.”
    “Yes, but these people are good for it, most of them.”
    “What’s ‘good for it’? It ties up money. Chain stores buy car-loads. We can’t do that. You got to learn, kid. Sure—nice people! Money is nice too. You got too much meat scraps in the box.”
    “That was fat and crust.”
    “Okay if you weigh before you trim. You got to look after number one. You don’t look after number one, whose’ll do it? You got to learn, kid.” The gold teeth did not glitter now, for the lips were tight little traps.
    Anger splashed up in Ethan before he knew it and he was surprised. “I’m not a chiseler, Marullo.”
    “Who’s a chiseler? That’s good business, and good business is the only kind of business that stays in business. You think Mr. Baker is giving away free samples, kid?”
    Ethan’s top blew off with a bang. “You listen to me,” he shouted. “Hawleys have been living here since the middle seventeen hundreds. You’re a foreigner. You wouldn’t know about that. We’ve been getting along with our neighbors and being decent all that time. If you think you can barge in from Sicily and change that, you’re wrong. If you want my job, you can have it—right here, right now. And don’t call me kid or I’ll punch you in the nose—”
    All Marullo’s teeth gleamed now. “Okay, okay. Don’t get mad. I just try to do you a good turn.”
    “Don’t call me kid. My family’s been here two hundred years.” In his own ears it sounded childish, and his rage petered out.
    “I don’t talk very good English. You think Marullo is guinea name, wop name, dago name. My genitori, my name, is maybe two, three thousand years old. Marullus is from Rome, Valerius Maximus tells about it. What’s two hundred years?”
    “You don’t come from here.”
    “Two hundred years ago you don’t neither.”
    Now Ethan, his rage all leaked away, saw something that makes a man doubtful of the constancy of the realities outside himself. He saw the immigrant, guinea, fruit-peddler change under his eyes, saw the dome of forehead, the strong beak nose, deep-set fierce and fearless eyes, saw the head supported on pillared muscles, saw pride so deep and sure that it could play at humility. It was the shocking discovery that makes a man wonder: If I’ve missed this, what else have I failed to see?
    “You don’t have to talk dago talk,” he said softly.
    “Good business. I teach you business. Sixty-eight years I got. Wife she’s died. Arthritis! I hurt. I try to show you business. Maybe you don’t learn. Most people they don’t learn. Go broke.”
    “You don’t have to rub it in because I went broke.”
    “No. You got wrong. I’m try to learn you good business so you don’t go broke no more.”
    “Fat chance. I haven’t got a business.”
    “You’re still a kid.”
    Ethan said, “You look here, Marullo. I practically run this store for you. I keep the books, bank the money, order the supplies. Keep customers. They come back. Isn’t that good business?”
    “Sure—you learned something. You’re not no kid no more. You get mad when I call you kid. What I’m going to call you? I call everybody kid.”
    “Try using my name.”
    “Don’t sound friendly. Kid is friendly.”
    “It’s not dignified.”
    “Dignified is not friendly.”
    Ethan laughed. “If you’re a clerk in a guinea store, you’ve got to have dignity—for your wife, for your kids. You understand?”
    “Is a fake.”
    “Course it is. If I had any real dignity, I wouldn’t think about it. I nearly forgot something my old father told me not long before he died. He said the threshold of insult is in direct relation to intelligence and security. He said the words ‘son of a bitch’ are only an insult to a man who isn’t quite sure of his mother, but how would you go about insulting Albert Einstein? He was alive then. So you go right on calling me kid if you want to.”
    “You see, kid? More friendly.”
    “All right then. What were you going to tell me about business that I’m not doing?”
    “Business is money. Money is not friendly. Kid, maybe you too friendly—too nice. Money is not nice. Money got no friends but more money.”
    “That’s nonsense, Marullo. I know plenty of nice, friendly, honorable businessmen.”
    “When not doing business, kid, yes. You going to find out. When you find out is too late. You keep store nice, kid, but if it’s your store you maybe go friendly broke. I’m teaching true lesson like school. Goo-by, kid.” Marullo flexed his arms and went quickly out the front door and snapped it after him, and Ethan felt darkness on the world.
    A sharp metallic rapping came on the front door. Ethan pushed aside the curtain and called, “We’re closed till three.”
    “Let me in. I want to talk to you.”
    The stranger came in—a spare man, a perpetually young man who had never been young, a smart dresser, hair gleaming thinly against his scalp, eyes merry and restless.
    “Sorry to bother you. Got to blow town. Wanted to see you alone. Thought the old man’d never go.”
    “Marullo?”
    “Yeah. I was across the street.”
    Ethan glanced at the immaculate hands. On the third finger of the left hand he saw a big cat’s eye set in a gold ring.
    The stranger saw the glance. “Not a stick-up,” he said. “I met a friend of yours last night.”
    “Yes?”
    “Mrs. Young-Hunt. Margie Young-Hunt.”
    “Oh?”
    Ethan could feel the restless sniffing of the stranger’s mind, searching for an opening, for a bond on which to build an association.
    “Nice kid. She gave you a big build-up. That’s why I thought— My name’s Biggers. I cover this territory for B. B. D. and D.”
    “We buy from Waylands.”
    “I know you do. That’s why I’m here. Thought you might like to spread it out a little. We’re new in this district. Building up fast. Have to make some concessions to get a foot in the door. It would pay you to take advantage of that.”
    “You’d have to see Mr. Marullo about that. He’s always had a deal with Waylands.”
    The voice didn’t lower but its tone became confidential. “You do the ordering?”
    “Well, yes. You see Marullo has arthritis, and besides he has other interests.”
    “We could shave prices a little.”
    “I guess Marullo’s got them shaved as close as they’ll shave. You’d better see him.”
    “That’s what I didn’t want to do. I want the man that does the ordering, and that’s you.”
    “I’m just a clerk.”
    “You do the ordering, Mr. Hawley. I can cut you in for five per cent.”
    “Marullo might go for a discount like that if the quality was the same.”
    “You don’t get it. I don’t want Marullo. This five per cent would be in cash—no checks, no records, no trouble with the tax boys, just nice clean green cabbage from my hand to your hand and from your hand to your pocket.”
    “Why can’t Marullo get the discount?”
    “Price agreements.”
    “All right. Suppose I took the five per cent and turned it over to Marullo?”
    “I guess you don’t know them like I do. You turn it over to him, he’ll wonder how much more you aren’t turning over. That’s perfectly natural.”
    Ethan lowered his voice. “You want me to double-cross the man I work for?”
    “Who’s double-crossed? He don’t lose anything and you make a buck. Everybody’s got a right to make a buck. Margie said you were a smart cooky.”
    “It’s a dark day,” Ethan said.
    “No, it’s not. You got the shades pulled down.” The sniffing mind smelled danger—a mouse confused between the odor of trap wire and the aroma of cheese. “Tell you what,” Biggers said, “you think about it. See if you can throw some business our way. I’ll drop in to see you when I’m in the district. I make it every two weeks. Here’s my card.”
    Ethan’s hand remained at his side. Biggers laid the card on top of the cold counter. “And here’s a little memento we got out for new friends.” From his side pocket he brought a billfold, a rich and beautiful affair of pin seal. He placed it beside the card on the white porcelain. “Nice little item. Place for your driver’s license, lodge cards.”
    Ethan did not reply.
    “I’ll drop by in a couple of weeks,” Biggers said. “You think about it. I’ll sure be here. Got a date with Margie. There’s quite a kid.” With no reply, he said, “I’ll let myself out. See you soon.” Then suddenly he came close to Ethan. “Don’t be a fool. Everybody does it,” he said. “Everybody!” And he went rapidly out the door and closed it quietly after him.
    In the darkened silence Ethan could hear the low hum of the transformer for the neon light in the cold counter. He turned slowly to the piled and tiered audience on the shelves.
    “I thought you were my friends! You didn’t raise a hand for me. Fair-weather oysters, fair-weather pickles, fair-weather cake-mix. No more unimus for you. Wonder what Saint Francis would say if a dog bit him, or a bird crapped on him. Would he say, ‘Thank you, Mr. Dog, grazie tanto, Signora Bird’?” He turned his head toward a rattling and a knocking and a pounding on the alley door, went quickly through the storeroom, muttering, “More customers than if we were open.”
    Joey Morphy staggered in, clutching his throat. “For God’s sake,” he groaned. “Succor—or at least Pepsi-Cola, for I dieth of dryth. Why is it so dark in here? Are mine eyes failething too?”
    “Shades pulled down. Trying to discourage thirsty bankers.”
    He led the way to the cold counter and dug out a frosted bottle, uncapped it, and reached for another. “Guess I’ll have one too.”
    Joey-boy leaned against the lighted glass and poured down half the bottle before he lowered it. “Hey!” he said. “Somebody’s lost Fort Knox.” He picked up the billfold.
    “That’s a little gift from the B. B. D. and D. drummer. He’s trying to hustle some of our business.”
    “Well, he ain’t hustling peanuts. This here’s quality, son. Got your initials on it, too, in gold.”
    “It has?”
    “You mean you don’t know?”
    “He just left a minute ago.”
    Joey flipped open the folded leather and rustled the clear plastic identification envelopes. “You better start joining something,” he said. He opened the back. “Now here’s what I call real thoughtful.” Between first and second fingers he extracted a new twenty-dollar bill. “I knew they were moving in but didn’t know with tanks. That’s a remembrance worth remembering.”
    “Was that in there?”
    “You think I planted it?”
    “Joey, I want to talk to you. The guy offered me five per cent of any business I threw their way.”
    “Well, bully-bully! Prosperity at last. And it wasn’t no idle promise. You should set up the Cokes. This is your day.”
    “You don’t mean I should take it—”
    “Why not, if they don’t add it on the cost? Who loses?”
    “He said I shouldn’t tell Marullo or he’d think I was getting more.”
    “He would. What’s the matter with you, Hawley? You nuts? I guess it’s that light. You look green. Do I look green? You weren’t thinking of turning it down?”
    “I had trouble enough not kicking him in the ass.”
    “Oh! It’s like that—you and the dinosaurs.”
    “He said everybody does it.”
    “Not everybody can get it. You’re just one of the lucky ones.”
    “It’s not honest.”
    “How not? Who gets hurt? Is it against the law?”
    “You mean you’d take it?”
    “Take it—I’d sit up and beg for it. In my business they got all the loopholes closed. Practically everything you can do in a bank is against the law—unless you’re president. I don’t get you. What are you hoggle-boggling about? If you were taking it away from Alfio lad, I’d say it wasn’t quite straight—but you’re not. You do them a favor, they do you a favor—a nice crisp green favor. Don’t be crazy. You’ve got a wife and kids to think of. Raising kids ain’t going to get any cheaper.”
    “I wish you’d go away now.”
    Joey Morphy put his unemptied bottle down hard on the counter. “Mr. Hawley—no, Mr. Ethan Allen Hawley,” he said coldly, “if you think I would do anything dishonest or suggest that you do—why you can go and screw yourself.”
    Joey stalked toward the storeroom.
    “I didn’t mean that. I didn’t mean it. Honest to God I didn’t, Joey. I just had a couple of shocks today and besides—this is a dreadful holiday—dreadful.”
    Morphy paused. “How do you mean? Oh! yes, I know. Yes, I do know. You believe I know?”
    “And every year, ever since I was a kid, only it gets worse because—maybe because I know more what it means, I hear those lonely ‘lama sabach thani’ words.”
    “I do know, Ethan, I do. It’s nearly over—nearly over now, Ethan. Just forget I stomped out, will you?”
    And the iron firebell clanged—one single stroke.
    “It’s over now,” said Joey-boy. “It’s all over—for a year.” He drifted quietly out through the storeroom and eased the alley door shut.
    Ethan raised the shades and opened the store again, but there wasn’t much trade—a few bottle-of-milk and loaf-of-bread kids, a small lamb chop and can of peas for Miss Borcher for her hot-plate supper. People were just not moving about in the street. During the half-hour before six o’clock, while Ethan was getting things ready to close up, not a soul came in. And he locked up and started away before he remembered the groceries for home—had to go back and assemble them in two big bags and lock up over again. He had wanted to walk down to the bayside and watch the gray waves among the pilings of the dock and smell the sea water and speak to a seagull standing beak into the wind on a mooring float. He remembered a lady-poem written long ago by someone whipped to frenzy by the gliding spiral of a gull’s flight. The poem began: “Oh! happy fowl— what thrills thee so?” And the lady poet had never found out, probably didn’t want to know.
    The heavy bags of groceries for the holidays discouraged the walk. Ethan moved wearily across the High Street and took his way slowly along Elm toward the old Hawley house.",
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
    Allen and Mary Ellen boiled down the stairs and into the kitchen. “He’s home,” they said.
    “Pop, you got Peeks in the store?”
    “You mean that cereal, sure, Allen.”
    “I wish you’d bring some. It’s the one with a mouse mask on the box that you cut out.”
    “Aren’t you a little old for a mouse mask?”
    Ellen said, “You send the box top and ten cents and you get a ventriloquism thing and instructions. We just heard it on the radio.”
    Mary said, “Tell your father what you want to do.”
    “Well, we’re going to enter the National I Love America Contest. First prize is go to Washington, meet the President— with parents—lots of other prizes.”
    “Fine,” said Ethan. “What is it? What do you have to do?”
    “Hearst papers,” Ellen cried. “All over the country. You just write an essay why you love America. All the winners get to go on television.”
    “It’s the grapes,” said Allen. “How about going to Washington, hotel, shows, meet the President, the works. How’s that for the grapes?”
    “How about your schoolwork?”
    “It’s this summer. They announce the winners Fourth of July.”
    “Well, that might be all right. Do you really love America or do you love prizes?”
    “Now, Father,” said Mary, “don’t go spoiling it for them.”
    “I just wanted to separate the cereal from the mouse mask. They get all mixed up.”
    “Pop, where would you say we could look it up?”
    “Look it up?”
    “Sure, like what some other guys said—”
    “Your great-grandfather had some pretty fine books. They’re in the attic.”
    “Like what?”
    “Oh, like Lincoln’s speeches and Daniel Webster and Henry Clay. You might take a look at Thoreau or Walt Whitman or Emerson—Mark Twain too. They’re all up there in the attic.”
    “Did you read them, Pop?”
    “He was my grandfather. He used to read them to me sometimes.”
    “Maybe you could help us with the essays.”
    “Then they wouldn’t be yours.”
    “Okay,” said Allen. “Will you remember to bring home some Peeks? They’re full of iron and stuff.”
    “I’ll try.”
    “Can we go to the movies?”
    Mary said, “I thought you were going to dye the Easter eggs. I’m boiling them now. You can take them out on the sun porch after dinner.”
    “Can we go up in the attic and look at the books?”
    “If you turn out the light after. Once it burned for a week. You left it on, Ethan.”
    When the children had gone, Mary said, “Aren’t you glad they’re in the contest?”
    “Sure, if they do it right.”
    “I can’t wait to tell you—Margie read me in cards today, three times, because she said she never saw anything like it. Three times! I saw the cards come up myself.”
    “Oh! Lord!”
    “You won’t be so suspicious when you hear. You always poke fun about tall dark strangers. You can’t guess what it was about. Well—you want to guess?”
    He said, “Mary, I want to warn you.”
    “Warn me? Why, you don’t even know. My fortune is you.”
    He spoke a harsh, bitter word under his breath.
    “What did you say?”
    “I said, ‘Slim pickings.’ ”
    “That’s what you think, but that’s not what the cards think. Three times, she threw them.”
    “Cards think?”
    “They know,” said Mary. “Here she read my cards and it was all about you. You’re going to be one of the most important men in this town—that’s what I said, most important. And it’s not going to be long either. It’s very soon. Every card she turned showed money and more money. You’re going to be a rich man.”
    “Darling,” he said, “please let me warn you, please!”
    “You’re going to make an investment.”
    “With what?”
    “Well, I was thinking about Brother’s money.”
    “No,” he cried. “I wouldn’t touch it. That’s yours. And it’s going to stay yours. Did you think that up or did—”
    “She never mentioned it. And the cards didn’t. You are going to invest in July, and from then on, it’s one thing after another— one right after another. But don’t it sound nice? That’s the way she said it—‘Your fortune is Ethan. He is going to be a very rich man, maybe the biggest man in this town.’ ”
    “Goddam her! She’s got no right.”
    “Ethan!”
    “Do you know what she’s doing? Do you know what you’re doing?”
    “I know I’m a good wife and she’s a good friend. And I don’t want to quarrel with the children hearing. Margie Young is the best friend I’ve got. I know you don’t like her. What I think is you’re jealous of my friends—that’s what I think. I had a happy afternoon and you want to spoil it. That’s not nice.” Mary’s face was mottled with angry disappointment, and vengeful toward this obstacle to her daydreaming.
    “You just sit there, Mr. Smart, and tear people down. You think Margie made it all up. She didn’t, because I cut the cards three times—but even supposing she did, why would she do it except to be kind and friendly and offer a little help. You tell me that, Mr. Smart! You find some nasty reason.”
    “I wish I knew,” he said. “It might be pure mischief. She hasn’t a man or a job. It might be mischief.”
    Mary lowered her voice and spoke with scorn. “You talk about mischief—you wouldn’t know mischief if it slapped you in the face. You don’t know what Margie goes through. Why, there are men in this town after her all the time. Big men, married men, whispering and urging—nasty. Sometimes she don’t know where to turn. That’s why she needs me, a woman friend. Oh, she told me things—men you just wouldn’t believe. Why, some of them even pretend they don’t like her in public, and then they sneak to her house or call her up and try to get her to meet them—sanctimonious men, always preaching morals and then doing like that. You talk about mischief.”
    “Did she say who they were?”
    “No, she didn’t and that’s another proof. Margie don’t want to hurt anybody even if they hurt her. But she said there was one I just wouldn’t believe. She said it would turn my hair gray if I knew.”
    Ethan took a deep breath and held it and let it out as a huge sigh.
    “Wonder who it could be,” Mary said. “The way she said it was like it was somebody we know well and just couldn’t believe.”
    “But she would tell under certain circumstances,” Ethan said softly.
    “Only if she was forced. She said that herself. Only if she had to if like her—honor, or her good name, you know . . . Who do you s’pose it could be?”
    “I think I know.”
    “You know? Who?”
    “Me.”
    Her mouth fell open. “Oh! You fool,” she said. “If I don’t watch you, you trap me every time. Well it’s better than gloomy.”
    “A pretty kettle. Man confesses to sins of the flesh with wife’s best friend. Is laughed to scorn.”
    “That’s not nice talk.”
    “Perhaps man should have denied it. Then at least his wife would have honored him with suspicion. My darling, I swear to you by all that’s holy, that never by word or deed have I ever made a pass at Margie Young-Hunt. Now will you believe I’m guilty?”
    “You!”
    “You don’t think I’m good enough, desirable enough, in other words you don’t think I could make the grade?”“I like jokes. You know it—but that’s not something to joke about. I hope the children haven’t got into the trunks up there. They never put anything back.”
    “I’ll try once more, fair wife. A certain woman, initials M. Y.-H., has surrounded me with traps, for reasons known only to herself. I am in grave danger of falling into one or more of them.”
    “Why don’t you think of your fortune? The cards said July and they said it three times—I saw it. You are going to get money and lots of money. Think about that.”
    “Do you love money so much, cottontail?”
    “Love money? What do you mean?”
    “Do you want money enough so that even necromancy, thaumaturgy, juju, or any other dark practices are justified?”
    “You said it! You started it. I’m not going to let you hide in your words. Do I love money? No, I don’t love money. But I don’t love worry either. I’d like to be able to hold up my head in this town. I don’t like the children to be hang-dog because they can’t dress as good—as well—as some others. I’d love to hold up my head.”
    “And money would prop up your head?”
    “It would wipe the sneers off the faces of your holy la-dedas.”
    “No one sneers at Hawley.”
    “That’s what you think! You just don’t see it.”
    “Maybe because I don’t look for it.”
    “Are you throwing your holy Hawleys up at me?”
    “No, my darling. It’s not much of a weapon any more.”
    “Well, I’m glad you found it out. In this town or any other town a Hawley grocery clerk is still a grocery clerk.”
    “Do you blame me for my failure?”
    “No. Of course I don’t. But I do blame you for sitting wallowing in it. You could climb out of it if you didn’t have your old-fashioned fancy-pants ideas. Everybody’s laughing at you. A grand gentleman without money is a bum.” The word exploded in her head, and she was silent and ashamed.
    “I’m sorry,” Ethan said. “You have taught me something— maybe three things, rabbit footling mine. Three things will never be believed—the true, the probable, and the logical. I know now where to get the money to start my fortune.”
    “Where?”
    “I’ll rob a bank.”
    The little bell of the timer on the stove took up a slow-spaced pinging.
    Mary said, “Go call the children. The casserole’s ready. Tell them to turn out the light.” She listened to his tread.
    ",
    published: true
)

c5 = Chapter.create!(
    title: "poiuyt",
    user_id: u4.id,
    story_id: s5.id,
    chapter_number: 1,
    body: "asdfjkl;",
    published: true
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

c15 = Chapter.create!(
    title: "Chapter Three",
    user_id: u2.id,
    story_id: s3.id,
    chapter_number: 3,
    body: "My wife, my Mary, goes to her sleep the way you would close the door of a closet. So many times I have watched her with envy. Her lovely body squirms a moment as though she fitted herself into a cocoon. She sighs once and at the end of it her eyes close and her lips, untroubled, fall into that wise and remote smile of the ancient Greek gods. She smiles all night in her sleep, her breath purrs in her throat, not a snore, a kitten’s purr. For a moment her temperature leaps up so that I can feel the glow of it beside me in the bed, then drops and she has gone away. I don’t know where. She says she does not dream. She must, of course. That simply means her dreams do not trouble her, or trouble her so much that she forgets them before awakening. She loves to sleep and sleep welcomes her. I wish it were so with me. I fight off sleep, at the same time craving it.
        I have thought the difference might be that my Mary knows she will live forever, that she will step from the living into another life as easily as she slips from sleep to wakefulness. She knows this with her whole body, so completely that she does not think of it any more than she thinks to breathe. Thus she has time to sleep, time to rest, time to cease to exist for a little.
        On the other hand, I know in my bones and my tissue that I will one day, soon or late, stop living and so I fight against sleep, and beseech it, even try to trick it into coming. My moment of sleep is a great wrench, an agony. I know this because I have awakened at this second still feeling the crushing blow. And once in sleep, I have a very busy time. My dreams are the problems of the day stepped up to absurdity, a little like men dancing, wearing the horns and masks of animals.
        I sleep much less in time than Mary does. She says she needs a great deal of sleep and I agree that I need less but I am far from believing that. There is only so much energy stored in a body, augmented, of course, by foods. One can use it up quickly, the way some children gobble candy, or unwrap it slowly. There’s always a little girl who saves part of her candy and so has it when the gobblers have long since finished. I think my Mary will live much longer than I. She will have saved some of her life for later. Come to think of it, most women live longer than men.
        Good Friday has always troubled me. Even as a child I was deep taken with sorrow, not at the agony of the crucifixion, but feeling the blighting loneliness of the Crucified. And I have never lost the sorrow, planted by Matthew, and read to me in the clipped, tight speech of my New England Great-Aunt Deborah.
        Perhaps it was worse this year. We do take the story to ourselves and identify with it. Today Marullo instructed me, so that for the first time I understood it, in the nature of business. Right afterward I was offered my first bribe. That’s an odd thing to say at my age, but I don’t remember any other. I must think about Margie Young-Hunt. Is she an evil thing? What is her purpose? I know she has promised me something and threatened me if I don’t accept it. Can a man think out his life, or must he just tag along?
        So many nights I have lain awake, hearing my Mary’s little purring beside me. If you stare into darkness, red spots start swimming on your eyes, and the time is long. Mary so loves her sleep that I have tried to protect her in it, even when the electric itch burned on my skin. She wakens if I leave the bed. It worries her. Because her only experience with sleeplessness has been in illness, she thinks I am not well.
        This night I had to get up and out. Her breath purred gently and I could see the archaic smile on her mouth. Maybe she dreamed of good fortune, of the money I was about to make. Mary wants to be proud.
        It is odd how a man believes he can think better in a special place. I have such a place, have always had it, but I know it isn’t thinking I do there, but feeling and experiencing and remembering.It’s a safety place—everyone must have one, although I never heard a man tell of it. Secret, quiet movement often awakens a sleeper when a deliberate normal action does not. Also I am convinced that sleeping minds wander into the thoughts of other people. I caused myself to need the bathroom, and when it was so, got up and went. And afterward I went quietly downstairs, carrying my clothes, and dressed in the kitchen.
        Mary says I share other people’s troubles that don’t exist. Maybe that is so, but I did see a little possible scene play out in the dim-lighted kitchen—Mary awakening and searching the house for me, and her face troubled. I wrote a note on the grocery pad, saying, “Darling—I’m restless. Have gone for a walk. Be back soon.” I think I left it squarely in the center of the kitchen table so that if the light was turned on at the wall switch it would be the first thing seen.
        Then I eased the back door open and tasted the air. It was chilly, smelled of a crusting of white frost. I muffled up in a heavy coat and pulled a knitted sailor’s cap down over my ears. The electric kitchen clock growled. It said quarter of three. I had been lying watching the red spots in the dark since eleven.
        Our town of New Baytown is a handsome town, an old town, one of the first clear and defined whole towns in America. Its first settlers and my ancestors, I believe, were sons of those restless, treacherous, quarrelsome, avaricious seafaring men who were a headache to Europe under Elizabeth, took the West Indies for their own under Cromwell, and came finally to roost on the northern coast, holding charters from the returned Charles Stuart. They successfully combined piracy and puritanism, which aren’t so unalike when you come right down to it. Both had a strong dislike for opposition and both had a roving eye for other people’s property. Where they merged, they produced a hard-bitten, surviving bunch of monkeys. I know about them because my father made me know. He was a kind of high amateur ancestor man and I’ve always noticed that ancestor people usually lack the qualities of the ones they celebrate. My father was a gentle, well-informed, ill-advised, sometimes brilliant fool. Singlehanded he lost the land, money, prestige, and future; in fact he lost nearly everything Allens and Hawleys had accumulated over several hundred years, lost everything but the names—which was all my father was interested in anyway. Father used to give me what he called “heritage lessons.” That’s why I know so much about the old boys. Maybe that’s also why I’m a clerk in a Sicilian grocery on a block Hawleys used to own. I wish I didn’t resent it so much. It wasn’t depression or hard times that wiped us out.
        All that came from starting to say New Baytown is a pretty town. I turned right on Elm Street instead of left and walked fast up to Porlock, which is a cockeyed parallel with High. Wee Willie, our fat constable, would be dozing in his police car on the High, and I didn’t want to pass the time of night with him. “What you doing up so late, Eth? Got yourself a little piece of something?” Wee Willie gets lonesome and loves to talk, and then later he talks about what he talked about. Quite a few small but nasty scandals have grown out of Willie’s loneliness. The day constable is Stonewall Jackson Smith. That’s not a nickname. He was christened Stonewall Jackson, and it does set him apart from all the other Smiths. I don’t know why town cops have to be opposites but they usually are. Stoney Smith is a man who wouldn’t give away what day it is unless he were on the stand under oath. Chief Smith runs the police work of the town and he’s dedicated, studies the latest methods, and has taken the F.B.I. training in Washington. I guess he’s as good a policeman as you are likely to find, tall and quiet and with eyes like little gleams of metal. If you were going in for crime, the chief would be a man to avoid.
        All this came from my going over to Porlock Street to avoid talking to Wee Willie. It’s on Porlock that the beautiful houses of New Baytown are. You see in the early eighteen hundreds we had over a hundred whaling bottoms. When the ships came back from a year or two out as far as the Antarctic or the China Sea, they would be loaded with oil and very rich. But they would have touched at foreign ports and picked up things as well as ideas. That’s why you see so many Chinese things in the houses on Porlock Street. Some of those old captain-owners had good taste too. With all their money, they brought in English architects to build their houses. That’s why you see so much Adam influence and Greek revival architecture on Porlock Street. It was that period in England. But with all the fanlights and fluted columns and Greek keys, they never neglected to put a widow’s walk on the roof. The idea was that the faithful home-bound wives could go up there to watch for returning ships, and maybe some of them did. My family, the Hawleys, and the Phillipses and the Elgars and the Bakers were older. They stayed put on Elm Street and their houses were what is called Early American, peak roofs and shiplap siding. That’s the way my house, the old Hawley house, is. And the giant elms are as old as the houses.
        Porlock Street has kept its gas street lamps, only there are electric globes in them now. In the summer tourists come to see the architecture and what they call “the old-world charm” of our town. Why does charm have to be old-world?
        I forget how the Vermont Allens got mixed up with the Hawleys. It happened pretty soon after the Revolution. I could find out, of course. Up in the attic somewhere there will be a record. By the time father died, my Mary was pretty tired of Hawley family history, so when she suggested that we store all the things in the attic, I understood how she felt. You can get pretty tired of other people’s family history. Mary isn’t even New Baytown born. She came from a family of Irish extraction but not Catholic. She always makes a point of that. Ulster family, she calls them. She came from Boston.
        No she didn’t, either. I got her in Boston. I can see both of us, maybe more clearly now than then, a nervous, frightened Second Lieutenant Hawley with a weekend pass, and the soft, petal-cheeked, sweet-smelling darling of a girl, and triply all of those because of war and textbooks. How serious we were, how deadly serious. I was going to be killed and she was prepared to devote her life to my heroic memory. It was one of a million identical dreams of a million olive uniforms and cotton prints. And it might well have ended with the traditional Dear John letter except that she devoted her life to her warrior. Her letters, sweet with steadfastness, followed me everywhere, round, clear handwriting in dark blue ink on light blue paper, so that my whole company recognized her letters and every man was curiously glad for me. Even if I hadn’t wanted to marry Mary, her constancy would have forced me to for the perpetuation of the world dream of fair and faithful women.
        She has not wavered, not in the transplanting from Boston Irish tenancy to the old Hawley house on Elm Street. And she never wavered in the slow despondency of my failing business, in the birth of our children, or in the paralysis of my long clerkship. She is a waiter—I can see that now. And I guess she had at lengthy last grown weary of waiting. Never before had the iron of her wishes showed through, for my Mary is no mocker and contempt is not her tool. She has been too busy making the best of too many situations. It only seemed remarkable that the poison came to a head because it had not before. How quickly the pictures formed against the sound of frost-crunching footsteps on the night street.
        There’s no reason to feel furtive walking in the early morning in New Baytown. Wee Willie makes little jokes about it but most people seeing me walking toward the bay at three in the morning would suppose I was going fishing and not give it another thought. Our people have all sorts of fishing theories, some of them secret like family recipes, and such things are respected and respectable.
        The street lights made the hard white frost on the lawns and sidewalks glint like millions of tiny diamonds. Such a frost takes a footprint and there were none ahead. I have always from the time I was a child felt a curious excitement walking in new unmarked snow or frost. It is like being first in a new world, a deep, satisfying sense of discovery of something clean and new, unused, undirtied. The usual nightfolk, the cats, don’t like to walk on frost. I remember once, on a dare, I stepped out barefoot on a frosty path and it felt like a burn to my feet. But now in galoshes and thick socks I put the first scars on the glittering newness.
        Where Porlock crosses Torquay, that’s where the bicycle factory is, just off Hicks Street, the clean frost was scarred with long foot-dragged tracks. Danny Taylor, a restless, unsteady ghost, wanting to be somewhere else and dragging there and wanting to be somewhere else. Danny, the town drunk. Every town has one, I guess. Danny Taylor—so many town heads shook slowly from side to side—good family, old family, last of the line, good education. Didn’t he have some trouble at the Academy? Why doesn’t he straighten up? He’s killing himself with booze and that’s wrong because Danny’s a gentleman. It’s a shame, begging money for booze. It’s a comfort that his parents aren’t alive to see it. It would kill them—but they’re dead already. But that’s New Baytown talking.
        In me Danny is a raw sorrow and out of that a guilt. I should be able to help him. I’ve tried, but he won’t let me. Danny is as near to a brother as I ever had, same age and growing up, same weight and strength. Maybe my guilt comes because I am my brother’s keeper and I have not saved him. With a feeling that deep down, excuses—even valid ones—give no relief. Taylors— as old a family as Hawleys or Bakers or any of the others. In childhood I can remember no picnic, no circus, no competition, no Christmas without Danny beside me as close as my own right arm. Maybe if we had gone to college together this wouldn’t have happened. I went to Harvard—luxuriated in languages, bathed in the humanities, lodged in the old, the beautiful, the obscure, indulged myself with knowledge utterly useless in running a grocery store, as it developed. And always I wished Danny could be with me on that bright and excited pilgrimage. But Danny was bred for the sea. His appointment to the Naval Academy was planned and verified and certain even when we were kids. His father sewed up the appointment every time we got a new Congressman.
        Three years with honors and then expelled. It killed his parents, they say, and it killed most of Danny. All that remained was this shuffling sorrow—this wandering night sorrow cadging dimes for a pint of skull-buster. I think the English would say, “He’s let the side down,” and that always wounds the let-downer more than the side. Danny’s a night wanderer now, an early-morning man, a lonely, dragging thing. When he asks for a quarter for skull-buster his eyes beg you to forgive him because he can’t forgive himself. He sleeps in a shack in back of the boat works where Wilburs used to be shipbuilders. I stooped over his track to see whether he was headed home or away. By the scuff of the frost he was going out and I might meet him any place. Wee Willie wouldn’t lock him up. What would be the good?
        There was no question where I was going. I had seen and felt and smelled it before I got out of bed. The Old Harbor is pretty far gone now. After the new breakwater went in and the municipal pier, sand and silt crept in and shallowed that once great anchorage sheltered by the jagged teeth of Whitsun Reef. And where once were shipways and ropewalks and warehouses and whole families of coopers to make the whale-oil casks, and docks too over which the bowsprits of whalers could project to their chain stays and figure- or fiddleheads. Three-masters they were usually, square-rigged; the after mast carried square sails as well as boom-and-gaff spanker—deep-hulled ships built to suffer the years at sea in any weather. The flying jib boom was a separate spar and the double dolphin-striker served as spritsail gaffs as well.
        I have a steel engraving of the Old Harbor chockablock with ships, and some faded photographs on tin, but I don’t really need them. I know the harbor and I know the ships. Grandfather rebuilt it for me with his stick made from a narwhal’s horn and he drilled me in the nomenclature, rapping out the terms with his stick against a tide-bared stump of a pile of what was once the Hawley dock, a fierce old man with a white whisker fringe. I loved him so much I ached from it.
        “All right,” he’d say, in a voice that needed no megaphone from the bridge, “sing out the full rig, and sing it loud. I hate whispering.”
        And I would sing out, and he’d whack the pile with his narwhal stick at every beat. “Flying jib,” I’d sing (whack), “outer jib” (whack), “inner jib, jib” (whack! whack!).
        “Sing out! You’re whispering.”
        “Fore skys’l, fore royal, fore topgal’n’t s’l, fore upper tops’l, fore lower tops’l, fores’l”—and every one a whack.
        “Main! Sing out.”
        “Main skys’l”—whack.
        But sometimes, as he got older, he would tire. “Belay the main,” he would shout. “Get to the mizzen. Sing out now.”
        “Aye, sir. Mizzen skys’l, mizzen royal, mizzen t’gal’n’t, mizzen upper tops’l, mizzen lower tops’l, crossjack—”
        “And?”
        “Spanker.”
        “How rigged?”
        “Boom and gaff, sir.”
        Whack—whack—whack—narwhal stick against the water-logged pile.
        As his hearing got fuzzier, he accused more and more people of whispering. “If a thing’s true, or even if it ain’t true and you mean it, sing out,” he would cry.
        Old Cap’n’s ears may have gone wonky toward the end of his life, but not his memory. He could recite you the tonnage and career of every ship, it seemed like, that ever sailed out of the Bay, and what she brought back and how it was divided, and the odd thing was that the great whaling days were nearly over before he was master. Kerosene he called “skunk oil,” and kerosene lamps were “stinkpots.” By the time electric lights came, he didn’t care much or maybe was content just to remember. His death didn’t shock me. The old man had drilled me in his death as he had in ships. I knew what to do, inside myself and out.
        On the edge of the silted and sanded up Old Harbor, right where the Hawley dock had been, the stone foundation is still there. It comes right down to the low-tide level, and high water laps against its square masonry. Ten feet from the end there is a little passage about four feet wide and four feet high and five feet deep. Its top is vaulted. Maybe it was a drain one time, but the landward entrance is cemented in with sand and broken rock. That is my Place, the place everybody needs. Inside it you are out of sight except from seaward. There’s nothing at Old Harbor now but a few clammers’ shacks, rattlety things, mostly deserted in the winter, but clammers are a quiet lot anyway. They hardly speak from day’s end to end and they walk with their heads down and their shoulders bowed.
        That was the place I was headed for. I spent nighttide there before I went in the service, and the nighttide before I married my Mary, and part of the night Ellen was born that hurt her so bad. I was compelled to go and sit inside there and hear the little waves slap the stone and look out at the sawtooth Whitsun rocks. I saw it, lying in bed, watching the dance of the red spots, and I knew I had to sit there. It’s big changes take me there—big changes.
        South Devon runs along the shore, and there are lights aimed at the beach put there by good people to keep lovers from getting in trouble. They have to go somewhere else. A town ordinance says that Wee Willie has to patrol once an hour. There wasn’t a soul on the beach—not a soul, and that was odd because someone is going fishing, or fishing, or coming in nearly all the time. I lowered myself over the edge and found the outcrop stone and doubled into the little cave. And I had hardly settled myself before I heard Wee Willie’s car go by. That’s twice I had avoided passing the time of night with him.
        It sounds uncomfortable and silly, sitting cross-legged in a niche like a blinking Buddha, but some way the stone fits me, or I fit. Maybe I’ve been going there so long that my behind has conformed to the stones. As for its being silly, I don’t mind that. Sometimes it’s great fun to be silly, like children playing statues and dying of laughter. And sometimes being silly breaks the even pace and lets you get a new start. When I am troubled, I play a game of silly so that my dear will not catch trouble from me. She hasn’t found me out yet, or if she has, I’ll never know it. So many things I don’t know about my Mary, and among them, how much she knows about me. I don’t think she knows about the Place. How would she? I’ve never told anyone. It has no name in my mind except the Place—no ritual or formula or anything. It’s a spot in which to wonder about things. No man really knows about other human beings. The best he can do is to suppose that they are like himself. Now, sitting in the Place, out of the wind, seeing under the guardian lights the tide creep in, black from the dark sky, I wondered whether all men have a Place, or need a Place, or want one and have none. Sometimes I’ve seen a look in eyes, a frenzied animal look as of need for a quiet, secret place where soul-shivers can abate, where a man is one and can take stock of it. Of course I know of the theories of back to the womb and the death-wish, and these may be true of some men, but I don’t think they are true of me, except as easy ways of saying something that isn’t easy. I call whatever happens in the Place “taking stock.” Some others might call it prayer, and maybe it would be the same thing. I don’t believe it’s thought. If I wanted to make a picture of it for myself, it would be a wet sheet turning and flapping in a lovely wind and drying and sweetening the white. What happens is right for me, whether or not it is good.
        There were plenty of matters to consider and they were jumping and waving their hands for attention like kids in school. Then I heard the slow puttering of a boat engine, a onelunger, a fishing craft. Her masthead light moved south beyond the Whitsun rocks. I had to put everything aside until she turned her red and green lights safe in the channel, a local boat to have found the entrance so easily. She dropped anchor in the shallows and two men came ashore in her skiff. Little wavelets brushed the beach and the disturbed gulls took time to settle back on the mooring floats.
        Item: There was Mary, my dear, to think of, asleep with the smile of mystery on her lips. I hoped she wouldn’t awaken and look for me. But if she did, would she ever tell me? I doubt it. I think that Mary, for all that she seems to tell everything, tells very little. There was the fortune to consider. Did Mary want a fortune or did she want it for me? The fact that it was a fake fortune, rigged by Margie Young-Hunt for reasons I didn’t know, made no difference at all. A fake fortune was just as good as any and it is possible that all fortunes are a little fake. Any man of reasonable intelligence can make money if that’s what he wants. Mostly it’s women or clothes or admiration he really wants and they deflect him. The great artists of finance like Morgan and Rockefeller weren’t deflected. They wanted and got money, just simple money. What they did with it afterward is another matter. I’ve always felt they got scared of the ghost they raised and tried to buy it off.
        Item: By money, Mary meant new curtains and sure education for the kids and holding her head a little higher and, face it, being proud rather than a little ashamed of me. She had said it in anger and it was true.
        Item: Did I want money? Well, no. Something in me hated being a grocery clerk. In the Army I made captain, but I know what got me into O. T. C. It was family and connections. I wasn’t picked for my pretty eyes, but I did make a good officer, a good officer. But if I had really liked command, imposing my will on others and seeing them jump, I might have stayed in the Army and I’d have been a colonel by now. But I didn’t. I wanted to get it over. They say a good soldier fights a battle, never a war. That’s for civilians.
        Item: Marullo was telling me the truth about business, business being the process of getting money. And Joey Morphy was telling it straight, and Mr. Baker and the drummer. They all told it straight. Why did it revolt me and leave a taste like a spoiled egg? Am I so good, or so kind, or so just? I don’t think so. Am I so proud? Well, there’s some of that. Am I lazy, too lazy to be involved? There’s an awful lot of inactive kindness which is nothing but laziness, not wanting any trouble, confusion, or effort.
        There is a smell and a feel of dawn long before the light. It was in the air now, a tempering of the wind; a new star or a planet cleared the horizon to eastward. I should know what star or planet but I don’t. The wind freshens or steadies in the false dawn. It really does. And I would have to be going back soon. This rising star was too late to have much of a go before daylight. What is the saying—“The stars incline, they do not command”? Well, I’ve heard that a good many serious financiers go to astrologers for instruction in stock purchase. Do the stars incline toward a bull market? Is A. T. and T. influenced by the stars? Nothing as sweet and remote in my fortune as a star. A beat-up tarot deck of fortune-telling cards in the hands of an idle, mischievous woman, and she had rigged the cards. Do the cards incline but not command? Well, the cards inclined me out to the Place in the middle of the night, and they inclined me to give more thought than I wanted to, to a subject I detested. That’s quite a bit of inclining right there. Could they incline me to a business cleverness I never had, to acquisitiveness foreign to me? Could I incline to want what I didn’t want? There are the eaters and the eaten. That’s a good rule to start with. Are the eaters more immoral than the eaten? In the end all are eaten— all—gobbled up by the earth, even the fiercest and the most crafty.
        The roosters up on Clam Hill had been crowing for a long time and I had heard and not heard. I wished I could stay to see the sun rise straight out from the Place.
        I said there was no ritual involved with the Place but that is not entirely true. Sometime on each visit I reconstruct Old Harbor for my mind’s pleasure—the docks, the warehouses, the forests of masts and underbrush of rigging and canvas. And my ancestors, my blood—the young ones on the deck, the fully grown aloft, the mature on the bridge. No nonsense of Madison Avenue then or trimming too many leaves from cauliflowers. Some dignity was then for a man, some stature. A man could breathe.
        That was my father talking, the fool. Old Cap’n remembered the fights over shares, the quibbling with stores, suspicion of every plank and keelson, the lawsuits, yes, and the killings— over women, glory, adventure? Not at all. Over money. It was a rare partnership, he said, that lasted more than one voyage, and blistering feuds ever afterward, continuing after the cause was forgotten.
        There was one bitterness old Cap’n Hawley did not forget, a crime he could not forgive. He must have told me about it many times, standing or sitting on the rim of Old Harbor. We spent a goodly time there, he and I. I remember him pointing with his narwhal stick.
        “Take that third rock on Whitsun Reef,” he said. “Got her? Now, line her up with the tip of Porty Point at high water. See it there? Now—half a cable-length out on that line is where she lies, at least her keel.”
        “The Belle-Adair?”
        “The Belle-Adair.”
        “Our ship.”
        “Half ours, a partnership. She burned at anchor—burned to the waterline. I never believed it was an accident.”
        “You think she was fired, sir?”
        “I do.”
        “But—but you can’t do that.”
        “I couldn’t.”
        “Who did?”
        “I don’t know.”
        “Why?”
        “Insurance.”
        “Then it’s no different now.”
        “No different.”
        “There must be some difference.”
        “Only in a single man alone—only in one man alone. There’s the only power—one man alone. Can’t depend on anything else.”
        He never spoke to Cap’n Baker again, my father told me, but he didn’t carry it to his son, Mr. Banker Baker. He wouldn’t do that any more than he would burn a ship.
        Good God, I’ve got to get home. And I got. I almost ran and I went up the High Street without thinking. It was still dark enough but a rim of lightness lay on the edge of the sea and made the waves gray iron. I rounded the war memorial and passed the post office. In a doorway Danny Taylor stood as I knew he must, hands in pockets, collar of his ragged coat turned up, and his old peaked shooter’s cap with the earflaps turned down. His face was blue-gray with cold and sickness.
        “Eth,” he said, “I’m sorry to bother you. Sorry. I’ve got to have some skull-buster. You know I wouldn’t ask if I didn’t have to.”
        “I know. I mean I don’t know, but I believe you.” I gave him a dollar bill. “Will that do it?”
        His lips were trembling the way a child’s lips do when it’s about to cry. “Thank you, Eth,” he said. “Yes—that will put me away all day and maybe all night.” He began to look better just thinking of it.
        “Danny—you’ve got to stop this. Think I’ve forgotten? You were my brother, Danny. You still are. I’ll do anything in the world to help you.”
        A little color came into his thin cheeks. He looked at the money in his hand and it was as though he had taken his first gulp of skull-buster. Then he looked at me with hard cold eyes.
        “In the first place it’s nobody’s goddam business. And in the second place you haven’t got a bean, Eth. You’re as blind as I am, only it’s a different kind of blindness.”
        “Listen to me, Danny.”
        “What for? Why, I’m better off than you are. I’ve got my ace in the hole. Remember our country place?”
        “Where the house burned down? Where we used to play in the cellar hole?”
        “You remember it all right. It’s mine.”
        “Danny, you could sell it and get a new start.”
        “I won’t sell it. The county takes a little bit of it for taxes every year. The big meadow is still mine.”
        “Why won’t you sell it?”
        “Because it’s me. It’s Daniel Taylor. Long as I have it no Christy sons of bitches can tell me what to do and no bastards can lock me up for my own good. Do you get it?”
        “Listen, Danny—”
        “I won’t listen. If you think this dollar gives you the right to preach to me—here! Take it back.”
        “Keep it.”
        “I will. You don’t know what you’re talking about. You’ve never been a—drunk. I don’t tell you how to wrap bacon do I? Now if you’ll go your own way, I’ll knock on a window and get some skull-buster. And don’t forget—I’m better off than you are. I’m not a clerk.” He turned around and put his head in the corner of the closed doorway like a child who abolishes the world by looking away from it. And he stayed there until I gave up and walked on.
        Wee Willie, parked in front of the hotel, stirred out of his nap and rolled down the window of his Chevrolet. “Morning, Ethan,” he said. “You up early or out late?”
        “Both.”
        “Must have found yourself a fancy piece.”
        “Sure did, Willie, an houri.”
        “Now, Eth, don’t tell me you’d take up with no streetwalker.”
        “I swear it.”
        “Can’t believe nothing no more. I bet you was fishing. How’s Missus?”
        “Asleep.”
        “That’s where I’ll be, come shift.”
        I went on without reminding him that’s where he’d been.
        I walked quietly up my back steps and switched on the kitchen light. My note was on the table a little left of center. I’d swear I left it right in the middle.
        I put the coffee on and sat waiting for it to perk, and it had just begun to bounce when Mary came down. My darling looks like a little girl when she awakens. You couldn’t think she is the mother of two big brats. And her skin has a lovely smell, like new-cut grass, the most cozy and comforting odor I know.
        “What are you doing up so early?”
        “Well may you ask. Please to know I have been up most of the night. Regard my galoshes there by the door. Feel them for wetness.”
        “Where did you go?”
        “Down by the sea there is a little cave, my rumpled duck. I crawled inside and I studied the night.”
        “Now wait.”
        “And I saw a star come out of the sea, and since it had no owner I took it for our star. I tamed it and turned it back to fatten.”
        “You’re being silly. I think you just got up and that woke me.”
        “If you don’t believe me, ask Wee Willie. I spoke to him. Ask Danny Taylor. I gave him a dollar.”
        “You shouldn’t. He’ll just get drunk.”
        “I know. That was his wish. Where can our star sleep, sweet fern?”
        “Doesn’t coffee smell good? I’m glad you’re silly again. It’s awful when you’re gloomy. I’m sorry about that fortune thing. I don’t want you to think I’m not happy.”
        “Don’t give it a worry, it’s in the cards.”
        “What?”
        “No joke. I’m going to make our fortune.”
        “I never know what you’re thinking.”
        “That’s the greatest difficulty with telling the truth. Can I beat the children a little to celebrate the day before Resurrection? I promise to break no bones.”
        “I haven’t washed my face,” she said. “I couldn’t imagine who was rattling around in the kitchen.”
        When she had gone up to the bathroom, I put my note to her in my pocket. And I still didn’t know. Does anyone ever know even the outer fringe of another? What are you like in there? Mary—do you hear? Who are you in there?",
        published: true
)

c16 = Chapter.create!(
    title: "Chapter Four",
    user_id: u2.id,
    story_id: s3.id,
    chapter_number: 4,
    body: "That Saturday morning seemed to have a pattern. I wonder whether all days have. It was a withdrawn day. The little gray whisper of my Aunt Deborah came to me, “Of course, Jesus is dead. This is the only day in the world’s days when He is dead. And all men and women are dead too. Jesus is in Hell. But tomorrow. Just wait until tomorrow. Then you’ll see something.”
    I don’t remember her very clearly, the way you don’t remember someone too close to look at. But she read the Scripture to me like a daily newspaper and I suppose that’s the way she thought of it, as something going on happening eternally but always exciting and new. Every Easter, Jesus really rose from the dead, an explosion, expected but nonetheless new. It wasn’t two thousand years ago to her; it was now. And she planted something of that in me.
    I can’t remember wanting to open the store before. I think I hated every sluggish sloven of a morning. But this day I wanted to go. I love my Mary with all my heart, in some ways much better than myself, but it is also true that I do not always listen to her with complete attention. When she tells the chronicle of clothes and health and conversations which please and enlighten her, I do not listen at all, so that sometimes she exclaims, “But you should have known. I told you. I remember very clearly telling you on Thursday morning.” And there’s no doubt at all about that. She did tell me. She tells me everything in certain areas.
    This morning I not only didn’t listen, I wanted to get away from it. Maybe I wanted to talk myself and I didn’t have anything to say—because, to give her fair due, she doesn’t listen to me either,and a good thing sometimes. She listens to tones and intonations and from them gathers her facts about health and how my mood is and am I tired or gay. And that’s as good a way as any. Now that I think of it, she doesn’t listen to me because I am not talking to her, but to some dark listener within myself. And she doesn’t really talk to me either. Of course when the children or some other hell-raising crises are concerned, all that changes.
    I’ve thought so often how telling changes with the nature of the listener. Much of my talk is addressed to people who are dead, like my little Plymouth Rock Aunt Deborah or old Cap’n. I find myself arguing with them. I remember once in weary, dusty combat I called out to old Cap’n, “Do I have to?” And he replied very clearly, “Course you do. And don’t whisper.” He didn’t argue—never did. Just said I must, and so I did. Nothing mysterious or mystic about that. It’s asking for advice or an excuse from the inner part of you that is formed and certain.
    For pure telling, which is another way of saying asking, my mute and articulate canned and bottled goods in the grocery serve very well. So does any passing animal or bird. They don’t argue and they don’t repeat.
    Mary said, “You’re not going already? Why you have half an hour. That’s what comes of getting up so early.”
    “Whole flock of crates to open,” I said. “Things to put on the shelves before I open. Great decisions. Should pickles and tomatoes go on the same shelf? Do canned apricots quarrel with peaches? You know how important color relations are on a dress.”
    “You’d make a joke about anything,” Mary said. “But I’m glad. It’s better than grumping. So many men grump.”
    And I was early. Red Baker wasn’t out yet. You can set your watch by that dog, or any dog. He’d start his stately tour in exactly half an hour. And Joey Morphy wouldn’t, didn’t show. The bank wouldn’t be open for business but that didn’t mean Joey wouldn’t be there working on the books. The town was very quiet but of course a lot of people had gone away for the Easter weekend. That and the Fourth of July and Labor Day are the biggest holidays. People go away even when they don’t want to. I believe even the sparrows on Elm Street were away.
    I did see Stonewall Jackson Smith on duty. He was just coming from a cup of coffee in the Foremaster Coffee Shop. He was so lean and brittle that his pistols and handcuffs seemed outsize. He wears his officer’s cap at an angle, jaunty, and picks his teeth with a sharpened goose quill.
    “Big business, Stoney. Long hard day making money.”
    “Huh?” he said. “Nobody’s in town.” What he meant was that he wished he weren’t.
    “Any murders, Stoney, or other grisly delights?”
    “It’s pretty quiet,” he said. “Some kids wrecked a car at the bridge. But, hell, it was their own car. Judge’ll make ’em pay for repairing the bridge. You heard about the bank job at Floodhampton?”
    “No.”
    “Not even on television?”
    “We don’t have one, yet. Did they get much?”
    “Thirteen thousand, they say. Yesterday just before closing. Three fellas. Four-state alarm. Willie’s out on the highway now, bitching his head off.”
    “He gets plenty of sleep.”
    “I know, but I don’t. I was out all night.”
    “Think they’ll catch them?”
    “Oh! I guess so. If it’s money they usually do. Insurance companies keep nagging. Never let up.”
    “It would be nice work if they didn’t catch you.”
    “Sure would,” he said.
    “Stoney, I wish you’d look in on Danny Taylor. He looks awful sick.”
    “Just a question of time,” Stoney said. “But I’ll go by. It’s a shame. Nice fella. Nice family.”
    “It kills me. I like him.”
    “Well you can’t do nothing with him. It’s going to rain, Eth. Willie hates to get wet.”
    For the first time in my memory, I went into the alley with pleasure and opened the back door with excitement. The cat was by the door, waiting. I can’t remember a morning when that lean and efficient cat hasn’t been waiting to try to get in the back door and I have never failed to throw a stick at him or run him off. To the best of my knowledge, he has never got in. I call the cat “he” because his ears are torn up from fighting. Are cats strange animals or do they so resemble us that we find them curious as we do monkeys? Perhaps six or eight hundred times that cat has tried to get in and he has never made it.
    “You’re due for a cruel surprise,” I told the cat. He was sitting in a circle of his tail, and the tip flicked up between his front feet. I went into the dark store, took a can of milk from the shelf, punched it open, and squirted it into a cup. Then I carried the cup to the storeroom and set it just inside and left the door open. He watched me gravely, looked at the milk, and then walked away and slid over the fence in back of the bank.
    I was watching him go when Joey Morphy came into the alley with the key to the bank’s back door ready in his hand. He looked seedy—grainy—as though he hadn’t been to bed.
    “Hi, Mr. Hawley.”
    “I thought you were closed today.”
    “Looks like I never close. Thirty-six-dollar mistake in the books. I worked till midnight last night.”
    “Short?”
    “No—over.”
    “That should be good.”
    “Well, it ain’t. I got to find it.”
    “Are banks that honest?”
    “Banks are. It’s only some men that aren’t. If I’m going to get any holiday, I’ve got to find it.”
    “Wish I knew something about business.”
    “I can tell you all I know in one sentence. Money gets money.”
    “That doesn’t do me much good.”
    “Me either. But I can sure give advice.”
    “Like what?”
    “Like never take the first offer, and like, if somebody wants to sell, he’s got a reason, and like, a thing is only as valuable as who wants it.”
    “That the quick course?”
    “That’s it, but it don’t mean nothing without the first.”
    “Money gets money?”
    “That cuts a lot of us out.”
    “Don’t some people borrow?”
    “Yeah, but you have to have credit and that’s a kind of money.”
    “Guess I better stick to groceries.”
    “Looks like. Hear about the Floodhampton bank?”
    “Stoney told me. Funny, we were just talking about it yesterday, remember?”
    “I’ve got a friend there. Three guys—one talked with an accent, one with a limp. Three guys. Sure they’ll get them. Maybe a week. Maybe two.”
    “Tough!”
    “Oh, I don’t know. They aren’t smart. There’s a law against not being smart.”
    “I’m sorry about yesterday.”
    “Forget it. I talk too much. That’s another rule—don’t talk. I’ll never learn that. Say, you look good.”
    “I shouldn’t. Didn’t get much sleep.”
    “Somebody sick?”
    “No. Just one of those nights.”
    “Don’t I know. . . .”
    I swept out the store and raised the shades and didn’t know I was doing it or hating it. Joey’s rules popped around and around in my head. And I discussed matters with my friends on the shelves, perhaps aloud, perhaps not. I don’t know.
    “Dear associates,” I said, “if it’s that simple, why don’t more people do it? Why does nearly everyone make the same mistakes over and over? Is there always something forgotten? Maybe the real basic weakness might be some form of kindness. Marullo said money has no heart. Wouldn’t it be true then that any kindness in a money man would be a weakness? How do you get nice ordinary Joes to slaughter people in a war? Well, it helps if the enemy looks different or talks different. But then how about civil war? Well the Yankees ate babies and the Rebs starved prisoners. That helps. I’ll get around to you, sliced beets and tinned button mushrooms, in a moment. I know you want me to talk about you. Everyone does. But I’m on the verge of it—point of reference, that’s it. If the laws of thinking are the laws of things, then morals are relative too, and manner and sin—that’s relative too in a relative universe. Has to be. No getting away from it. Point of reference.
    “You dry cereal with the Mickey Mouse mask on the box and a ventriloquism gadget for the label and ten cents. I’ll have to take you home, but right now you sit up and listen. What I told dear Mary as a joke is true. My ancestors, those highly revered ship-owners and captains, surely had commissions to raid commerce in the Revolution and again in 1812. Very patriotic and virtuous. But to the British they were pirates, and what they took they kept. That’s how the family fortune started that was lost by my father. That’s where the money that makes money came from. We can be proud of it.”
    I brought in a carton of tomato paste, slashed it open, and stacked the charming slender little cans on their depleted shelf. “Maybe you don’t know, because you’re kind of foreigners. Money not only has no heart but no honor nor any memory. Money is respectable automatically if you keep it a while. You must not think I am denouncing money. I admire it very much. Gentlemen, may I introduce some newcomers to our community. Let’s see, I’ll put them here beside you catsups. Make these bread-and-butter pickles welcome in their new home. New Yorkers, born and sliced and bottled. I was discussing money with my friends here. One of your finest families—oh, you’d know the name! Everybody in the world does, I guess. Well, they got their big start selling beef to the British when our country was at war with the British, and their money is as admired as any and so is the family. And another dynasty, probably the greatest bankers of them all. The founder bought three hundred rifles from the Army. The Army had rejected them as dangerously defective and so he got them very cheap, maybe fifty cents apiece. Pretty soon General Frémont was ready to start his heroic trek to the West, and he bought the rifles, sight unseen, for twenty dollars apiece. No one ever heard whether they blew up in the troopers’ hands. And that was the money that makes money. It doesn’t matter how you get it just as long as you get it and use it to make more. I’m not being cynical. Our lord and master, Marullo of the ancient Roman name, is quite right. Where money is concerned, the ordinary rules of conduct take a holiday. Why do I talk to groceries? Perhaps because you are discreet. You do not repeat my words, or gossip. Money is a crass and ungracious subject only when you have it. The poor find it fascinating. But don’t you agree that if one becomes actively interested in money, he should know something of its nature and character and tendencies? I’m afraid that very few men, and they great artists or misers, are interested in money for itself. And you can kick out those misers who are conditioned by fear.”
    By now there was a large pile of empty cartons on the floor. I carried them to the storeroom to be trimmed and kept. Lots of people carry supplies home in them and, as Marullo would say, “It saves bags, kid.”
    There’s that “kid” again. I don’t mind it any more. I want him to call me “kid,” even to think of me as “kid.” While I was stacking the cartons, there came a battering on the front door. I looked at my big old silver railroad watch, and do you know for the first time in my life I had not opened on the moment of nine. Here it was plainly quarter after nine. All that discussion with the groceries had thrown me. Through the glass-and-iron screen of the door I could see it was Margie Young-Hunt. I had never really looked at her, had never inspected her. Maybe that’s why she did the fortune—just to make sure I knew she existed. I shouldn’t change too quickly.
    I threw open the doors.
    “Didn’t mean to rout you out.”
    “But I’m late.”
    “Are you?”
    “Sure. It’s after nine.”
    She sauntered in. Her behind stuck out nice and round and bounced slowly, one up and one down with each step. She was well enough stacked in front so she didn’t have to emphasize them. They were there. Margie is what Joey-boy would call a “dish,” and my own son Allen too, maybe. Perhaps I was seeing her for the first time. Her features regular, nose a little long, lips outlined fuller than they were, the lower particularly. Her hair dyed a rich chestnut brown that doesn’t occur in nature, but pretty. Her chin was fragile and deep-cut but there was plenty of muscle in the cheeks and very wide cheekbones. Margie’s eyes had had care. They were that hazel to blue to steel color that changes with the light. It was a durable face that had taken it and could take it, even violence, even punching. Her eyes flicked about, to me, to the groceries, and back to me. I imagined she was a very close observer and a good rememberer too.
    “I hope you don’t have the same problem as yesterday.”
    She laughed. “No—no. I don’t get a drummer every day. This time I really ran out of coffee.”
    “Most people do.”
    “What do you mean?”
    “Well, the first ten people every morning ran out of coffee.”
    “Is that true?”
    “Sure. Say, I want to thank you for sending your drummer in.”
    “It was his idea.”
    “But you did it. What kind of coffee?”
    “Doesn’t matter. I make lousy coffee no matter what kind I get.”
    “Do you measure?”
    “Sure, and it’s still lousy. Coffee just isn’t—I nearly said ‘my cup of tea.’ ”
    “You did say it. Try this blend.” I picked a can from the shelf and as she reached to take it from me—just that little gesture— every part of her body moved, shifted, announced itself quietly. I’m here, the leg. Me, the thigh. Not better than me, the soft belly. Everything was new, newly seen. I caught my breath. Mary says a woman can put out signals or not, just as she wishes. And if that’s so, Margie had a communications system that ran from her pointed patent-leather toe to her curving soft chestnut hair.
    “You seem to have got over your mullygrubs.”
    “I had ’em bad yesterday. Don’t know where they come from.”
    “Don’t I know! Sometimes with me not for the usual reason.”
    “You did quite a job with that fortune.”
    “Sore about it?”
    “No. I’d just like to know how you did it.”
    “You don’t believe in that stuff.”
    “It’s not belief. You hit some things right on the nose. Things I’d been thinking and things I’ve been doing.”
    “Like what?”
    “Like it’s time for a change.”
    “You think I rigged the cards, don’t you?”
    “Doesn’t matter. If you did—what made you? Have you thought of that?”
    She looked me full in the eyes, suspicious, probing, questioning. “Yeah!” she said softly. “I mean no, I never thought of that. If I rigged them, what made me? That would be like un-rigging the rig.”
    Mr. Baker looked in the door. “Morning, Margie,” he said. “Ethan, have you given any thought to my suggestion?”
    “I sure have. And I’d like to talk to you.”
    “Any time at all, Ethan.”
    “Well, I can’t get out during the week. You know, Marullo’s hardly ever here. Going to be home tomorrow?”
    “After church, sure. That’s an idea. You bring Mary about four. While the ladies jaw about Easter hats, we’ll slip off and—”
    “I’ve got a hundred things I want to ask. Guess I better write them down.”
    “Anything I know, you’re welcome to. See you then. Morning, Margie.”
    When he went out, Margie said, “You’re beginning fast.”
    “Maybe just limbering up. Say—know what would be interesting? How about if you turned the cards blindfolded or something and see how close they come to yesterday.”
    “No!” she said. “That wouldn’t work. You kidding me, or do you really go for it?”
    “Way I look at it, it doesn’t matter about believing. I don’t believe in extrasensory perception, or lightning or the hydrogen bomb, or even violets or schools of fish—but I know they exist. I don’t believe in ghosts but I’ve seen them.”
    “Now you’re kidding.”
    “I’m not.”
    “You don’t seem like the same man.”
    “I’m not. Maybe nobody is, for long.”
    “What caused it, Eth?”
    “I don’t know. Maybe I’m sick of being a grocery clerk.”
    “It’s about time.”
    “Do you really like Mary?”
    “Sure I do. Why would you ask that?”
    “You just don’t seem to be the same kind of—well, you’re so different from her.”
    “I see what you mean. But I do like her. I love her.”
    “So do I.”
    “Lucky.”
    “I know I am.”
    “I meant her. Well, I’ll go make my lousy coffee. I’ll think about that card deal.”
    “Sooner the better, before it cools.”
    She tapped out, her neat buttocks jumping like live rubber. I had never seen her before. I wonder how many people I’ve looked at all my life and never seen. It’s scary to think about. Point of reference again. When two people meet, each one is changed by the other so you’ve got two new people. Maybe that means— hell, it’s complicated. I agreed with myself to think about such things at night when I couldn’t sleep. Forgetting to open on time scared me. That’s like dropping your handkerchief at the scene of the murder, or your glasses like those what-you-callems in Chicago. What does that mean? What crime? What murder?
    At noon I made four sandwiches, cheese and ham, with lettuce and mayonnaise. Ham and cheese, ham and cheese—when a man marries, he lives in the trees. I took two of the sandwiches and a bottle of Coke to the back door of the bank and handed them in to Joey-boy. “Find the mistake?”
    “Not yet. You know, I’m so close to it, I’m blind.”
    “Why not lay off till Monday?”
    “Can’t. Banks are a screwy lot.”
    “Sometimes if you don’t think about something, it comes to you.”
    “I know. Thanks for the sandwiches.” He looked inside to make sure there was lettuce and mayonnaise.
    Saturday afternoon before Easter in the grocery business is what my august and illiterate son would call “for the birds.” But two things did happen that proved to me at least that some deep-down underwater change was going on in me. I mean that yesterday, or any yesterday before that, I wouldn’t have done what I did. It’s like looking at wallpaper samples. I guess I had unrolled a new pattern.
    The first thing was Marullo coming in. His arthritis was hurting him pretty bad. He kept flexing his arms like a weight-lifter.
    “How it goes?”
    “Slow, Alfio.” I had never called him by his first name before.
    “Nobody in town—”
    “I like it better when you call me ‘kid.’ ”
    “I thought you don’t like it.”
    “I find I do, Alfio.”“Everybody gone away.” His shoulders must have been burning as though there were hot sand in the joints.
    “How long ago did you come from Sicily?”
    “Forty-seven years. Long time.”
    “Ever been back?”
    “No.”
    “Why don’t you go on a visit?”
    “What for? Everything changed.”
    “Don’t you get curious about it?”
    “Not much.”
    “Any relatives alive?”
    “Sure, my brother and his kids and they got kids.”
    “I’d think you’d want to see them.”
    He looked at me, I guess, as I’d looked at Margie, saw me for the first time.
    “What you got on your mind, kid?”
    “Hurts me to see your arthritis. I thought how it’s warm in Sicily. Might knock the pain out.”
    He looked at me suspiciously. “What’s with you?”
    “How do you mean?”
    “You look different.”
    “Oh! I got a little bit of good news.”
    “Not going to quit?”
    “Not right away. If you wanted to make a trip to Italy, I could promise I’d be here.”
    “What’s good news?”
    “Can’t tell you yet. It’s like this. . . .” I balanced my palm back and forth.
    “Money?”
    “Could be. Look, you’re rich enough. Why don’t you go back to Sicily and show ’em what a rich American looks like? Soak up some sun. I can take care of the store. You know that.”
    “You ain’t quitting?”
    “Hell, no. You know me well enough to know I wouldn’t run out on you.”
    “You changed, kid. Why?”
    “I told you. Go bounce the bambinos.”
    “I don’t belong there,” he said, but I knew I’d planted something—really something. And I knew he’d come in late that night and go over the books. He’s a suspicious bastard.
    He’d hardly left when—well, it was like yesterday—the B. B. D. and D. drummer came in.
    “Not on business,” he said. “I’m staying the weekend out at Montauk. Thought I’d drop in.”
    “I’m glad you did,” I said. “I want to give you this.” I held out the billfold with the twenty sticking out.
    “Hell, that’s good will. I told you I’m not on business.”
    “Take it!”
    “What you getting at?”
    “It constitutes a contract where I come from.”
    “What’s the matter, you sore?”
    “Certainly not.”
    “Then why?”
    “Take it! The bids aren’t all in.”
    “Jesus—did Waylands make a better offer?”
    “No.”
    “Who, then—them damn discount houses?”
    I pushed the twenty-dollar bill into his breast pocket behind his peaked handkerchief. “I’ll keep the billfold,” I said. “It’s nice.”
    “Look I can’t make an offer without I talk to the head office. Don’t close till maybe Tuesday. I’ll telephone you. If I say it’s Hugh, you’ll know who it is.”
    “It’s your money in the pay phone.”
    “Well, hold it open, will you?”
    “It’s open,” I said. “Doing any fishing?”
    “Only for dames. I tried to take that dish Margie out there. She wouldn’t go. Damn near snapped my head off. I don’t get dames.”
    “They’re curiouser and curiouser.”
    “You can say that again,” he said, and I haven’t heard that expression in fifteen years. He looked worried. “Don’t do anything till you hear from me,” he said. “Jesus, I thought I was conning a country boy.”
    “I will not sell my master short.”
    “Nuts. You just raised the ante.”
    “I just refused a bribe if you feel the urge to talk about it.”
    I guess that proves I was different. The guy began to look at me with respect and I liked it. I loved it. The bugger thought I was like him, only better at it.
    Just before I was ready to close up Mary telephoned. “Ethan,” she said, “now don’t get mad—”
    “At what, flower feet?”
    “Well, she’s so lonely and I thought—well, I asked Margie to dinner.”
    “Why not?”
    “You’re not mad?”
    “Hell, no.”
    “Don’t swear. Tomorrow’s Easter.”
    “That reminds me, press your prettiest. We’re going to Baker’s at four o’clock.”
    “At their house?”
    “Yes, for tea.”
    “I’ll have to wear my Easter church outfit.”
    “Good stuff, fern tip.”
    “You’re not mad about Margie?”
    “I love you,” I said. And I do. I really do. And I remember thinking what a hell of a man a man could become.",
    published: true
)

c17 = Chapter.create!(
    title: "Chapter Five",
    user_id: u2.id,
    story_id: s3.id,
    chapter_number: 5,
    body: "When I walked up Elm Street and turned in at the walk of buried ballast stones, I stopped and looked at the old place. It felt different. It felt mine. Not Mary’s, not Father’s, not old Cap’n’s, but mine. I could sell it or burn it or keep it.
    I’d taken only two of the back steps when the screen door whapped open and Allen boiled out yelling, “Where’s the Peeks? Didn’t you bring me the Peeks?”
    “No,” I said. And, wonder layered with wonders, he didn’t scream his pain and loss. He didn’t appeal to his mother to agree that I had promised.
    He said, “Oh!” and went quietly away.
    “Good evening,” I said to his retreating back and he stopped and said, “Good evening,” as though it were a foreign word he’d just learned.
    Mary came into the kitchen. “You’ve had a haircut,” she said. She identifies any strangeness in me as a fever or a haircut.
    “No, pin curl, I have not.”
    “Well, I’ve been going like spit to get the house ready.”
    “Ready?”
    “I told you, Margie’s coming for dinner.”
    “I know, but why all the festive hurly-burly?”
    “We haven’t had a dinner guest in ages.”
    “That’s true. That’s really true.”
    “Are you going to put on your dark suit?”
    “No, Old Dobbin, my decent gray.”
    “Why not the dark?”
    “Don’t want to spoil the press for church tomorrow.”
    “I can press it tomorrow morning.”
    “I’ll wear Old Dobbin, as sweet a suit as you’ll find in the county.”
    “Children,” she called, “don’t you touch anything! I’ve put out the nut dishes. You don’t want to wear the dark?”
    “No.”
    “Margie will be dressed to the nines.”
    “Margie likes Old Dobbin.”
    “How do you know?”
    “She told me.”
    “She did not.”
    “Wrote a letter to the paper about it.”
    “Be serious. You are going to be nice to her?”
    “I’m going to make love to her.”
    “I’d think you’d like to wear the dark—with her coming.”
    “Look, flower girl, when I came in, I didn’t give a damn what I wore or nothing. In two short moments you have made it impossible for me to wear anything but Old Dobbin.”
    “Just to be mean?”
    “Sure.”
    “Oh!” she said in the same tone Allen had used.
    “What’s for dinner? I want to wear a tie to match the meat.”
    “Roast chicken. Can’t you smell it?”
    “Guess I can. Mary—I—” But I didn’t go on. Why do it? You can’t buck a national instinct. She’d been to the Chicken Bargain Day at the Safe Rite Store. Cheaper than Marullo’s. Of course I got them wholesale and I have explained to Mary the come-on bargains at the chain stores. The bargain draws you in and you pick up a dozen other things that aren’t bargains just because they’re under your hand. Everyone knows it and everyone does it.
    My lecture to Mary Manyflowers died afoaling. The New Ethan Allen Hawley goes along with the national follies and uses them when he can.
    Mary said, “I hope you don’t think I was disloyal.”
    “My darling, what can be virtuous or sinful about a chicken?”
    “It was awful cheap.”
    “I think you did the wise—the wifely thing.”
    “You’re making fun.”
    Allen was in my bedroom waiting for me. “Can I look at your Knight Templar sword?”
    “Sure. It’s in the corner of the closet.”
    He knew perfectly well where it was. While I skinned off my clothes, he got it out of the leather case and unsheathed it and held the shiny plated blade up in the light and looked at his noble posture in the mirror.
    “How’s the essay going?”
    “Huh?”
    “Don’t you mean, ‘I beg your pardon, sir’?”
    “Yes, sir.”
    “I said, how’s the essay?”
    “Oh! Fine.”
    “You going to do it?”
    “Sure.”
    “Sure?”
    “Sure, sir.”
    “You can look at the hat, too. In that big leather case on the shelf. Feather’s kind of yellowy.”
    I got in the big old wide-bottomed tub with the lion’s feet. They made them big enough to luxuriate in in those days. I scrubbed Marullo and the whole day off my skin with a brush and I shaved in the tub without looking, feeling for the whiskers with my fingertips. Everyone would agree that’s pretty Roman and decadent. While I combed my hair, I looked in the mirror. I hadn’t seen my face in a long time. It’s quite possible to shave every day and never really to see your face, particularly if you don’t care much for it. Beauty is only skin deep, and also beauty must come from inside. It better be the second if I was to get anywhere. It isn’t that I have an ugly face. To me, it just isn’t interesting. I made a few expressions and gave it up. They weren’t noble or menacing or proud or funny. It was just the same damn face making faces.
    When I came back to the bedroom, Allen had the plumed Knight Templar hat on, and if it makes me look that silly I must resign. The leather hatbox was open on the floor. It has a supportmade of velvet-covered cardboard like an upside-down porridge bowl.
    “I wonder if they can bleach that ostrich plume or do I have to get a new one?”
    “If you get a new one, can I have this?”
    “Why not? Where’s Ellen? I haven’t heard her young screechy voice.”
    “She’s writing on her I Love America essay.”
    “And you?”
    “I’m thinking about it. Will you bring some Peeks home?”
    “I’ll probably forget it. Why don’t you drop in at the store and pick it up someday?”
    “Okay. Mind if I ask something—sir?”
    “I’d be flattered.”
    “Did we use to own all High Street for two blocks?”
    “We did.”
    “And did we have whaling ships?”
    “Yep.”
    “Well, why don’t we now?”
    “We lost them.”
    “How come?”
    “Just up and lost them.”
    “That’s a joke.”
    “It’s a pretty darned serious joke, if you dissect it.”
    “We’re dissecting a frog at school.”
    “Good for you. Not so good for the frog. Which of these beauty-ties shall I wear?”
    “The blue one,” he said without interest. “Say, when you get dressed can you—have you got time to come up in the attic?”
    “I’ll make time if it’s important.”
    “Will you come?”
    “I will.”
    “All right. I’ll go up now and turn on the light.”
    “Be with you in a couple of tie-tying moments.”
    His footsteps sounded hollowly on the uncarpeted attic stairs.
    If I think about it while I tie a bow, the tie has a rotating tendency, but if I let my fingers take their own way, they do it perfectly. I commissioned my fingers and thought about the attic of the old Hawley house, my house, my attic. It is not a dark and spidery prison for the broken and the abandoned. It has windows with small panes so old that the light comes through lavender and the outside is wavery—like a world seen through water. The books stored there are not waiting to be thrown out or given to the Seamen’s Institute. They sit comfortably on their shelves waiting to be rediscovered. And the chairs, some unfashionable for a time, some rump-sprung, are large and soft. It is not a dusty place either. Housecleaning is attic-cleaning also, and since it is mostly closed away, dust does not enter. I remember as a child scrambling among the brilliants of books or, battered with agonies, or in the spectral half-life that requires loneliness, retiring to the attic, to lie curled in a great body-molded chair in the violet-lavender light from the window. There I could study the big adze-squared beams that support the roof—see how they are mortised one into another and pinned in place with oaken dowels. When it rains from rustling drip to roar on the roof, it is a fine secure place. Then the books, tinted with light, the picture books of children grown, seeded, and gone; Chatterboxes and the Rollo series; a thousand acts of God—Fire, Flood, Tidal Waves, Earthquakes—all fully illustrated; the Gustave Doré Hell, with Dante’s squared cantos like bricks between; and the heartbreaking stories of Hans Christian Andersen, the blood-chilling violence and cruelty of the Grimm Brothers, the Morte d’Arthur of majesty with drawings by Aubrey Beardsley, a sickly, warped creature, a strange choice to illustrate great, manly Malory.
    I remember thinking how wise a man was H. C. Andersen. The king told his secrets down a well, and his secrets were safe. A man who tells secrets or stories must think of who is hearing or reading, for a story has as many versions as it has readers. Everyone takes what he wants or can from it and thus changes it to his measure. Some pick out parts and reject the rest, some strain the story through their mesh of prejudice, some paint it with their own delight. A story must have some points of contact with the reader to make him feel at home in it. Only then can he accept wonders. The tale I may tell to Allen must be differentlybuilt from the same tale told to my Mary, and that in turn shaped to fit Marullo if Marullo is to join it. But perhaps the Well of Hosay Andersen is best. It only receives, and the echo it gives back is quiet and soon over.
    I guess we’re all, or most of us, the wards of that nineteenth-century science which denied existence to anything it could not measure or explain. The things we couldn’t explain went right on but surely not with our blessing. We did not see what we couldn’t explain, and meanwhile a great part of the world was abandoned to children, insane people, fools, and mystics, who were more interested in what is than in why it is. So many old and lovely things are stored in the world’s attic, because we don’t want them around us and we don’t dare throw them out.
    A single unshaded light hung from a roof beam. The attic is floored with hand-hewn pine planks twenty inches wide and two inches thick, ample support for the neat stacks of trunks and boxes, of paper-wrapped lamps and vases and all manner of exiled finery. And the light glowed softly on the generations of books in open bookcases—all clean and dustless. My Mary is a stern and uncompromising dust harrier and she is neat as a top sergeant. The books are arranged by size and color.
    Allen rested his forehead on the top of a bookcase and glared down at the books. His right hand was on the pommel of the Knight Templar sword, point downward like a cane.
    “You make a symbolic picture, my son. Call it ‘Youth, War, and Learning.’ ”
    “I want to ask you—you said there was books to look up stuff.”
    “What kind of stuff?”
    “Patriotic jazz, for the essay.”
    “I see. Patriotic jazz. How’s this for beat? ‘Is life so dear or peace so sweet as to be purchased at the price of chains and slavery? Forbid it, Almighty God! I know not what course others may take, but as for me, give me liberty or give me death!’ ”
    “Great! That’s the berries.”
    “Sure is. There were giants on the earth in those days.”
    “I wisht I lived then. Pirate ships. Oh boy! Bang-bang! Strike your colors! Pots of gold and ladies in silk dresses and jewels. I sure wisht I lived then. Some of our folks done—did it. You said so yourself.”
    “Kind of genteel piracy—they called them privateers. I guess it wasn’t as sweet as it sounds from a distance. Salt beef and biscuit. There was scurvy on the earth in those days too.”
    “I wouldn’t mind that. I’d get the gold and bring it home. I guess they won’t let you do it any more.”
    “No—it’s bigger and better organized now. They call it diplomacy.”
    “There’s a boy in our school that won two television prizes— fifty dollars and two hundred dollars. How’s that?”
    “He must be smart.”
    “Him? Course not. It’s a trick, he says. You got to learn the trick and then you get a gimmick.”
    “Gimmick?”
    “Sure—like you’re a cripple or you support your old mother raising frogs. That gives you audience interest so they choose you. He’s got a magazine with every contest in the whole country in it. Can I get one of those magazines, Pop?”
    “Well, piracy is out, but I guess the impulse lingers.”
    “How do you mean?”
    “Something for nothing. Wealth without effort.”
    “Can I get that magazine?”
    “I thought such things were in disrepute since the payola scandals.”
    “Hell, no. I mean no, sir. They just changed it around a little. I’d sure like to cut in on some of that loot.”
    “It is loot, isn’t it?”
    “It’s all dough, no matter how you get it.”
    “I don’t believe that. It doesn’t hurt the money to get it that way but it hurts the one who gets it.”
    “I don’t see how. It’s not against the law. Why, some of the biggest people in this country—”
    “Charles, my son, my son.”
    “How do you mean, Charles?”
    “Do you have to be rich, Allen? Do you have to?”
    “Do you think I like to live without no motorbike? Must be twenty kids with motorbikes. And how you think it is if your family hasn’t even got a car, leave alone no television?”
    “I’m deeply shocked.”
    “You don’t know how it is, Dad. One day in class I did a theme how my great-granddad was a whaling captain.”
    “He was.”
    “Whole class bust out laughing. Know what they call me? Whaley. How’d you like that?”
    “Pretty bad.”
    “It wouldn’t be so bad if you were a lawyer or in a bank or like that. Know what I’m going to do with the first chunk of loot I win?”
    “No, what?”
    “I’m going to buy you an automobile so you won’t feel so lousy when other people all got one.”
    I said, “Thank you, Allen.” My throat was dry.
    “Oh, that’s all right. I can’t get a license yet anyway.”
    “You’ll find all the great speeches of our nation in that case, Allen. I hope you’ll read some of them.”
    “I will. I need to.”
    “You surely do. Good hunting.” I went quietly down the stairs and moistened my lips as I went. And Allen was right. I felt lousy.
    When I sat down in my big chair under the reading light, Mary brought the paper to me.
    “What a comfort you are, wiggles.”
    “That suit looks real nice.”
    “You’re a good loser and a good cook.”
    “The tie matches your eyes.”
    “You’re up to something. I can tell. I’ll trade you a secret for a secret.”
    “But I don’t have one,” she said.
    “Make one up!”
    “I can’t. Come on, Ethan, tell me.”
    “Any eary children listening in?”
    “No.”
    “Well, Margie Young-Hunt came in today. Out of coffee, so she said. I think she’s carrying a torch for me.”
    “Come on, tell.”
    “Well, we were talking about the fortune and I said it would be interesting to do it again and see if it was the same.”
    “You didn’t!”
    “I did so. And she said it would be interesting.”
    “But you don’t like things like that.”
    “I do when they’re good.”
    “Think she’ll do it tonight?”
    “If you care to offer me a penny for my thoughts, I think that’s why she’s coming.”
    “Oh, no! I asked her.”
    “After she set you up for it.”
    “You don’t like her.”
    “On the contrary—I’m beginning to like her very much, and to respect her.”
    “I wish I could tell when you’re joking.”
    Ellen came in then quietly so that you couldn’t tell whether she had been listening but I suspect she had. Ellen is a girl-girl-girl and thirteen to boot, sweet and sad, gay and delicate, sickly when she needs it. She is in that stage like dough beginning to set. She may be pretty, or not. She is a leaner, leans on me, breathes on me too, but her breath is sweet like a cow’s breath. She’s a toucher, too.
    Ellen leaned on the arm of my chair and her thin little shoulder touched mine. She ran one pink finger down my coat sleeve and onto the hairs on my wrist and it tickled. The blond hairs on her arm shone like gold dust under the lamp. A devious one, she is, but then I guess all girl-girl-girls are.
    “Nail polish,” I said.
    “Mama lets me if it’s only pink. Your nails are rough.”
    “Aren’t they?”
    “But they’re clean.”
    “I scrubbed them.”
    “I hate dirty nails like Allen’s.”
    “Maybe you just hate Allen lock, stock, and bobtail.”
    “I do.”
    “Good for you. Why don’t you kill him?”
    “You’re silly.” She crawled her fingers behind my ear. She’s probably making some boy kids very nervous already.“I hear you are working on your essay.”
    “Stinker told you.”
    “Is it good?”
    “Oh, yes! Very good. I’ll let you read it when it’s done.”
    “Honored. I see you’re dressed for the occasion.”
    “This old thing? I’m saving my new dress for tomorrow.”
    “Good idea. There’ll be boys.”
    “I hate boys. I do hate boys.”
    “I know you do. Hostility is your motto. I don’t like ’em much myself. Now lean off me a minute. I want to read the paper.”
    She flounced like a 1920s movie star and instantly took her revenge. “When are you going to be rich?”
    Yes, she’ll give some man a bad time. My instinct was to grab her and paddle her but that’s exactly what she wanted. I do believe she had eye shadow on. There was as little pity in her eyes as you’ll find in a panther’s eyes.
    “Next Friday,” I said.
    “Well, I wish you’d hurry up. I’m sick of being poor.” And she slipped quickly out. A listener at doors too. I do love her, and that’s odd because she is everything I detest in anyone else—and I adore her.
    No newspaper for me. I hadn’t even unfolded it when Margie Young-Hunt arrived. She was done up—hairdresser done up. I guess Mary would know how it’s done, but I don’t.
    In the morning the out-of-coffee Margie was set for me like a bear trap. The same evening she drew a bead on Mary. If her behind bounced, I couldn’t see it. If anything was under her neat suit, it was hiding. She was a perfect guest—for another woman—helpful, charming, complimentary, thoughtful, modest. She treated me as though I had taken on forty years since the morning. What a wonderful thing a woman is. I can admire what they do even if I don’t understand why.
    While Margie and Mary went through their pleasant litany, “What have you done with your hair?” . . . “I like it” . . . “That’s your color. You should always wear it”—the harmless recognition signals of women—I thought of the most feminine story I ever heard. Two women meet. One cries, “What have you done with your hair? It looks like a wig.” “It is a wig.” “Well, you’d never know it.”
    Maybe these are deeper responses than we know or have any right to know.
    Dinner was a series of exclamations about the excellence of the roast chicken and denials that it was edible. Ellen studied our guest with a recording eye, every detail of hairdress and make-up. And I knew then how young they start the minute examination on which they base what is called their intuition. Ellen avoided my eyes. She knew she had shot to kill and she expected revenge. Very well, my savage daughter. I shall revenge myself in the cruelest way you can imagine. I shall forget it.
    And it was a good dinner, over-rich and too much of it, as company dinners must be, and a mountain of dishes not ordinarily used. And coffee afterward, which we do not ordinarily have.
    “Doesn’t it keep you awake?”
    “Nothing keeps me awake.”
    “Not even me?”
    “Ethan!”
    And then the silent, deadly war of the dishes. “Let me help.”
    “Not at all. You’re the guest.”
    “Well, let me carry them.”
    Mary’s eyes sought out the children and her spirit moved on them with fixed bayonet. They knew what was coming, but they were helpless.
    Mary said, “The children always do it. They love to. And they do it so well. I’m proud of them.”
    “Well, isn’t that nice? You don’t see it much any more.”
    “I know. We feel very fortunate that they want to help.”
    I could read their ferrety little minds, looking for an escape, thinking of making a fuss, getting sick, dropping the beautiful old dishes. Mary must have read their evil little minds also. She said, “The remarkable thing is that they never break anything, don’t even chip a glass.”
    “Well, you are blessed!” Margie said. “How did you teach them?”
    “I didn’t. It’s just natural with them. You know, some people are just naturally clumsy; well, Allen and Ellen are just naturally clever with their hands.”
    I glanced at the kids to see how they were handling it. They knew they were being taken. I think they wondered whether Margie Young-Hunt knew it. They were still looking for an escape. I dropped the beam full on them.
    “Of course they like to hear compliments,” I said, “but we’re holding them up. They’ll miss the movie if we don’t let them get to it.”
    Margie had the grace not to laugh and Mary gave me a quick and startled look of admiration. They hadn’t even asked to go to the movie.
    Even if teen-age children aren’t making a sound, it’s quieter when they’re gone. They put a boiling in the air around them. As they left, the whole house seemed to sigh and settle. No wonder poltergeists infest only houses with adolescent children.
    The three of us circled warily around the subject each one knew was coming. I went to the glass-fronted cabinet and took out three long-stemmed, lily-shaped glasses, cotton twist, brought home from England, heaven knows how long ago. And I poured from a basket-covered gallon jug, dark and discolored with age.
    “Jamaica rum,” I said. “Hawleys were seamen.”
    “Must be very old,” said Margie Young-Hunt.
    “Older than you or me or my father.”
    “It’ll take the top of your head off,” Mary said. “Well, this must be a party. Ethan only gets it out for weddings and funerals. Do you think it’s all right, dear? Just before Easter, I mean?”
    “The Sacrament isn’t Coca-Cola, my darling.”
    “Mary, I’ve never seen your husband so gay.”
    “It’s the fortune you read,” said Mary. “It’s changed him overnight.”
    What a frightening thing is the human, a mass of gauges and dials and registers, and we can read only a few and those perhaps not accurately. A flare of searing red pain formed in my bowels and moved upward until it speared and tore at the place just under my ribs. A great wind roared in my ears and drove me like a helpless ship, dismasted before it could shorten sail. I tasted bitter salt and I saw a pulsing, heaving room. Every warning signal screamed danger, screamed havoc, screamed shock. It caught me as I passed behind my ladies’ chairs and doubled me over in quaking agony, and just as suddenly it was gone. I straightened up and moved on and they didn’t even know it had happened. I understand how people once believed the devil could take possession. I’m not sure I don’t believe it. Possession! The seething birth of something foreign with every nerve resisting and losing the fight and settling back beaten to make peace with the invader. Violation—that’s the word, if you can think of the sound of a word edged with blue flame like a blowtorch.
    My dear’s voice came through. “It doesn’t really harm to hear nice things,” she said.
    I tried my voice and it was strong and good. “A little hope, even hopeless hope, never hurt anybody,” I said, and I put the jug away in its cabinet, and went back to my chair and drank half the glass of ancient, fragrant rum and sat down and crossed my knees and locked my fingers in my lap.
    “I don’t understand him,” Mary said. “He’s always hated fortune-telling, made jokes about it. I just don’t understand.”
    My nerve ends were rustling like dry, windblown winter grass and my laced fingers had whitened from pressure.
    “I’ll try to explain it to Mrs. Young—to Margie,” I said. “Mary comes from a noble but poor Irish family.”
    “We weren’t all that poor.”
    “Can’t you hear it in her speech?”
    “Well, now that you mention it—”
    “Well, Mary’s sainted, or should be, grandmother was a good Christian, wasn’t she, Mary?”
    It seemed to me a little hostility was growing in my dear. I went on. “But she had no trouble believing in fairy people, although in strict, unbending Christian theology the two don’t mix.”
    “But that’s different.”
    “Of course it is, darling. Nearly everything’s different. Can you disbelieve in something you don’t know about?”
    “Look out for him,” Mary said. “He’ll catch you in a word trap.”
    “I will not. I don’t know about fortunes or fortune-telling. How can I not believe in it? I believe it exists because it happens.”
    “But you don’t believe it’s true.”
    “What’s true is that people get it done, millions of them, and pay for it. That’s enough to know to be interested, isn’t it?”
    “But you don’t—”
    “Wait! It isn’t that I don’t believe but that I don’t know. They’re not the same thing. I don’t know which comes first— the fortune or the fortune-telling.”
    “I think I know what he means.”
    “You do?” Mary was not pleased.
    “Suppose the fortune-teller was sensitive to things that are going to happen anyway. Is that what you mean?”
    “That’s different. But how can cards know?”
    I said, “The cards can’t even move without someone turning them.”
    Margie did not look at me but I knew she sensed Mary’s growing unease and she wanted instructions.
    “Couldn’t we work out a test?” I asked.
    “Well, that’s a funny thing. These things seem to resent a test and go away, but there’s no harm trying. Can you think of a test?”
    “You haven’t touched your rum.” They lifted their glasses together and sipped and put them down. I finished mine and got out the bottle.
    “Ethan, do you think you should?”
    “Yes, dearling.” I filled my glass. “Why can’t you turn the cards blindfolded?”
    “They have to be read.”
    “How would it be if Mary turned them or I did, and you read them?”
    “There’s supposed to be a closeness between the reader and the cards, but I don’t know—we could try.”
    Mary said, “I think if we do it at all, we ought to do it the right way.” She’s always that way. She doesn’t like change— little change, I mean. The big ones she can handle better than anyone, blows up at a cut finger but would be calm and efficient with a cut throat. I had a throb of unease because I had told Mary we discussed this, and here we were seeming to think of it for the first time.
    “We talked about it this morning.”
    “Yes, when I came in for coffee. I’ve been thinking about it all day. I brought the cards.”
    It is Mary’s tendency to confuse intentness with anger and anger with violence and she is terrified of violence. Some drinking uncles put that fear on her, and it’s a shame. I could feel her fear rising.
    “Let’s not fool with it,” I said. “Let’s play some cassino instead.”
    Margie saw the tactic, knew it, had probably used it. “All right with me.”
    “My fortune’s set. I’m going to be rich. Let it go at that.”
    “You see, I told you he didn’t believe in it. He leads you all around the bush and then he won’t play. He makes me so mad sometimes.”
    “I do? You never show it. You are always my darling wife.”
    Isn’t it strange how sometimes you can feel currents and cross-currents—not always, but sometimes. Mary doesn’t use her mind for organized thought and maybe this makes her more receptive of impressions. A tension was growing in the room. It crossed my mind that she might not be best friends with Margie any more—might never feel easy with her.
    “I’d really like to know about the cards,” I said. “I’m ignorant. I always heard that gypsies do it. Are you a gypsy? I don’t think I ever knew one.”
    Mary said, “Her maiden name was Russian but she’s from Alaska.”
    Then that accounted for the wide cheekbones.
    Margie said, “I have a guilty secret I’ve never told you, Mary, how we came to be in Alaska.”
    “The Russians owned it,” I said. “We bought it from them.”
    “Yes, but did you know it was a prison, like Siberia, only for worse crimes?”
    “What kind of crimes?”
    “The worst. My great-grandmother was sentenced to Alaska for witchcraft.”
    “What did she do?”
    “She raised storms.”
    I laughed. “I see you come by it naturally.”
    “Raising storms?”
    “Reading cards—same thing, maybe.”
    Mary said, “You’re joking. That isn’t true.”
    “It may be joking, Mary, but it’s true. That was the worst crime, worse than murder. I’ve still got her papers—only of course they’re in Russian.”
    “Can you speak Russian?”
    “Only a little now.”
    I said, “Maybe witchcraft still is the worst crime.”
    “See what I mean?” said Mary. “He jumps this side and that side. You never know what he’s thinking. Last night he—he got up before daylight this morning. Went for a walk.”
    “I’m a scoundrel,” I said. “An unmitigated, unredeemable rascal.”
    “Well, I would like to see Margie turn the cards—but her own way without you mixing in. If we keep talking, the children will be home and then we can’t.”
    “Excuse me a moment,” I said. I climbed the stairs to our bedroom. The sword was on the bed and the hatbox open on the floor. I went to the bathroom and flushed the toilet. You can hear the water rushing all over the house. I wet a cloth in cold water and pressed it against my forehead and particularly against my eyes. They seemed to bulge from inside pressure. The cold water felt good. I sat on the toilet seat and put my face down against the damp washcloth and when it warmed up I wet it again. Going through the bedroom, I picked the plumed Knight Templar’s hat from its box and marched down the stairs wearing it.
    “Oh, you fool,” said Mary. And she looked glad and relieved. The ache went out of the air.
    “Can they bleach ostrich feathers?” I asked. “It’s turned yellow.”
    “I think so. Ask Mr. Schultz.”
    “I’ll take it down Monday.”
    “I wish Margie would turn the cards,” said Mary. “I would dearly love that.”
    I put the hat on the newel post of the banister, and it looked like a drunken admiral if there is such a thing.
    “Get the card table, Eth. It takes lots of room.”
    I brought it from the hall closet and snapped the legs open.
    “Margie likes a straight chair.”
    I set a dining chair. “Do we have to do anything?”
    “Concentrate,” said Margie.
    “On what?”
    “As near as possible on nothing. The cards are in my purse over on the couch.”
    I’d always thought of fortune-telling cards as greasy and thick and bent, but these were clean and shining, as though they were coated with plastic. They were longer and narrower than playing cards and many more than fifty-two. Margie sat straight at the table and fanned them—bright-colored pictures and intricate suits. The names were in French: l’empereur, l’ermite, le chariot, la justice, le mat, le diable—earth, sun, moon, and stars, and suits of swords, cups, batons, and money, I guess, if deniero means money, but the symbol was shaped like a heraldic rose, and each suit with its roi, reine, and chevalier. Then I saw strange cards—disturbing cards—a tower riven by lightning, a wheel of fortune, a man hanging by his feet from a gallows, called le pendu, and Death—la mort, a skeleton with a scythe.
    “Kind of gloomy,” I said. “Do the pictures mean what they seem to?”
    “It’s how they fall in relation. If they fall upside down they reverse their meaning.”
    “Is there a variation in meaning?”
    “Yes. That’s the interpretation.”
    The moment she had the cards Margie became formal. Under the lights her hands showed what I had seen before, that she was older than she looked.
    “Where did you learn it?” I asked.
    “I used to watch my grandmother and later I took it up as a trick for parties—I suppose a way of getting attention.”
    “Do you believe in it?”
    “I don’t know. Sometimes remarkable things come out. I don’t know.”
    “Could the cards be a concentration ritual—psychic exercise?”
    “Sometimes I think that’s true. When I find I give a value to a card it didn’t have before, that’s when it is usually accurate.” Her hands were like living things as they shuffled and cut and shuffled and cut again and passed them to me to cut.
    “Who am I doing?”
    “Read Ethan,” Mary cried. “See if it matches yesterday’s.”
    Margie looked at me. “Light hair,” she said, “blue eyes. Are you under forty?”
    “Just.”
    “The king of batons.” She found it in the deck. “This is you”—a picture of a crowned and robed king holding a huge red and blue scepter and Roi de Bâton printed under him. She laid it out face up and reshuffled the deck. Then she turned the cards rapidly, speaking in a singsong voice as she did. A card on top of my card—“This covers you.” Crosswise on top—“This crosses you.” One above—“This crowns you.” One below—“This is your foundation. This before, this behind you.” She had formed a cross of cards on the table. Then rapidly she turned up four in a line to the left of the cross, saying, “Yourself, your house, your hopes, your future.” The last card was the man hanged upside down, le pendu, but from where I sat across the table he was right side up.
    “So much for my future.”
    “It can mean salvation,” she said. Her forefinger traced the line of her lower lip.
    Mary demanded, “Is the money there?”
    “Yes—it’s there,” she said absently. And suddenly she gathered the cards, shuffled them over and over, and laid them out again, muttering her ritual under her breath. She didn’t seem to study individual cards but to see the whole group at once, and her eyes were misty and remote.
    A good trick, I thought, a killer at ladies’ clubs—or anywhere else. So must the Pythoness have looked, cool and composed and confusing. If you can hold people tense, hardly breathing, expectant for a long time, they’ll believe anything—not acting, so much as technique, timing. This woman was wasting her talent on traveling salesmen. But what did she want of us or of me? Suddenly she gathered the cards, patted them square, and put them in the red box, which said: I. Muller & Cie, Fabrique de Cartes.
    “Can’t do it,” she said. “Happens sometimes.”
    Mary said breathlessly, “Did you see something you don’t want to tell?”
    “Oh, I’ll tell all right! Once when I was a little girl I saw a snake change its skin, a Rocky Mountain rattler. I watched the whole thing. Well, looking at the cards, they disappeared and I saw that snake changing its skin, part dusty and ragged and part fresh and new. You figure it out.”
    I said, “Sounds like a trance state. Ever have it happen before?”
    “Three times before.”
    “Make any sense the other times?”
    “Not that I know of.”
    “Always the snake?”
    “Oh, no! Other things, but just as crazy.”
    Mary said enthusiastically, “Maybe it’s a symbol of the change in fortune that’s coming to Ethan.”
    “Is he a rattlesnake?”
    “Oh! I see what you mean.”
    “Makes me feel crawly,” Margie said. “Once I kind of liked snakes and then when I grew up I hated them. They give me the willies. I’d better be going.”
    “Ethan can see you home.”
    “Wouldn’t think of it.”
    “I’d be glad to.”Margie smiled at Mary. “You keep him right here with you,” she said. “You don’t know what it’s like to be without one.”
    “Nonsense,” said Mary. “You could get a husband by crooking your finger.”
    “That’s what I did before. It’s no good. If they come that easy, they’re not worth having. Keep him home. Someone might grab him.” She got into her coat as she talked—a fast scrammer. “Lovely dinner. I hope you’ll ask me back. Sorry about the fortune, Ethan.”
    “Will we see you in church tomorrow?”
    “No. I’m going up to Montauk tonight.”
    “But it’s too cold and wet.”
    “I love the mornings on the sea up there. Good night.” She was out before I could even hold the door for her, out as though something was after her.
    Mary said, “I didn’t know she was going up there tonight.”
    And I couldn’t tell her: Neither did she.
    “Ethan—what do you make of that fortune tonight?”
    “She didn’t tell one.”
    “You forget, she said there would be money. But what do you make of it? I think she saw something she didn’t want to tell. Something that scared her.”
    “Maybe she once saw the snake and it stayed in her mind.”
    “You don’t think it had a—meaning?”
    “Honey roll, you’re the fortune expert. How would I know?”
    “Well, anyway. I’m glad you don’t hate her. I thought you did.”
    “I’m tricky,” I said. “I conceal my thoughts.”
    “Not from me you don’t. They’ll stay right through the second show.”
    “Come again?”
    “The children. They always do. I thought you were wonderful about the dishes.”
    “I’m devious,” I said. “And, in due course, I have designs on your honor.”",
    published: true
)

c18 = Chapter.create!(
    title: 'Part Two',
    user_id: u1.id,
    story_id: s1.id,
    chapter_number: 2,
    body: "On waking I understood why my employer had looked rather cross when I asked for my two days off; it's a Saturday today. I hadn't thought of this at the time; it only struck me when I was getting out of bed. Obviously he had seen that it would mean my getting four days' holiday straight off, and one couldn't expect him to like that. Still, for one thing, it wasn't my fault if Mother was buried yesterday and not today; and then, again, I'd have had my Saturday and Sunday off in any case. But naturally this didn't prevent me from seeing my employer's point.

    Getting up was an effort, as I'd been really exhausted by the previous day's experiences. While shaving, I wondered how to spend the morning, and decided that a swim would do me good. So I caught the streetcar that goes down to the harbor.
    
    It was quite like old times; a lot of young people were in the swimming pool, amongst them Marie Cardona, who used to be a typist at the office. I was rather keen on her in those days, and I fancy she liked me, too. But she was with us so short a time that nothing came of it.
    
    While I was helping her to climb on to a raft, I let my hand stray over her breasts. Then she lay flat on the raft, while I trod water. After a moment she turned and looked at me. Her hair was over her eyes and she was laughing. I clambered up on to the raft, beside her. The air was pleasantly warm, and, half jokingly, I let my head sink back upon her lap. She didn't seem to mind, so I let it stay there. I had the sky full in my eyes, all blue and gold, and I could feel Marie's stomach rising and falling gently under my head. We must have stayed a good half-hour on the raft, both of us half asleep. When the sun got too hot she dived off and I followed. I caught up with her, put my arm round her waist, and we swam side by side. She was still laughing.
    
    While we were drying ourselves on the edge of the swimming pool she said: “I'm browner than you.” I asked her if she'd come to the movies with me that evening. She laughed again and said, “Yes,” if I'd take her to the comedy everybody was talking about, the one with Fernandel in it.
    
    When we had dressed, she stared at my black tie and asked if I was in mourning. I explained that my mother had died. “When?” she asked, and I said, “Yesterday.” She made no remark, though I thought she shrank away a little. I was just going to explain to her that it wasn't my fault, but I checked myself, as I remembered having said the same thing to my employer, and realizing then it sounded rather foolish. Still, foolish or not, somehow one can't help feeling a bit guilty, I suppose.
    
    Anyhow, by evening Marie had forgotten all about it. The film was funny in parts, but some of it was downright stupid. She pressed her leg against mine while we were in the picture house, and I was fondling her breast. Toward the end of the show I kissed her, but rather clumsily. Afterward she came back with me to my place.
    
    When I woke up, Marie had gone. She'd told me her aunt expected her first thing in the morning. I remembered it was a Sunday, and that put me off; I've never cared for Sundays. So I turned my head and lazily sniffed the smell of brine that Marie's head had left on the pillow. I slept until ten. After that I stayed in bed until noon, smoking cigarettes. I decided not to lunch at Céleste's restaurant as I usually did; they'd be sure to pester me with questions, and I dislike being questioned. So I fried some eggs and ate them off the pan. I did without bread as there wasn't any left, and I couldn't be bothered going down to buy it.
    
    After lunch I felt at loose ends and roamed about the little flat. It suited us well enough when Mother was with me, but now that I was by myself it was too large and I'd moved the dining table into my bedroom. That was now the only room I used; it had all the furniture I needed: a brass bedstead, a dressing table, some cane chairs whose seats had more or less caved in, a wardrobe with a tarnished mirror. The rest of the flat was never used, so I didn't trouble to look after it.
    
    A bit later, for want of anything better to do, I picked up an old newspaper that was lying on the floor and read it. There was an advertisement of Kruschen Salts and I cut it out and pasted in into an album where I keep things that amuse me in the papers. Then I washed my hands and, as a last resource, went out on to the balcony.
    
    My bedroom overlooks the main street of our district. Though it was a fine afternoon, the paving blocks were black and glistening. What few people were about seemed in an absurd hurry. First of all there came a family, going for their Sunday-afternoon walk; two small boys in sailor suits, with short trousers hardly down to their knees, and looking rather uneasy in their Sunday best; then a little girl with a big pink bow and black patent-leather shoes. Behind them was their mother, an enormously fat woman in a brown silk dress, and their father, a dapper little man, whom I knew by sight. He had a straw hat, a walking stick, and a butterfly tie. Seeing him beside his wife, I understood why people said he came of a good family and had married beneath him.
    
    Next came a group of young fellows, the local “bloods,” with sleek oiled hair, red ties, coats cut very tight at the waist, braided pockets, and square-toed shoes. I guessed they were going to one of the big theaters in the center of the town. That was why they had started out so early and were hurrying to the streetcar stop, laughing and talking at the top of their voices.
    
    After they had passed, the street gradually emptied. By this time all the matinées must have begun. Only a few shopkeepers and cats remained about. Above the sycamores bordering the road the sky was cloudless, but the light was soft. The tobacconist on the other side of the street brought a chair out on to the pavement in front of his door and sat astride it, resting his arms on the back. The streetcars which a few minutes before had been crowded were now almost empty. In the little café, Chez Pierrot, beside the tobacconist's, the waiter was sweeping up the sawdust in the empty restaurant. A typical Sunday afternoon…
    
    I turned my chair round and seated myself like the tobacconist, as it was more comfortable that way. After smoking a couple of cigarettes I went back to the room, got a tablet of chocolate, and returned to the window to eat it. Soon after, the sky clouded over, and I thought a summer storm was coming. However, the clouds gradually lifted. All the same, they had left in the street a sort of threat of rain, which made it darker. I stayed watching the sky for quite a while.
    
    At five there was a loud clanging of streetcars. They were coming from the stadium in our suburb where there had been a football match. Even the back platforms were crowded and people were standing on the steps. Then another streetcar brought back the teams. I knew they were the players by the little suitcase each man carried. They were bawling out their team song, “Keep the ball rolling, boys.” One of them looked up at me and shouted, “We licked them!” I waved my hand and called back, “Good work!” From now on there was a steady stream of private cars.
    
    The sky had changed again; a reddish glow was spreading up beyond the housetops. As dusk set in, the street grew more crowded. People were returning from their walks, and I noticed the dapper little man with the fat wife amongst the passers-by. Children were whimpering and trailing wearily after their parents. After some minutes the local picture houses disgorged their audiences. I noticed that the young fellows coming from them were taking longer strides and gesturing more vigorously than at ordinary times; doubtless the picture they'd been seeing was of the wild-West variety. Those who had been to the picture houses in the middle of the town came a little later, and looked more sedate, though a few were still laughing. On the whole, however, they seemed languid and exhausted. Some of them remained loitering in the street under my window. A group of girls came by, walking arm in arm. The young men under my window swerved so as to brush against them, and shouted humorous remarks, which made the girls turn their heads and giggle. I recognized them as girls from my part of the town, and two or three of them, whom I knew, looked up and waved to me.
    
    Just then the street lamps came on, all together, and they made the stars that were beginning to glimmer in the night sky paler still. I felt my eyes getting tired, what with the lights and all the movement I'd been watching in the street. There were little pools of brightness under the lamps, and now and then a streetcar passed, lighting up a girl's hair, or a smile, or a silver bangle.
    
    Soon after this, as the streetcars became fewer and the sky showed velvety black above the trees and lamps, the street grew emptier, almost imperceptibly, until a time came when there was nobody to be seen and a cat, the first of the evening, crossed, unhurrying, the deserted street.
    
    It struck me that I'd better see about some dinner. I had been leaning so long on the back of my chair, looking down, that my neck hurt when I straightened myself up. I went down, bought some bread and spaghetti, did my cooking, and ate my meal standing. I'd intended to smoke another cigarette at my window, but the night had turned rather chilly and I decided against it. As I was coming back, after shutting the window, I glanced at the mirror and saw reflected in it a corner of my table with my spirit lamp and some bits of bread beside it. It occurred to me that somehow I'd got through another Sunday, that Mother now was buried, and tomorrow I'd be going back to work as usual. Really, nothing in my life had changed.",
    published: true
)