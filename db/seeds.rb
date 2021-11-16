Item.destroy_all
User.destroy_all

puts "Create User..."

user1 = User.create(name: "Sebastian Stan")
user2 = User.create(name: "Chris Evans")

puts "Create Items..."
Item.create(
    
    name: "Zoltar Speaks Fortune Teller Arcade - Economy", 
    price:769900, 
    product_description:"Zoltar Speaks Fortune Teller Arcade - Economy
    Our least expensive Zoltar model. This high quality machine is great for smaller spaces or for those on a budget. Animations include only eye movement and talking. Add more movements like arm, head or breathing for an extra cost.
    Quality Details
    Zoltar’s hands and head are handcrafted and hand-painted by our artists to ensure the most realistic quality. The cabinet is made of birch veneers and is finished with black and gold trim. Zoltar is outfitted with a luxurious gold head wrap and shirt, topped with a detailed paisley vest and jewelry. He arrives with many trinkets such as statues, incense, coins, etc. to decorate the inside of his cabinet with.
    Activation Options
    The machine can be programmed to accept coins, tokens, or bills of any currency. Alternatively, the machine can be programmed with a push button for free play. Upon activation, Zoltar begins to move his eyes back and forth, his mouth reacts to each syllable as he speaks your fortune, and then the machine dispenses a printed fortune.
    Attract Messages
    Attract messages entice passerbys to approach and play the machine. The machine comes with four attract messages. The machine can be programmed to play an attract message every two or three minutes (or more). For an extra charge, a motion sensor can be installed to trigger the attract messages.
    Zoltar in Different Languages
    Zoltar audio messages are available in English, Spanish or French, free of charge. Audio messages can be created in different languages for an extra cost. Printed fortune cards are available in English, Spanish, French, Greek, and Turkish. Custom fortune cards printed in any other language are available for an extra cost.
    Fortune Cards Included
    Unit includes 2,000 cards/tickets featuring 37 various fortunes.
    Dimensions & Weight
    77”H x 24” W x 24”D
    Approximately 220 lbs
    Length (in.): 24
    Width (in.): 24
    Height (in.): 77
    Weight (lbs.): 220", imgUrl:"https://3702250.app.netsuite.com/core/media/media.nl?id=22657110&c=3702250&h=b9fc4fb0b9309eb3875f")

    Item.create(
        
        name: "ANTIQUE~QUEEN VICTORIA CORONATION CHAIR", 
        price:5000, 
        product_description:"ANTIQUE~QUEEN VICTORIA CORONATION CHAIR. This is a Rare, Original, Hand-carved, Coronation Hall Chair that
        was designed complete with Appropriate Insignia exclusively for the Queen Victoria Coronation with year 1837-1897 
        carved in the back below the crown.  It is designed to represent a replica of the Historical Coronation chair by making the
        space beneath the seat that for centuries since 1296, a Stone of Scone was taken to England and placed under the
         coronation chair. This Solid Oak Chair has claw feet. 
        What a chair...the gentleman that it was purchased from was from England and during a term of sale at the Castle..he 
        was a lucky Buyer and he traveled to USA with the chair in tow until he came upon Antique Store in Victorville, California
        many years later. It is in great condition.", 
        imgUrl:"https://i.ebayimg.com/images/g/sSYAAOSwJr5hkHeV/s-l64.jpg")

    Item.create(
        
        name: "NAPOLEON BONAPARTE 1769- VERY RARE ANTIQUE STIPPLE ENGRAVING -BARTOLOZZI 1802", 
        price:1309620, 
        product_description:"VERY RARE  NAPOLEON  BONAPARTE 1769-1821
        ANTIQUE MONOCHROME STIPPLE ENGRAVING OF NAPOLEON 1802
        PRINTED ON BASE OF ENGRAVING:
        A. Appiani pinx            F. Bartolozzi R.A. Sculpt.
        N. BONAPARTE.
        London, Published as the Act directs June 10 1802, by G. Bartolozzi, No 82, Wells Street, Oxford Street.
        OVERALL SIZE 645 X 54CM APPROX. ENGRAVING IN EXCELLENT CONDITION. OLD FRAME HAS SOME DAMAGE. MOUNT AND BASE OF ENGRAVING HAVE SOME FOXING AND MARKS. REMAINS OF OLD FRAMING LABEL VERSO.
        EVEN THE BACKING I BELIEVE IS STILL ORIGINAL AS IT IS MADE OF WOOD
        ", 
        imgUrl:"https://i.ebayimg.com/images/g/hl4AAOSweldhJOx-/s-l64.jpg")

    Item.create(
        
        name: "Gordon Highlanders Antique 1892 Sterling Silver Scottish Dirk ID'd Charles Monro", 
        price:1350000, 
        product_description:"Gordon Highlanders Antique 1892 Sterling Silver Scottish Dirk ID'd Charles Monro
        Used
        I am very pleased to offer this Antique Late 19th Century Sterling Silver & Leather Scottish Gordon Highlanders Dirk!
        This piece is absolutely stunning, and the craftsmanship is second to none!  The piece is engraved by the maker on the blade: T.A. Lyon 50, Leith St. Edinburgh.
        The Hilt of the dirk, as well as the small fork & knife, appear to be intricately carved wood (likely bog or ebony) and are decorated with sterling nails.  The hilts are also adorned with beautiful sterling silver thistle pommels with large set Cairngorm stones.
        The blade measures a little bit over 12inchs in length, and has a peculiar double-edged tip and jimping down 2/3rds of the back edge.
        The scabbard was crafted from beautiful dark leather and is lavishly decorated with bands of embossed thistle sterling, and a battle memoriam near the hilt with the Sphinx marked Egypt 92.  The piece is also engraved LT. Charles Monro 2nd Batt.  The backside sterling bands have the Edinburgh Sterling Hallmarks.
        The Dirk had belonged to a Charles Gordon Monro, who was born in 1872 and was educated in Harrow.  He entered the 2nd Battalion of the Gordon Highlanders in 1892 as a second lieutenant.  In 1896 he was promoted to Lieutenant, and he served in India and Africa. 
        During the epic battle at Elandslaagte of the Second Boer War (Oct. 21st, 1899), Lt. Monro and 3 other officers of the Highlanders met their fate in a mix of gunfire, boulders, artillery, and hand-to-hand combat.
        This antique Dirk is Legendary!
        Unique and wonderful display piece for any collection!
        Measures approx. 17-1/2inches Total Length
        Condition:
        This antique dirk is in very good condition for its age (well over 100 years old!!). The sterling shows very little tarnish and some mild scratching. The leather scabbard shows some loose spots near the inserts for the small knife and fork, however it remains sturdy. The blade still has a light sharpness, and shows wear from use (possibly battle worn!)",
        imgUrl:"https://i.ebayimg.com/images/g/kwcAAOSwOithbZkg/s-l64.jpg")

    Item.create(
        
        name: "Antique hand carved Chinese foo dog lion shishi guardian jade statue", 
        price:625000, 
        product_description:"This magnificent, totally hand carved Chinese Foo Dog Lion ShiShi statue is absolutely gorgeous. Jade symbolizes purity, serenity and attracts good luck. This intricately designed piece is a very high quality and was handmade with superior craftsmanship. This massive statue weighs 3,200grams or 7lbs 1oz and is 9.0inches long, 6.0inches tall and has a width of 4.0inches. This exceptional Chinese Foo Dog Lion was handcrafted from jade, which was a popular material for carving small animal figures in the late 19th early 20th century and was much appreciated by the famous Russian jeweler Carl Fabergé. This terrific foo dog was hand carved by a fine Chinese master, this piece is smartly detailed and has a smooth polished surface. The lion was passionately carved from a single piece of wonderful glowing semi-translucent stone, that is cold to the touch. This gorgeous Foo Dog Lion is a true handmade work of art, it would make a great addition to any collection.", 
        imgUrl:"https://i.ebayimg.com/images/g/3KMAAOSwsFdfrb3n/s-l64.jpg")

    Item.create(
        
        name: "ANTIQUE 19thC FRENCH SILVER GILT MUSIC SNUFF BOX c.1810", 
        price:509744, 
        product_description:"Antique 19th Century French very rare silver gilt musical snuff box, of traditional form, the base and the cover with panels of peaked-pattern engine turning within stamped sable boarders, the same pattern is repeated along the sides. Comes with its original key and works by sliding the left button to the right.
        A musical snuff box would have sat at a lady's dressing table, or played to amuse one's guests when ordering snuff, for its makers, it also served as a show of skill, the idea was to show the craftsmanship of both the goldsmith and maker of musical instruments - the practise having florished in Geneva and Paris in the late 18th Century.
        Hallmarked French Silver (800 standard), Paris, Guarantee mark 'Moyenne', year 1808-1819, Maker's mark Unknown to me.
        CONDITION
        In Great Condition - No Damage.
        SIZE
        Length: 8.7cm
        Width: 5.4 x 2.5cm
        Weight: 253g", 
        imgUrl:"https://i.ebayimg.com/images/g/7~wAAOSwPOhabxK3/s-l64.jpg")

    Item.create(
        
        name: "Antique Imperial Russian gild silver,Malachite Easter Egg by Julius Rappoport", 
        price:650000, 
        product_description:"I am pleased to offer from my private collection this very rare antique Imperial Russian presentation gild silver and Malachite Easter Egg by Julius Rappoport ,St.Petersburg,c1896.
        Made by Faberge's head workmaster Julius Rappoport.
        Hallmarked with his initials hallmark I.P.; with old St.Petersburg city assay office 84 silver hallmark;with Imperial warant eagle hallmark and Faberge hallmark in Russian.
        The natural hand carved Malachite egg is free standing on three double headed eagles.Decorated with the cypher of Tsar Nicholas II.
        Excellent condition with normal signs of the age.
        48mm high.
        64g heavy.
        It comes with an APPRAISAL CERTIFICATE FOR $7000", 
        imgUrl:"https://i.ebayimg.com/images/g/Hv0AAOSwSShhi7G2/s-l64.jpg")

    Item.create(
        
        name: "ANTIQUE OSCAR BLUEMNER FINE ART HARLEM RIVER NY 2nd AV RR BRIDGE AMERICAN MODERN", 
        price:839999, 
        product_description:"An artwork by American artist Oscar F. Bluemner (1867 - 1938) of Harlem River, New York City, June 18, 1910, of the 2nd Avenue  Railroad  Bridge, signed OFB lower right.  Colored pencil, pencil, and crayon measuring approximately 4 3/4 x 7 inches in a later frame behind glass measuring approximately 15 x 18 inches. Brilliant colors and fine condition as pictured. Thanks for looking.
        OSCAR FLORIANUS BLUEMNER (18671938) Oscar Bluemner, known for his expressive use of color and Cubist influenced works, was born in 1867 in Hanover, Germany. After studying architecture and design in Berlin, Bluemner left Germany in 1892, moving to Chicago, where he was employed as a draftsman for the Worlds Columbian Exposition. He settled in New York in 1901, and his successful design for New Yorks Bronx Borough Courthouse in 1904 gave him recognition as an architect and designer. Disillusioned with public commissions, he spent the next few years designing private houses. Committed to his theories of color, he turned away from architecture to devote his life to painting. In 1913 Bluemner exhibited in the Armory Show and gained the support ofAlfred Stieglitz, who in 1915 gave the artist a one-man exhibition at his 291 gallery and published Bluemners work inCamera Work. As a color theorist, Bluemner was interested in how pure color carried emotional and psychological impact. Up until the 1920s, his oil paintings, typically showing blocky buildings and abstract landscape motifs, reveal the influence his architectural studies as well as that of Cubism and American Synchronism, which emphasized the abstract use of color. However, Bluemner was concerned with simplifying reality rather than employing pure abstraction. Intent on creating dramatic and emotional works, Bluemner used bold colors in daring combinations and forms to evoke mood. During the 1920s he was a master of both oil painting and watercolor, a medium that satisfied his interest in varying levels and effects of color saturation achieved through washes of pigment. In his later works, Bluemner expanded his earlier repertoire of architectural and landscape motifs to focus on natural forces and phenomena, emphasizing the forces of nature, for example, in a series of symbolic images of the sun and the moon. No matter what the subject matter, Bluemner always insisted on the primacy of color as a source of power and energy in his images. In the 1930s, he was employed by the WPA Federal Project, painting rhythmic and evocative compositions inspired by music and Freuds theories of the unconscious. Highly regarded early in his career, his self-aggrandizing and difficult personality led to his estrangement from the mainstream art world, though his work was included in important exhibitions such as Abstract Painting in American Art held at the Whitney Museum of American Art in 1935. Nevertheless, feeling unappreciated and depressed, Bluemner took his own life in 1938. Source: The Phillips Collection", 
        imgUrl:"https://i.ebayimg.com/images/g/yBAAAOSw~tJd8quI/s-l64.jpg")

    Item.create(
        
        name: "ANTIQUE 19thC GEORGIAN SOLID SILVER FOX STIRRUP CUP, REILY & STORER c.1832", 
        price:509744, 
        product_description:"Antique 19th Century Georgian solid silver stirrup cup, of very unusual design, the cup is cone shape, resting on twisted vines and mounted with a model of a fox, the top boarder depicting hunting dogs in a country landscape chasing a fox, large vacant cartouche, the base rests inside a fox fur coaster. Stirrup cups are extremely rare and sought and this is undoubtedly the most unusual example. Hallmarked English silver (925 standard), London, year 1832 (r), Maker's mark CR GS for Charles Reily & George Storer.
        CONDITION
        In Excellent Condition - No Damage.
        SIZE
        Height: 22cm
        Width: 23 x 12cm
        Weight: 535g", 
        imgUrl:"https://i.ebayimg.com/images/g/pFcAAOSw9ClcbuQT/s-l64.jpg")

    Item.create(
        
        name: "ANTIQUE 20thC IMPERIAL RUSSIAN SOLID SILVER & ENAMEL SUGAR BOWL & TONGS c.1910", 
        price:509744, 
        product_description:"Antique early 20th Century Imperial Russian solid silver-gilt and cloisonne' enamel sugar bowl and tongs, particularly large size and fine quality, richly gilt and beautifully enamelled with multicoloured stylised design on stippled ground and applied with stylised scroll handles. The sugar bowl is hallmarked Russian silver 84 (875 standard), Moscow, 1908-1917, Maker's mark in Cyrillic G.S (Grigoriy Sbitnev), sugar tongs by Ivan Zaharov. The bowl also bearing later Soviet marks, was part of the Mazzoleni Collection, Milan.
        CONDITION
        In Great Condition - No Damage.
        SUGAR BOWL
        Height: 7cm
        Width: 18 x 12cm
        Weight: 220g
        TONGS
        Length: 12.5cm
        Width: 3cm
        Weight: 55g", 
        imgUrl:"https://i.ebayimg.com/images/g/vqcAAOSwkAxcMNsD/s-l500.jpg")

puts "✅ Done seeding!"

