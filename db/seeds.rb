# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Makerspace.destroy_all
Equipment.destroy_all
Project.destroy_all

makerspaces = [
  {
    "name": "KC Robot Lab",
    "location": "SHANGHAI",
    "address": "408-410 Bldg 4 3337 Hongmei Lu, near Huaguang Lu",
    "phone_number": "021-152 5195 0152",
    "description": "In just one year, KC Robot Lab has managed to amass over a hundred students, and offers courses in robotics, coding, laser cutting and 3D printing. Students from five to 16 years old learn the ins and outs of electronics, programming, engineering and more in the lab’s close-knit classrooms of no more than six students. The weekly classes are 1.5 hours per session, and though primarily taught in Mandarin, English-speaking tutors are available. Call to schedule a free trial class.",
    "latitude": 31.19613,
    "longtitude": 121.39124,
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/fd48cbf76dabf4384d3a/makerspace_KC%20Robot%20Lab.jpg"
  },
  {
    "name": "MOOCXING",
    "location": "SHANGHAI",
    "address": "14C Bldg 5 251 Caoxi Lu, near Longcao Lu",
    "phone_number": "021-400 873 7505",
    "description": "MOOCXING has been around since 2013 and focuses on robotics and programming for children seven to 18 years old. Students can learn coding languages like Python and C++, as well as gain experience working with 3D printers and robots. Class sizes are generally small and taught in Mandarin, though it’s possible to set up one-on-one classes in English depending on tutor availability. Call for price information or to schedule a 200RMB trial course.",
    "latitude": 31.3051,
    "longtitude": 121.52642,
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/19ed2fc0cbead32af825/makerspace_MOOCXING.jpg"
  },
  {
    "name": "Join-in Youth Creative Lab",
    "location": "SHANGHAI",
    "address": "1806 2669 Xietu Lu, near Tianyaoqiao Lu",
    "phone_number": "021-400 093 5090",
    "description": "Join-in works with children between three to 12 years old. Students can learn to program robots and other gadgets here. Class sizes are small, with around three to six students each, and one-on-one tutoring available. Weekly courses range from one to three hours depending on the student’s age and classes are taught in Chinese with English-speaking tutors subject to availability. Classes are around 9,600 per year. Call to set up a free trial.",
    "latitude": 31.1922,
    "longtitude": 121.44872,
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/a35b0f0881776a788359/makerspace_Join-in%20Youth%20Creative%20Lab.jpg"
  },
  {
    "name": "GAIA Space Center",
    "location": "SHANGHAI",
    "address": "147-149 Area 3 168 Shangnan Lu, near Guozhan Lu",
    "phone_number": "021-5041 1077",
    "description": "This makerspace’s classes are divided into three categories: ‘Baby Science’, basic science for three year olds; ‘Hands-on Science’, general science classes for children four to 12 years old and ‘Programming’, basic robot programming courses for children seven to 12 years old. GAIA also hosts birthday parties, weekend activities and summer/winter camps. The weekly bilingual classes come in a 48-week package, last one-and-a-half hours each and are generally around 14 students per class. Call for price details or to schedule a free trial class.",
    "latitude": 31.18852,
    "longtitude": 121.49965,
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/c76f57dc394dcc102645/makerspace_GAIA%20Space%20Center.jpg"
  },
  {
    "name": "XMaker Innovation Center",
    "location": "CHENGDU",
    "address": "Tongzilin South 6, Fangcaodi, block 7 unit 1 626",
    "phone_number": "028-69332553",
    "description": "Maker Innovation Center is running by makers from intel-swjtu makercenter, West Makerspace and XMaker School.\n This is an open lab for local diyer/maker/hacker/engineer/researcher.\n We are running a \"codes to things\" course project to help people to learn how to fabricate things.",
    "latitude": 30.6189,
    "longtitude": 104.07139,
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/338608036c80c08976f5/makerspace_XMaker%20Innovation%20Center.jpg"
  },
  {
    "name": "SWJTU Makerspace",
    "location": "CHENGDU",
    "address": "4/F, block C, 144 Jiaoda Road, Jinniu District",
    "phone_number": "028-87601498",
    "description": "The SWJTU Makerspace is the first university makerspace in western China. It focuses on the industries regarding mechanical and electrical information, robotics, the Internet of Things, intelligent hardware, artificial intelligence and energy conservation.",
    "latitude": 30.69809,
    "longtitude": 104.03139,
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/ded975da3c1bde269f3b/makerspace_SWJTU%20Makerspace.jpg"
  },
  {
    "name": "STEM Edu",
    "location": "CHENGDU",
    "address": "万瑞中心C座19楼 Wanrui Center, block C, 19th floor",
    "phone_number": "4001798315",
    "description": "This program is made for the young minds to create incubation center in their schools, colleges, institutes for long term learning.",
    "latitude": 30.62161,
    "longtitude": 104.07797,
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/97963c5accd46adeaac0/makerspace_STEM%20Edu.jpg"
  },
  {
    "name": "Chai Huo X.factory",
    "location": "SHENZHEN",
    "address": "Dashierlu, wankeyun community, nanshang zone",
    "phone_number": "0755-8671703",
    "description": "Chaihuo Maker Space was created and sponsored by Seeed Studio. As the first maker space in Shenzhen, Chaihuo has gathered a lot of DIY enthusiasts and entreprenuers, including SZDIY, the Android-loving group. IOS Party, Microsoft Club, SZHAM and Amateur Radio Group.",
    "latitude": 22.54613,
    "longtitude": 113.99932,
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/da234e89760bf0881bb3/makerspace_Chai%20Huo%20X.factory.jpg"
  }
]

Makerspace.create(makerspaces)
puts 'Finish creating makerspace'

equipments = [
  {
    "name": "Impulse Sealer",
    "description": "Equipment that can be used to create water-tight seals on TPU Nylon fabric and similar materials",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/98bd1ba15a7ddab5a64f/equipment_image1.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/c2e879ce0bec2befeee3/equipment_vid_Manual%20Impulse%20Sealer.mp4",
    "author": "Blue Heeler's Model & Toy Steam Engine Room"
  },
  {
    "name": "Shear Press, Brake and Slip Roll",
    "description": "Used to bend, cut, curve, etc. sheet metal",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/0d6e5b1106b5a6c68558/equipment_image2.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/051ada306b6ca7afa53b/equipment_vid_3%20in%201%20Shear%2C%20Press%20brake%20Slip%20Roll.mp4",
    "author": "Technopack Corporation"
  },
  {
    "name": "StrataSys 3D Printers",
    "description": "Prints out modeled parts designs from STL files",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/8c00b6e2557a8e913394/equipment_image3.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/8820227564ec10549c84/equipment_vid_Stratasys%203D%20Printers.mp4",
    "author": "Cimquest"
  },
  {
    "name": "Photo Booth",
    "description": "Can be set up to take pictures of student projects at various stages",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/10515611d5044a8785ac/equipment_image4.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/516879fa51a083d3d68b/equipment_vid_Photo%20booth.mp4",
    "author": "Mark Draper"
  },
  {
    "name": "Sewing Machine",
    "description": "Industrial grade sewing machine capable of sewing through tough materials",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/d702e68fa116d613301a/equipment_image5.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/8d3b7fe1244283be468a/equipment_vid_sewing%20machine.mp4",
    "author": "GoldStarTool"
  },
  {
    "name": "Drill Press",
    "description": "Makes holes through all types of wood and some thin sheets of metal",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/e2b57a060df5607fa9b1/equipment_image6.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/0541cf0ac60a3f77504d/equipment_vid_Drill%20Press.mp4",
    "author": "WoodWorkWeb"
  },
  {
    "name": "Power Drills",
    "description": "Hand drills which can also be used for securing and undoing screws",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/6a04d5202a1fe13c2de4/equipment_image7.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/491aa6a343c3dc8e6331/equipment_vid_Power%20drill.mp4",
    "author": "April Wilkerson"
  },
  {
    "name": "AC/DC Power Supplies",
    "description": "Energy sources for DC voltages and currents",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/886e48c732dbc4e6804b/equipment_image8.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/58bb0bd86567999412d2/equipment_vid_Power%20Supply.mp4",
    "author": "SparkFun Electronics"
  },
  {
    "name": "Oscilloscopes",
    "description": "Observe waveforms created by electrical signals",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/f64d6c09d3e507bd3d72/equipment_image10.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/577c2af7f8e1680a4734/equipment_vid_Oscilloscope.mp4",
    "author": "SparkFun Electronics"
  },
  {
    "name": "Soldering Iron",
    "description": "For basic solder work",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/576982b908ae34babc25/equipment_image11.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/91d1cba62491478f6f8a/equipment_vid_Soldering%20Iron.mp4",
    "author": "Ellie Jay"
  },
  {
    "name": "Function Generators",
    "description": "Generates common electrical waveforms over a range of frequencies",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/3f041f92e916e0b3ef19/equipment_image12.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/aee2332c892b3caef678/equipment_vid_Function%20Generator.mp4",
    "author": "Afrotechmods"
  },
  {
    "name": "Helping Arms",
    "description": "Facilitates work with small components. E.g. mini circuit boards",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/e955cb6f6ebc4f423a29/equipment_image13.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/ad9c2b3a9c5277127a6d/equipment_vid_Helping%20Hands.mp4",
    "author": "Banggood video"
  },
  {
    "name": "Heat Gun",
    "description": "Provides heat for warming thermoplastics, activating adhesives, shrinking heat sensitive tubing, etc",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/704a2af95d1c18d6c79f/equipment_image14.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/04355a389a8b1d9e453b/equipment_vid_Heat%20Gun.mp4",
    "author": "Flat Rate Master"
  },
  {
    "name": "Hot Wire Foam Cutter",
    "description": "Can be used to cut out shapes from foam\n\n",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/0fb8a9f209600bd3e9f8/equipment_image15.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/508495a236773ec64dbe/equipment_vid_Hot%20wire%20foam%20cutter.mp4",
    "author": "Dave's Model Workshop"
  },
  {
    "name": "Bandsaw",
    "description": "Used for cutting wood and plastic",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/dbe92b4ced3678545673/equipment_image20.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/d0134794cb23c681dde7/equipment_vid_Bandsaw.mp4",
    "author": "Howcast"
  },
  {
    "name": "Electronics Kits",
    "description": "Contain commonly used circuit building components and measuring instruments",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/5d1fad8706359ecb3297/equipment_image19.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/c7b6814b049aa9823ae2/equipment_vid_Electronics%20kits.mp4",
    "author": "Make it mech"
  },
  {
    "name": "Vinyl Cutter",
    "description": "Used for cutting the selection of vinyls provided in the makerspace",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/985ce0dba791b1aabbc4/equipment_8275.jpg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/0ff932e690eec2954930/equipment_vid_Vinyl%20Cutter.mp4",
    "author": "SHS Tech Ed How To"
  },
  {
    "name": "Pressure Chamber",
    "description": "Equipment used to push air bubble out of different materials. This allows users to create high quality prototypes.",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/659ca869bc9a6e08d4ad/equipment_2264.jpg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/9e440ec9930a8b8a7180/equipment_vid_Pressure%20Chamber.mp4",
    "author": "Hapcoweb"
  },
  {
    "name": "Vacuum Former",
    "description": "Equipment used for making molds and forms out of thick, durable thermoplastics",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/6cacf33e4aeea57dfccb/equipment_3984.jpg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/91f0b8db7f354d74bd86/equipment_vid_Vacuum%20Former.mp4",
    "author": "Formech"
  },
  {
    "name": "Vacuum Chamber",
    "description": "Used for the first stage of removing air out of a material, prior to using the pressure chamber.",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/18d34bdff3ec52e71924/equipment_0508.jpg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/2ab1d64cf796930495df/equipment_vid_Vacuum%20Chamber.mp4",
    "author": "Jim Overton - Jimson's Stuff"
  },
  {
    "name": "Hand Tools",
    "description": "Spanners, Screw Drivers, Tape Measure, Clamps, etc.",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/22554300af8673220d0d/equipment_image18.jpeg",
    "video_url": "http://lc-bchaxov0.cn-n1.lcfile.com/35456b9ce1389ae0fbd0/equipment_vid_Hand%20Tools.mp4",
    "author": "Safetycare"
  }
]

Equipment.create(equipments)
puts 'Finish creating equipments'

projects = [
  {
    "name": "Hero’s Helmet",
    "level": "BEGINNER",
    "category": "Arts & Crafts",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/4053e87ad9ccead8f3c5/Hero%20Helmet.jpg",
    "tagline": "No knight would be ready for battle without a helmet.",
    "description": "No knight would be ready for battle without a helmet. Make your own protective headgear, complete with a visor, faceguard, and feather plume. Or, if knights are too old-fashioned, whip up a superhero mask or racing helmet.",
    "preparation_time": "2 Hours",
    "video_url": ""
  },
  {
    "name": "Dome Den",
    "level": "INTERMEDIATE",
    "category": "Arts & Crafts",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/675474c84fa55a4e4b80/Dome%20Den.jpg",
    "tagline": "Hide away in the special dome-shaped den.",
    "description": "Have hours of fun playing outdoors or just relax and hide away in this special dome-shaped den. Once you've built your den, you can be as creative as you like when you decorate it. Paint the tiles in bold colors to make striking patterns, or even turn your den into a space base, woodland hideout, or igloo!",
    "preparation_time": "2 Days",
    "video_url": ""
  },
  {
    "name": "IoT Telegraph",
    "level": "ADVANCED",
    "category": "Programming",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/c454c404a84cc1d0adaa/Iot%20Telegraph.jpg",
    "tagline": "Make a Morse code device to send top-secret messages.",
    "description": "Make a Morse code device to send top-secret messages. Take the simplicity of a physical Morse key, add a Raspberry Pi — an inexpensive web-connectable board that fits in a project box — to connect to the Internet and start sending messages. You’ll solder and hook up a sensor, so get ready for a great challenge!",
    "preparation_time": "3-8 Hours",
    "video_url": ""
  },
  {
    "name": "Cardboard Prototypes",
    "level": "BEGINNER",
    "category": "Arts & Crafts",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/b8d255a9855664bf1694/Cardboard%20Prototype.jpg",
    "tagline": "Build a cardboard prototype for a Spider-Man-themed box",
    "description": "Learn how to build a cardboard prototype for a Spider-Man-themed box. It’s fun to figure out the fixes and challenges for creating simple items with cardboard instead of using 3D printing or other expensive and time-consuming processes. What will you use your box for? We’ve created one to hold our Post-It notes, but you could build a prototype box for your IoT Telegraph that will send secret Spider-Man messages. (Or you could just use it to hold Post-It notes.)",
    "preparation_time": "15 Minutes",
    "video_url": ""
  },
  {
    "name": "Secret Light Up Ring",
    "level": "INTERMEDIATE",
    "category": "Electronics",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/48def6d49817cbb99ec8/LED%20Ring.png",
    "tagline": "Discover electromagnets in everyday life with this inductive LED ring!",
    "description": "Discover electromagnets in everyday life with this inductive LED ring!",
    "preparation_time": "1 Day",
    "video_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/275ed16caedebc97d767/How%20To%20Make%20an%20Inductive%20LED%20Ring.mp4"
  },
  {
    "name": "Sew LED Torch",
    "level": "BEGINNER",
    "category": "Textile",
    "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/d970e5b297e18d09f1c5/Sew%20LED%20Torch.png",
    "tagline": "Lights up after bedtime  with this Textile LED Torch Light.",
    "description": "Lights up after bedtime  with this Textile LED Torch Light.",
    "preparation_time": "2 Hours",
    "video_url": ""
  },
  {
    "name": "Wired Up Stiationery",
    "level": "BEGINNER",
    "category": "Electronics",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/27465491ea0076a23ccc/Wired%20Up%20Stationery%20-%20Main%20Page.jpg",
    "tagline": "Learn how to wire up simple circuits, with stationery.",
    "description": "Learn how to wire up simple circuits, with stationery.",
    "preparation_time": "2 Hours",
    "video_url": ""
  },
  {
    "name": "Penny-Powered Flashlight",
    "level": "BEGINNER",
    "category": "Electronics",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/701e7cf1566b4f539629/Penny%20Powered%20Flashlight.jpeg",
    "tagline": "Power a flashlight with pennies so you can signal Spider-Man when you’re in need!",
    "description": "Power a flashlight with pennies so you can signal Spider-Man when you’re in need! No store-bought batteries necessary. Build the flashlight with an LED and a few other household supplies, and make your own power source with coins and cardboard.\n",
    "preparation_time": "30 Minutes",
    "video_url": ""
  },
  {
    "name": "Colorful Comic Kaleidoscope",
    "level": "BEGINNER",
    "category": "Arts & Crafts",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/9ad2be16748c56765ba4/Colorful%20Comic%20Kaleidoscope.png",
    "tagline": "Make a built-in illumination kalaidoscope.",
    "description": "Make a kaleidoscope to bathe a black and white Spider-Man comic in colorful light. Ordinary kaleidoscopes need ambient light to work: you view it by pointing it toward a light source. This one has built-in illumination so you can hold it right up against a printed page. The special RGB LED has a color-changing feature that continuously cycles through a rainbow of colors, making viewing black and white comics a trippy treat!",
    "preparation_time": "2 Hours",
    "video_url": ""
  },
  {
    "name": "Dazzling Kaleidoscope",
    "level": "BEGINNER",
    "category": "Arts & Crafts",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/e35d3b573fdca298fa3a/Dazzling%20Kaleidoscope.jpg",
    "tagline": "See the world through your own colorful kaleidoscope.",
    "description": "A cardboard tube from a roll of paper towels is the perfect size for your kaleidoscope. Inside the tube, you need three reflective surfaces—this can be made from a plastic document folder. However, if you can find it, mirrored paper also works well. When your kaleidoscope is finished, look through it and point it toward a lamp or out of the window. But remember to never point the tube directly at the sun, because you could damage your eyes.",
    "preparation_time": "30 Minutes",
    "video_url": ""
  },
  {
    "name": "Lemon Battery",
    "level": "BEGINNER",
    "category": "Electronics",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/160c9d1d7ae880e9f5ce/Lemon%20Battery.jpg",
    "tagline": "Did you know that you can make a battery using lemons?",
    "description": "Did you know that you can make a battery using lemons? With just five lemons, some coins, screws, and copper wire, you can make an electric current flow around a circuit with enough energy to illuminate a small lamp called a light emitting diode (LED). Now just imagine what you could power with one hundred lemons!",
    "preparation_time": "15 Minutes",
    "video_url": ""
  },
  {
    "name": "Glowing Pinwheel",
    "level": "ADVANCED",
    "category": "Arts & Crafts",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/0b561e387e36147be217/Glowing%20Pinwheel.jpg",
    "tagline": "A DIY pinwheel is fun anytime, but this one creates great patterns of spinning, sparkling light.",
    "description": "A DIY pinwheel is fun anytime, but this one creates great patterns of spinning, sparkling light.",
    "preparation_time": "30 Minutes",
    "video_url": ""
  },
  {
    "name": "Make it Sing",
    "level": "ADVANCED",
    "category": "Arts & Crafts",
    "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/477da028a8d562e8d2ae/Make%20It%20Sing.jpg",
    "tagline": "An interactive drawing that plays music when you touch it.",
    "description": "As a starter project, let’s make an interactive drawing that plays music when you touch it. Using a Makey Makey board and Scratch programming environment, you’ll explore and experiment with conductive and non-conductive materials and learn to code a simple computer program.",
    "preparation_time": "30 Minutes",
    "video_url": ""
  },
  {
    "name": "Metal Flower",
    "level": "ADVANCED ",
    "category": "Metalshop",
    "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/87069ba20c475ca30b2c/Metal%20Flower.jpg",
    "tagline": "Metal Flower that last forever.",
    "description": "Recycle leftover metal sheet into different types of flowers like Rose, Tulip or Daisy and give it to your mum or girlfriends. ",
    "preparation_time": "30 Minutes"
  },
  {
    "name": "Woodern Boomerang",
    "level": "ADVANCED ",
    "category": "Woodshop",
    "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/c8fa3fe9538492aeaad9/Woodern%20Boomerang.jpg",
    "tagline": "Homemake Boomerang from used furniture.",
    "description": "Throw away furntiure reycled for a Homemake Boomerang and play with your friends or pets. ",
    "preparation_time": "30 Minutes"
  }
]

project_steps = [
  [
    {
      "title": "STEP 1",
      "description": "To make the frame, cut out two long strips of cardboard. Wrap one horizontally around your balloon stand at mouth height. Bend the other strip over the top, angling it toward the back slightly.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/e555789746abc1cbf8e9/Hero%20Helmet%20Step%201.jpg"
    },
    {
      "title": "STEP 2",
      "description": "Stick the two strips together on either side of the join, using strong tape. Repeat on the other side.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/740fab1224219bf035f6/Hero%20Helmet%20Step%202.jpg"
    },
    {
      "title": "STEP 3",
      "description": "Now bring the ends of the horizontal strip together, at the front of the balloon stand. Overlap the edges slightly and tape them together.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/d7ce5a7b1e840c2a8dca/Hero%20Helmet%20Step%203.jpg"
    },
    {
      "title": "STEP 4",
      "description": "Trim the ends off the vertical strip, so they are level with the horizontal strip. Add extra tape on the inside to strengthen the joins.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/602695d949ab99963236/Hero%20Helmet%20Step%204.jpg"
    },
    {
      "title": "STEP 5",
      "description": "To fill in the hole at the back of the helmet, cut out three cardboard rectangles. Position one of your rectangles centrally and secure it with strong tape.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/218f16fdf80ba7306b1e/Hero%20Helmet%20Step%205.jpg"
    },
    {
      "title": "STEP 6",
      "description": "Tape the other two rectangles on either side of the piece you attached in step 5, to cover the gaps.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/74bd9b59e97af5684fff/Hero%20Helmet%20Step%206.jpg"
    },
    {
      "title": "STEP 7",
      "description": "To make the visor, draw a stretched semicircle shape on a piece of cardboard and then cut the shape out.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/4beed2dee36986db11f7/Hero%20Helmet%20Step%207.jpg"
    },
    {
      "title": "STEP 8",
      "description": "Bend the visor into a curved shape and tape the ends to either side of your helmet. Tape it on the inside too, to strengthen it.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/07e91fe8cd708ffe7e4f/Hero%20Helmet%20Step%208.jpg"
    },
    {
      "title": "STEP 9",
      "description": "Use the template to draw half of the faceguard on a piece of cardboard. Flip the template to draw the other half, then cut it out.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/ad6ceeafca00663a5fdb/Hero%20Helmet%20Step%209.jpg"
    },
    {
      "title": "STEP 10",
      "description": "Fold the faceguard in half from point to point, then bend it into a curved shape on either side of the fold.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/436c6b0693dacb3dd383/Hero%20Helmet%20Step%2010.jpg"
    },
    {
      "title": "STEP 11",
      "description": "With the folded edge pointing outward, attach the ends of the faceguard to either side of the helmet, using strong tape.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/74b1f4b6e45f68091463/Hero%20Helmet%20Step%2011.jpg"
    },
    {
      "title": "STEP 12",
      "description": "Now make the plume. Lay your helmet on its side on a piece of cardboard and use it as a guide to draw the plume. Then cut out the shape.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/9da92ba288c6eb4c468e/Hero%20Helmet%20Step%2012.jpg"
    },
    {
      "title": "STEP 13",
      "description": "To attach the plume to the helmet, cut out two cardboard rectangles. Fold the pieces in half to create tabs, then tape them to the plume.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/6d3a087728130a054ef8/Hero%20Helmet%20Step%2013.jpg"
    },
    {
      "title": "STEP 14",
      "description": "Position the plume against the back of the helmet and tape the tabs down.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/bfd8c19a2ba34c7510cd/Hero%20Helmet%20Step%2014.jpg"
    },
    {
      "title": "STEP 15",
      "description": "Your knight’s helmet is now ready to decorate. Use gray or silver paint to create a metal effect. Paint the plume in any color you want.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/e392022d07d73e97ed55/Hero%20Helmet%20Step%2015.jpg"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "Lay your triangle 1 template on cardboard. Extend side A to 12 1/4 in (31 cm) on side B to 10 3/4 in (27.3 cm). Add a third line to complete the triangle, and cut the piece out.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/854a139feac45c9070bf/Dome%20Den%20Step%201.jpg"
    },
    {
      "title": "STEP 2",
      "description": "Lay the triangle on cardboard and draw around it to make an identical triangle.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/24853c84ff546b96923e/Dome%20Den%20Step%202.jpg"
    },
    {
      "title": "STEP 3",
      "description": "Make a 1 1/2 in (4 cm) cardboard strip and draw around it to add 1 1/2 in (4 cm) tab outlines to all three sides of the triangle.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/7688787f60d7f8284163/Dome%20Den%20Step%203.jpg"
    },
    {
      "title": "STEP 4",
      "description": "Cut out around the tab outlines of the triangle. This triangle will be used for your first triangle 1 tile.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/7f8759fd19b55a3b414c/Dome%20Den%20Step%204.jpg"
    },
    {
      "title": "STEP 5",
      "description": "Use your triangle 1 template to mark a straight line across the corners of the triangle. Cut along these lines. Repeat steps 2-5 to make 30 triangle 1 tiles.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/0a556ee30bdc7bc9e76d/Dome%20Den%20Step%205.jpg"
    },
    {
      "title": "STEP 6",
      "description": "Now, lay the triangle 2 template on cardboard. Extend both sides to 12 1/4 in (31 cm) and join them up. Then, cut out the triangle and use it to repeat step 2.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/16d1efa3277ffa47d74c/Dome%20Den%20Step%206.jpg"
    },
    {
      "title": "STEP 7",
      "description": "Use the cardboard strip from step 3 to add tabs to the triangle, then cut off the corners. Repeat steps 6-7 to make nine triangle 2 tiles.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/a32a1ec1b8948eb2518c/Dome%20Den%20Step%207.jpg"
    },
    {
      "title": "STEP 8",
      "description": "To make your square tiles, draw a square on cardboard with lines that are 12 1/4 in (31 cm) long.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/df50a40575154b2956b1/Dome%20Den%20Step%208.jpg"
    },
    {
      "title": "STEP 9",
      "description": "Use the strip from step 3 to add tabs to the square. Use the triangle 1 template to mark and cut the corners. Then cut off the bottom tab. Repeat steps 8-9 to make nine square tiles.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/6db5c9d146ffc89ac448/Dome%20Den%20Step%209.jpg"
    },
    {
      "title": "STEP 10",
      "description": "Score along the tab lines of all three sets of tiles. Then fold along the score lines to finish making the tabs.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/0e1343ca5f2ee4d7be71/Dome%20Den%20Step%2010.jpg"
    },
    {
      "title": "STEP 11",
      "description": "Arrange five triangle 1 tiles into a pentagon shape, so the tabs on the shorter sides meet. Use strong tape to fix the first two together.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/1e6d483c36f90fd990fb/Dome%20Den%20Step%2011.jpg"
    },
    {
      "title": "STEP 12",
      "description": "Secure the other edges in the same way. Then repeat step 11 to make five more pentagons out of the remaining 25 triangle 1 tiles.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/d07d445c23aa6612074e/Dome%20Den%20Step%2012.jpg"
    },
    {
      "title": "STEP 13",
      "description": "Now lay two pentagons next to each other, as shown, and a slot a triangle 2 tile in between them. Tape the tabs to connect the triangle to the pentagons.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/f0b19d272268e80ad5b6/Dome%20Den%20Step%2013.jpg"
    },
    {
      "title": "STEP 14",
      "description": "Repeat step 13 to attach three more pentagons to the two you’ve already connected. Once finished, you will have a single long curving piece. This is the roof section!",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/db3a54b52c4db7679245/Dome%20Den%20Step%2014.jpg"
    },
    {
      "title": "STEP 15",
      "description": "Stand the whole piece up and pull the ends towards each other to form a circular shape. Leave a gap at the front for the top of the door, so you can easily enter the den.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/5501129808252a8fc9b1/Dome%20Den%20Step%2015.jpg"
    },
    {
      "title": "STEP 16",
      "description": "Slot the five remaining triangle 2 tiles into the V-shaped spaces around the dome’s top edge. Line up the tabs and tape them together.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/2eaa5c0332967fa5f78f/Dome%20Den%20Step%2016.jpg"
    },
    {
      "title": "STEP 17",
      "description": "Place the remaining pentagon into the gap at the top of your dome. Tape the tabs together to complete the roof of the dome.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/06d48651e98a8f7d1554/Dome%20Den%20Step%2017.jpg"
    },
    {
      "title": "STEP 18",
      "description": "Now, make the wall of your dome. Start by taping the left-hand tab of one square tile to the right-hand tab of another square tile.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/3d9181240b0b79aace55/Dome%20Den%20Step%2018.jpg"
    },
    {
      "title": "STEP 19",
      "description": "Repeat step 18 to link all nine square tiles in a line. Stand the piece up and arrange it into a circle. You have now finished the wall.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/37b64866aeb88fc16a85/Dome%20Den%20Step%2019.jpg"
    },
    {
      "title": "STEP 20",
      "description": "Now pick up your domed roof and lower it onto the wall. Make sure the tabs on both sections line up where they meet.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/807bc39572e2986a95ea/Dome%20Den%20Step%2020.jpg"
    },
    {
      "title": "STEP 21",
      "description": "Tape the wall and roof section securely together with strong tape.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/65534e37e100d4c228a0/Dome%20Den%20Step%2021.jpg"
    },
    {
      "title": "STEP 22",
      "description": "It’s time to paint your dome den! Choose a bright selection of colors.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/0c894950a4cd2559bea7/Dome%20Den%20Step%2022.jpg"
    }
  ],
  [  
    {
      "title": "STEP 1",
      "description": "The simplest way to get the telegraph code set up on your Pi is to use the pre-packed disk image. Download and unzip the disk image. The disk image includes the Raspbian operating system, so it will take a few minutes to download. (For advanced options, or to install the telegraph client manually, check the instructions in the GitHub repository).",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/b27cc82771e079651f3e/Iot%20Telegraph%20Step%201.png"
    },
    {
      "title": "STEP 2",
      "description": "If you don’t already have a tool for burning disk images, Etcher is a good option. Insert a blank microSD card into your card reader. Launch Etcher, click “Select Image,” and select the Internet Telegraph disk image (internet-telegraph.img). Click “Select Drive” and select your microSD card (be careful with this one — you don’t want to write the image to your hard drive!). Click “Flash” and wait for Etcher to do its work. Eject the SD card and pull it out of your card reader, then put it back in. It should mount as a disk that’s accessible through your file manager.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/fd5a15cfb7b765a8bc05/Iot%20Telegraph%20Step%202.jpg"
    },
    {
      "title": "STEP 3",
      "description": "The telegraph can be run over Ethernet (using a micro USB to Ethernet adapter such as Adafruit #2992), or connected to a wireless network. To connect it to a wireless network, open /etc/wpa_supplicant/wpa_supplicant.conf from the SD card, and update the network info at the bottom of the file with your network’s SSID and Wi-Fi password. Open config.json in the root directory of your SD card. There are two configuration options you can set: The “channel” determines who else you’ll be communicating with. To send private Morse messages with your friends or relations, set this to an obscure series of words or string of characters that only you and your buddies know. The default channel is the “lobby.” Anyone with a telegraph who doesn’t change their channel will be in the lobby. By default, telegraph messages go through our server at morse.autodidacts.io. You can also grab the server code from GitHub and set up your own server either on the web or on your local network. If you’re running your own server, change the “server” value from morse.autodidacts.io to the URL or IP address of your server. Once you’ve saved the updated config, eject your SD card and pop it into the Pi Zero.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/56c02e7be84f9fdd6128/Iot%20Telegraph%20Step%203.png"
    },
    {
      "title": "STEP 4",
      "description": "The first step for connecting things to your Pi Zero is to solder on the GPIO pin header. Put the header in from the top, then flip the Pi over and solder a pin in at each end to hold the header in place. Solder the rest of the pins, taking care to avoid bridging the gaps between pins with any errant solder blobs. Check out Adafruit for a more detailed tutorial.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/4a8ce92cde6ad12167db/Iot%20Telegraph%20Step%204.jpg"
    },
    {
      "title": "STEP 5",
      "description": "Slip a couple of sections of heat-shrink tubing over the leads of one of the JST connectors, and then solder the leads onto the terminals of the arcade button. It doesn’t matter which wire goes to which terminal on the button. When you’re done, slide the heat-shrink tubing over the joint and shrink it on with your soldering iron. Solder the other JST lead onto the buzzer. This one is polarity-specific: Make sure you connect the black or dashed negative wire onto the longer pin.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/a0b56ab78e169fd1b0e2/Iot%20Telegraph%20Step%205.jpg"
    },
    {
      "title": "STEP 6",
      "description": "Get Outside the Box: We’ve used an iPhone box for the enclosure. This is a convenient approach, but it’s only one of many options for housing your telegraph. You could use clear acrylic, 3D print your enclosure, or even install the telegraph in a cottage cheese tub, like many of our early electronics experiments. Let your creativity, available materials, and aesthetic preferences lead the way.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/d4c68a0713a9631ce17c/Iot%20Telegraph%20Step%206.jpg"
    },
    {
      "title": "STEP 7",
      "description": "Plug the buzzer lead into GPIO pin 19 and ground, making sure the negative side is toward the edge of the Pi, and glue the buzzer down with a dot of hot glue to prevent it from knocking around in the box like a poltergeist. Cut a hole in the lid of the box, thread the arcade button’s wire through the hole, and screw on the fastener from below. Plug the button’s lead into GPIO pins 26 and ground. This one can be oriented either way.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/f19d4d8c56ea1008c2eb/Iot%20Telegraph%20Step%207.jpg"
    },
    {
      "title": "STEP 8",
      "description": "Plug in the USB power and wait about 30 seconds for the Pi to boot up. When the Pi is booted up and connected to the Morse server, it will beep out “ready” in Morse code ( .-. . .- -.. -.–).",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/dc4fdd90c2bc4e54965c/Iot%20Telegraph%20Step%208.jpg"
    },
    {
      "title": "STEP 9",
      "description": "To test your connection, push the button on your telegraph. If you hear a beep, your telegraph is talking to the server. All systems go! The standard Morse alphabet includes letters, numbers, and a variety of punctuation symbols. For a more complete set, as well as some tips on learning Morse, print out a copy of InternetTelegraph/Docs/translate-morse.pdf from the GitHub repo. You’ll want to have a notebook handy for transcribing incoming messages. Morse is made up of dots, dashes, and spaces (gaps). Each of these has a specific length in relation to the other symbols. Keeping these lengths in mind will help you send well-formed messages that are easy to decode, at whatever speed you’re punching them out. A dash is three times as long as a dot. Gaps between symbols within a letter are as long as one dot. Gaps between letters are three dots long, and gaps between words are seven times as long as a dot. Once you (and any other telegraph operators on your channel) are ready to go, it’s time to send a message! We suggest something short and sweet, like “hi.” In Morse, that’s four dots, a space, and then two dots: dit-dit-dit-dit dit-dit. (As it happens, “hi” was also the output sample that came just before the first ever use of “hello world” in a 1972 programming tutorial by Brian Kernighan. We’re sticking with historical precedent here.) Try going very slowly at first, and sending simple messages. You might want to jot down the Morse as it comes in, and then decode it after the transmission. The same works for sending: write out the Morse first, and then key it into the telegraph.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/4bf7be253c355b9f6ce1/Iot%20Telegraph%20Step%209.png"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "Lay out all of your materials, plug in your hot glue gun, and sharpen your pencils!",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/58fcd1c7ea8c81e17c10/Cardboard%20Prototype%20Step%201.jpg"
    },
    {
      "title": "STEP 2",
      "description": "Choose an item to make a box for. We chose a stack of Post-It notes because it was nice and square. After looking at your item, do a quick sketch on of what you want your box to look like.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/859125a9e98792d070b3/Cardboard%20Prototype%20Step%202.jpg"
    },
    {
      "title": "STEP 3",
      "description": "Place the object onto your cardboard and trace its footprint. Add a little bit of space around each side to make sure the object will fit inside after you fold up the sides (Step 4).",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/ccf671740f0eabb65b88/Cardboard%20Prototype%20Step%203.jpg"
    },
    {
      "title": "STEP 4",
      "description": "Draw walls for each side of the box based on your sketch. Then, cut out the whole thing!",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/63e04e74398a15a53a70/Cardboard%20Prototype%20Step%204.jpg"
    },
    {
      "title": "STEP 5",
      "description": "Fold up the sides and that’s it! Your box prototype is complete!",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/dbb9dd4ff1acb78b488e/Cardboard%20Prototype%20Step%205.jpg"
    },
    {
      "title": "STEP 6",
      "description": "Put your item into your prototype. How does it fit? Too loose or too tight? If it’s not quite right, add or subtract space around the traced foot print in Step 3 and repeat the process until your object fits! Once you have the right fit, you can take the cardboard dimensions and use them to design your final box using different materials. Or hot glue the sides of your cardboard box and use it as is.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/dbeb434853e3305ad13a/Cardboard%20Prototype%20Step%206.jpg"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "Make your coil.Wrap the wire in a circle 15 -30 times making sure that it will that will fit in the mold. Tuck the wire into your mold to keep it from unraveling.",
      "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/4957c60c176d4a76fa5c/LED%20Ring%20Step%201.png"
    },
    {
      "title": "STEP 2",
      "description": "Trim your LED legs so they comfortably fit in the mold, and solder one LED leg to one free end of the wire, and repeat with ends.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/2e36d7f6aa86e7e5d004/LED%20Ring%20Step%202.png"
    },
    {
      "title": "STEP 3",
      "description": "Now is a good time to test your LED to make sure everything is working as expected. Test using a Adafruit chi pad, or any wireless charging pad, or a phone with NFC. These all contain a primary induction coil. Hold the coil and LED assembly over the charger (primary coil). The LED should light up. The LED requires that current flow in a specific direction (it has a polarity) , so if the LED does not light up, flip it over to reverse the polarity and align it with the primary coil. ",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/0411ef71512ccf2a66f5/LED%20Ring%20Step%203.png"
    },
    {
      "title": "STEP 4",
      "description": "Prepare your resin according to the included instructions. This is the time to add glitter or color into your resin. Pour resin into your mold, making sure to get around the wires and tapping gently as needed so there are no air bubbles in the cast.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/45f7f55b5df7623e9fab/LED%20Ring%20Step%204.png"
    },
    {
      "title": "STEP 5",
      "description": "Let your resin cure as directed. Once fully cured, clean up with sandpaper.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/d58e40f71581b464f26d/LED%20Ring%20Step%205.png"
    },
    {
      "title": "STEP 6",
      "description": "Check out your ring!",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/b421007e3dfece252b29/LED%20Ring%20Step%206.png"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "Sew the pressure switch at the center of the felt and it should be about 15 stiches. ",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/619868818d433195c46f/Sew%20LED%20Torch%20-%20Step%201.jpg"
    },
    {
      "title": "STEP 2",
      "description": "Sew the two LED Lights at the both center on the left and the eight side of the felt and start stiches to secure both positive and negative leg to the felt. Make sure that none of the legs are in contact after the stiches are completed, it should be about 7 stiches per leg. At the same time connect one side of the LED Positive Leg to the other LED Negative Leg. ",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/2ed258b36815bc8f1f37/Sew%20LED%20Torch%20-%20Step%202.jpg"
    },
    {
      "title": "STEP 3",
      "description": "Sew and join both the felt for the pressure switch and the LED Lights.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/ecff53b1d6a1e05785c1/Sew%20LED%20Torch%20-%20Step%203.jpg"
    },
    {
      "title": "STEP 4",
      "description": "Sew up and encase the two 3V batteries. ",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/e385aeaa82a06796397b/Sew%20LED%20Torch%20-%20Step%204.jpg"
    },
    {
      "title": "STEP 5",
      "description": "Stack five layers of small frame-like sqaures felt with centered holes all aligned. ",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/4aeb31005febb55d5c4c/Sew%20LED%20Torch%20-%20Step%205.jpg"
    },
    {
      "title": "STEP 6",
      "description": "Sew the other 3 open sides of the pressure switch felt and LED felt, together with the small frame-like sqaures felt. ",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/8757f5774093427c163b/Sew%20LED%20Torch%20-%20Step%206.jpg"
    },
    {
      "title": "STEP 7",
      "description": "Place the two batteries in series within the battries pouch with a double 3V batteries terminals and connect the positive side of the terminals to the positive leg of one LED and the negative side of the terminals to the other negative leg of the other LED. Remember that earlier in 2nd Step, we already connected the LED in series. ",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/ac1fd624d5974f39d96d/Sew%20LED%20Torch%20-%20Step%207.jpg"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "The power source for your Scrappy Circuits.\n\nClip a binder clip to one side of a rectangle of cardboard (a “brick”).\nFlip one binder clip arm down and trim the opposite side of the cardboard slightly longer than the extended arm. Place the battery on top of the clip arm with the smooth, positive (+) side down and clip a second binder clip over the battery. Label each clip positive (+) or negative (–) based on which side of the battery it touches. This makes lighting the LED easier later.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/bec442a68cedc9745ae2/Wired%20Up%20Stationery%20-%20Step%201%20Battery-Brick.jpg"
    },
    {
      "title": "STEP 2",
      "description": "Of the Core Bricks, this is the only load, or item that consumes electricity.\n\nStretch the legs of the LED apart. Clip a binder clip around the longer LED leg and the cardboard. Label this side (+). Clip the opposite leg and label it (–).",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/89da6d83dd230d2e61dd/Wired%20Up%20Stationery%20-%20Step%202%20LED-Brick.jpg"
    },
    {
      "title": "STEP 3",
      "description": "It operates just like a toggle light switch.\n\nClip two binder clips to opposite sides of a brick. Flip one arm flat against the brick. It should not touch the other binder clip. If it does, cut a larger brick.\nWhen you flip the opposite arm down, it completes the circuit (turns on). When you lift the arm, it turns the circuit off. ",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/8b7767915bca4d354bce/Wired%20Up%20Stationery%20-%20Step%203%20Binder%20Clip%20Switch.jpg"
    },
    {
      "title": "STEP 4",
      "description": "Momentary switches turn on when pushed down. When released, they turn off again.\n\nClip one binder clip to a cardboard brick. Lower the upper arm. Lay a paper clip perpendicular over the binder clip arm. Use a second binder clip to hold the paper clip in place. After it is clipped, bend the paper clip up slightly so it’s not touching the other arm. Push the paper clip down to close the switch and turn your LED on. ",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/0d832d960305726286ca/Wired%20Up%20Stationery%20-%20Step%204%20Push%20Switch.jpg"
    },
    {
      "title": "STEP 5",
      "description": "A creative use of the tea light cylinder body.\n\nUse glue stick to attach aluminum foil to each side of a cardboard brick. Be sure the two pieces do not touch in the center. Add binder clips to each end.\nGlue foil to 50%–75% of the inside and outside of the lower edge of the cylinder. Poke a hole through the cardboard. Insert a straightened paper clip through the cylinder and the hole.\nBend the paper clip to capture the cylinder. Tape it down or cut off excess. Spin to turn on or off. When the foil on the cylinder touches both pieces on the cardboard, the circuit will turn on. When it touches just one side, it will be off.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/240d9ed4fb48266ab3e9/Wired%20Up%20Stationery%20-%20Step%205%20Dial%20Switch.jpg"
    },
    {
      "title": "STEP 6",
      "description": "Your bricks can be connected with alligator clips or with Scrappy Clips. To make a Scrappy Clip, cut 6″–10″ of aluminum foil. Fold it in half a few times and then roll it tight. Hook each end through the one-hoop end of a small paper clip. Squeeze the connection tight with pliers.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/90100cd59062cbde8c12/Wired%20Up%20Stationery%20-%20Step%206%20Scrappy%20Clips.jpg"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "\nGather seven pennies that were made in 1983 or later. You can tell when a penny was made by looking at the date on the front of it. Pennies made in 1983 and later have zinc in them, which is what we need for this project.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/395d08d25d47cc54836f/Penny%20Powered%20Flashlight%20-%20Step%201.jpeg"
    },
    {
      "title": "STEP 2",
      "description": "Put on your safety glasses and sand one side of each penny until it has a silver-looking finish. That’s the zinc! It could take a while to sand away the copper (brown finish), but the zinc is under there.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/4e81c913b6278fa1fe2c/Penny%20Powered%20Flashlight%20-%20Step%202.jpeg"
    },
    {
      "title": "STEP 3",
      "description": "Place a penny on a piece of cardboard and trace around it six different times. Pour vinegar into the cup. Cut out the six cardboard circles and put them into the cup of vinegar. Once they are completely saturated with vinegar, take the cardboard circles out and use a paper towel to wipe off the excess vinegar.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/395d08d25d47cc54836f/Penny%20Powered%20Flashlight%20-%20Step%201.jpeg"
    },
    {
      "title": "STEP 4",
      "description": "Now let’s build the battery. Cut a piece of duct tape about 1/2″ wide and 5″ long. Lay it flat on a surface — sticky side up. Place 1 sanded penny — zinc (silvery) side up — in the middle of the tape.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/47a4feba6486c01fe676/Penny%20Powered%20Flashlight%20-%20Step%204.jpeg"
    },
    {
      "title": "STEP 5",
      "description": "Place a cardboard circle on top of the penny. Place another penny — zinc side up — on top of the cardboard circle. Continue to do this until you’ve placed all pennies and cardboard circles in one stack. A penny with the zinc side facing up should be at the top of the stack.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/aade6f6ec3c786b8c1f0/Penny%20Powered%20Flashlight%20-%20Step%205.jpeg"
    },
    {
      "title": "STEP 6",
      "description": "Bring one end of the duct tape up along the side of the stack, wrap it across the top, and then down along the other side to where it meets the other half. Wrap the second half of duct tape in the same way over the first, affixing it across the bottom of the stack and cutting off any excess tape. The other two sides of the stack should remain open so we can attach the LED. Take the LED and bend the wires, or leads, so the positive (+) lead — the longer one — can touch the zinc of the penny on the top of the stack. Bend the negative (–) lead — the shorter one — so it can touch the bottom penny’s copper (brown) side. It should light up",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/2a374aea64901e177619/Penny%20Powered%20Flashlight%20-%20Step%206.jpeg"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "Cut 6-1/2″ from a paper towel tube — this will be the body of the kaleidoscope. Cut three strips of black ABS, 1-1/4″ wide and 6-1/2″ long. Arrange the three strips in a triangular shape, shiny sides facing in, and insert it into the tube. The three shiny surfaces make a great first-surface mirror!",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/9dddc22e850c61903498/Colorful%20Comic%20Kaleidoscope%20Step%201.jpg"
    },
    {
      "title": "STEP 2",
      "description": "Cut a 1-1/2″-diameter disc out of ABS. Drill or grind a 3/4″ hole in the center. Drill three small holes near the edge and thread the LED’s legs through. Bend the legs to ensure the LED will shine inside of the mirrors when the disc is in place. Attach the switch to the disc, across from the LED, using super glue.\n\nSolder the LED’s flat-side lead to ground of a 3V button cell battery holder and solder the other leg to one of the contacts on the switch. Solder the other switch contact to the positive on the battery. Insert the battery into the holder, then flip the switch to turn on the LED and watch it cycle through its colors!",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/ae68f349f8cc15468a07/Colorful%20Comic%20Kaleidoscope%20Step%202.jpg"
    },
    {
      "title": "STEP 3",
      "description": "Make a small hole for the switch on the side of the tube. Position the disc, LED side down, on top and slip the battery into the space between an ABS strip and the tube. Slide the switch through the hole. If needed, cover the back and side of the LED with a small piece of black electrical tape to shade your eye from glare.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/37dc3b241073e7a483dc/Colorful%20Comic%20Kaleidoscope%20Step%203.jpg"
    },
    {
      "title": "STEP 4",
      "description": "Cut out a 1-3/4-diameter circle of foam and tape it to the tube on top of the ABS disc. Slide the scope directly over your favorite comics and flip the switch to watch the colors go — cool! Scan to see the Colorful Comic Kaleidoscope in action!",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/5b6d135034040fc45643/Colorful%20Comic%20Kaleidoscope%20Step%204.jpg"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "Stand the cardboard tube upright on one of the pieces of colored paper, and draw around the end of the tube. Put the tube to one side, and draw six tabs around the outside edge of the drawn circle. Cut out the circle with the tabs.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/10c9cc64e077a0b8f43d/Dazzling%20Kaleidoscope%20Step%201.jpg"
    },
    {
      "title": "STEP 2",
      "description": "Place the circle over one end of the tube. Stick down the tabs with tape. Make a hole in the center of the circle with the pencil point. Measure the tube’s length and the diameter (width) of the circle.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/7516fa94930d91257bff/Dazzling%20Kaleidoscope%20Step%202.jpg"
    },
    {
      "title": "STEP 3",
      "description": "On the plastic folder, draw a rectangle . as long as the tube and two and a half times as wide as the tube’s diameter. Draw lines to divide the rectangle into three equal parts. Draw a narrow tab on one side.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/7da6c54ce8976daec2e9/Dazzling%20Kaleidoscope%20Step%203.jpg"
    },
    {
      "title": "STEP 4",
      "description": "Cut out the rectangle, then score along the three inside lines with the scissors, using the edge of the ruler. Fold along the scored lines to make a triangular prism. Stick down the tab with tape",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/d53b3be5df79e286d48a/Dazzling%20Kaleidoscope%20Step%204.jpg"
    },
    {
      "title": "STEP 5",
      "description": "Insert your prism into the cardboard tube, so that it rests against the paper circle at the end. It should fit snugly, but if not, use small pieces of tape to secure it in place.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/c8034a51695efeac8f54/Dazzling%20Kaleidoscope%20Step%205.jpg"
    },
    {
      "title": "STEP 6",
      "description": "Place plastic wrap loosely over the open end of the tube, and stick it in place with tape. Now put some colored beads on top of the plastic wrap",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/05d71b1e939c300b1bef/Dazzling%20Kaleidoscope%20Step%206.jpg"
    },
    {
      "title": "STEP 7",
      "description": "Cut a circle of wax paper, wider than the tube. Place it over the beads, then cut slits in the edge of the paper and tape it to the tube.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/b76a5c148d11138cf085/Dazzling%20Kaleidoscope%20Step%207.jpg"
    },
    {
      "title": "STEP 8",
      "description": "Decorate the tube, if you like. Now look through the hole in the paper circle. Point the tube toward a window or light and turn it around. Enjoy the show!",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/42cdda353e2cd2974a33/Dazzling%20Kaleidoscope%20Step%208.jpg"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "With an adult’s help, use the knife to make a cut in a lemon, about 1/2in (1cm) from the center, and roughly 3/4in (2cm) deep. Now push a coin firmly into the slit you have created. Do the same with the other four lemons. About 1/2 in (1 cm) from the center of the first lemon—on the other side to the coin—insert a galvanized screw. Twist it in, clockwise, to secure it in the lemon’s flesh. Now repeat with the other four lemons, then arrange the lemons in a circle.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/26eb63a0d7e984b7d3a0/Lemon%20Battery%20Step%201.jpg"
    },
    {
      "title": "STEP 2",
      "description": "Squeeze the clip on one wire so that it opens, like a crocodile’s jaws. Place it around the screw in one lemon, so it grips it. Connect the other clip to the coin in another lemon.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/9d7abe3f8ce2646ce408/Lemon%20Battery%20Step%202.jpg"
    },
    {
      "title": "STEP 3",
      "description": "Connect all the lemons—coin to screw—as in step 3. For the last lemon, attach a wire to its coin, but don’t connect it to the screw in your first lemon. Instead, attach another wire to that screw.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/d22d47b8a3e8c3da9aa1/Lemon%20Battery%20Step%203.jpg"
    },
    {
      "title": "STEP 4",
      "description": "Each LED has two legs, which are slightly different lengths. With the free end of the wire that is attached to the coin, fix the clip to the slightly longer leg of the LED.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/180af8188cdee50bb5dc/Lemon%20Battery%20Step%204.jpg"
    },
    {
      "title": "STEP 5",
      "description": "Now connect the clip of the other free wire that is connected to the screw to the other, shorter leg of the LED. This now completes the circuit to make the LED light up.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/17b138afd4d26c99219a/Lemon%20Battery%20Step%205.jpg"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "If your paper is decorated, flip it over to work on the plain side.\n\nWith the pencil and ruler, draw two diagonal lines from corner to corner. Then measure three inches from each corner and mark that point on each line. Using scissors, cut along each diagonal line down to each mark. Going clockwise, label each pinwheel section lightly with a pencil as A, B, C, and D, as shown. You can erase the letters later.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/2ffd7b8847d5da82f5fc/Glowing%20Pinwheel%20Step%201.png"
    },
    {
      "title": "STEP 2",
      "description": "Place a line of copper tape from the outside edge of section A to the outside edge of section D. Bend the tape in the center of the pinwheel, since the tape needs to be in one piece. Snip at the end. Repeat by placing a second line of copper tape along the outside edges of sections B and C. Don’t let the two lines of tape touch in the center of the pinwheel.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/fbdeafd30a35efc7dda2/Glowing%20Pinwheel%20Step%202.jpg"
    },
    {
      "title": "STEP 3",
      "description": "Using scissors, cut three scraps of cardstock, each about 1/4″ x 1/2″. These serve as “bridges” to keep crossing copper lines from touching (which would short out the circuit).\n\nUsing the hot-glue gun, glue one cardstock bridge on the D line near the center of the pinwheel, and glue a second cardstock bridge on the B line near the center of the pinwheel, as shown. (It’s okay to glue on top of the copper tape.) The bridges should completely cover the copper tape lines.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/8ab22a0e5cc7fd28b197/Glowing%20Pinwheel%20Step%203.jpg"
    },
    {
      "title": "STEP 4",
      "description": "Place two more lines of copper tape; each should be about 1/4″ apart from the previous lines. Starting in section D, place one line of copper tape next to and along the inside edge of the previous line of tape, then continue over line D’s cardstock bridge and into section C, continuing to the edge of the pinwheel. Make sure the copper tape goes over the cardstock bridge and doesn’t touch the previous lines.\n\nRepeat with another line of copper tape and the remaining two sections. Starting in section B, place a line of copper tape next to and along the inside edge of the previous line of tape, continue over line B’s cardstock bridge, and go into section A to the edge of the pinwheel.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/26902749c63e19fe827e/Glowing%20Pinwheel%20Step%204.jpg"
    },
    {
      "title": "STEP 5",
      "description": "Using scissors, cut a piece of copper tape 8″ long. Lay about 2″ of it across the center of the pinwheel, so that it lays right on top of the negative (-) lead in section A and connects to the negative (-) lead in section B (the negative leads are the lines running under the bridges). With the remaining 6″ of copper tape, fold it over on itself to make a 3″ tab. Remember to stick the copper tape down tight to make a good connection.\n\nUsing the hot-glue gun, glue the third cardstock bridge at the base of the 3″ tab so that the bridge also covers the adjacent section of the negative (-) lead near the base of section C, as shown. The bridge must cover both the tab and the negative (-) lead.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/e3ca43840f56da4f6489/Glowing%20Pinwheel%20Step%205.jpg"
    },
    {
      "title": "STEP 6",
      "description": "Using scissors, cut a piece of copper tape 8″ long. Lay about 2″ of it across the center of the pinwheel, so that it lays right on top of the negative (-) lead in section A and connects to the negative (-) lead in section B (the negative leads are the lines running under the bridges). With the remaining 6″ of copper tape, fold it over on itself to make a 3″ tab. Remember to stick the copper tape down tight to make a good connection.\n\nUsing the hot-glue gun, glue the third cardstock bridge at the base of the 3″ tab so that the bridge also covers the adjacent section of the negative (-) lead near the base of section C, as shown. The bridge must cover both the tab and the negative (-) lead.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/cd700519aefcaf187190/Glowing%20Pinwheel%20Step%206.jpg"
    },
    {
      "title": "STEP 7",
      "description": "Using scissors, cut a piece of cardstock about 1″ x 3″ and fold it in half. Trace the battery on each side, marking one circle with a plus (+) sign and the other with a minus (-) sign, as shown. Using transparent tape, tape a neodymium magnet into the center of each circle (make sure the magnets attract!). The magnets will keep the battery in place, but allow you to remove it whenever you want.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/1d5bda91f90c5e4f4e93/Glowing%20Pinwheel%20Step%207.jpg"
    },
    {
      "title": "STEP 8",
      "description": "Set the battery holder in the center of the pinwheel, negative (-) side down. Fold the copper tab from the negative (-) lead onto the negative (-) side of the battery holder, as shown (trim the tab as needed). Secure the tab with a small piece of copper tape. Then use transparent tape to secure the negative (-) side of the battery holder to the pinwheel.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/ed4f7724e6269eb09cc8/Glowing%20Pinwheel%20Step%208.jpg"
    },
    {
      "title": "STEP 9",
      "description": "Using scissors, cut three cardstock circles, each about 1″ in diameter. Using transparent tape, tape the third magnet to one circle, stick the pin of the pin clasp through the second (save the pin back), and leave the third plain.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/04aa80a7848849b12bff/Glowing%20Pinwheel%20Step%209.jpg"
    },
    {
      "title": "STEP 10",
      "description": "Test the circle with the magnet to make sure the magnet attracts to the battery holder by placing the magnet side to the outside of the holder. If it doesn’t attract, reverse the battery on the circle. Then gently bend each unused corner of the pinwheel toward the center of the pinwheel, and with the hot-glue gun, glue each corner to the back of the circle with the magnet. Once the glue is dry, glue the plain circle on top to hide the assembly. Once done, the magnets will hold the pinwheel together, while still allowing access to the battery.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/9f969440228c4696a968/Glowing%20Pinwheel%20Step%2010.jpg"
    },
    {
      "title": "STEP 11",
      "description": "Once the pinwheel is assembled, place one circuit-sticker LED on each pinwheel blade so it connects the two copper-tape leads. The pointy, negative (-) side of each sticker goes on the outside edge of each blade; the fat, positive (+) side of each sticker goes on the inner line of copper tape.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/ceb954315957d520f07d/Glowing%20Pinwheel%20Step%2011.jpg"
    },
    {
      "title": "STEP 12",
      "description": "Finally, using the hot-glue gun, glue the circle with the pin to the back of the pinwheel in the center. Poke the pin through the straw, and secure it with the pin back.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/a74f55391d2e85cf10f3/Glowing%20Pinwheel%20Step%2012.jpg"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "Insert a piece of paper into the clipboard.\n\nUse a pencil to draw a star or other solid shape on the paper.\n\nDraw a thick, dark line from the shape to the paper’s edge.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/edf74aaf977043ab7c2e/Make%20It%20Sing%20Step%201.jpg"
    },
    {
      "title": "STEP 2",
      "description": "Attach a wire from Earth on the MaKey MaKey to the metal clip on the clipboard.\n\nClip one of the wires from a MaKey MaKey port, such as the up arrow,to the end of the line you drew.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/f575ada90972f83b0b11/Make%20It%20Sing%20Step%202.jpg"
    },
    {
      "title": "STEP 3",
      "description": "Touch the metal clip with one hand, then touch the shape to hear the note play.\n\n* If the note doesn’t play, see the Troubleshooting Tips",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/ef89d9d1cedc1f0d7382/Make%20It%20Sing%20Step%203.jpg"
    },
    {
      "title": "STEP 4",
      "description": "Now draw more shapes so that you can attach each shape to one of the MaKey MaKey ports (the up, down, left, and right, arrows and Space).",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/0e7dbdb12937f74a597b/Make%20It%20Sing%20Step%204.jpg"
    },
    {
      "title": "STEP 5",
      "description": "Now you can play your musical drawing.",
      "photo_url": "http://lc-bchaxov0.cn-n1.lcfile.com/b1ba08cbfac5be52e950/Make%20It%20Sing%20Step%205.jpg"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "Gather your sheet metal and measure, mark, and cut out three or more squares of metal. The size of the squares are up to you but they should ascend in size by about 1-1/2 to 2 inches each square you create.",
      "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/db122262eb9365b9e899/Metal%20Flower%20Step%201.png"
    },
    {
      "title": "STEP 2",
      "description": "Use pinwheel to cut the circular pieces into flower petal shape and always based on four petal per square design. Ensure to then round off the edges of each petal, to avoid sharp edges. The goal is to have them look like actual flower petals so they do not all have to look exactly the same, a little difference between each petal will actually make the flower look more natural.",
      "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/5cec858e20cf3e2c77b2/Metal%20Flower%20Step%202.png"
    },
    {
      "title": "STEP 3",
      "description": "Flatten out the metal petal shape and fasten the metal together with spot welder or to use pop rivets and machine screws and nuts. ",
      "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/e85b85b4c7675e24959d/Metal%20Flower%20Step%203.png"
    },
    {
      "title": "STEP 4",
      "description": "By now the metal petals will all be attached together and and ensure you wear glove now and start to bend the metal into a flower using both nose pliers and slip joint pliers.  Repeat the step till it looks like a real flower",
      "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/ba2ba892e8cdf62273c5/Metal%20Flower%20Step%204.png"
    },
    {
      "title": "STEP 5",
      "description": "Paint the flower",
      "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/b92ca93edb9ae18e63d2/Metal%20Flower%20Step%205.png"
    }
  ],
  [
    {
      "title": "STEP 1",
      "description": "Cut out a Boomerang shape as per template to the maximum size that will fit on standard 8.5/11 paper, print, and cut out.",
      "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/74b0c76b9525d4c7b101/Woodern%20Boomerang%20Step%201.jpg"
    },
    {
      "title": "STEP 2",
      "description": "Use a sharpie/pencil to trace around the cutout onto the project panel.",
      "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/061126a806d5fe451084/Woodern%20Boomerang%20Step%202.jpg"
    },
    {
      "title": "STEP 3",
      "description": "Cut the rough outline of the boomerang out of the wood. This shape will be refined later, so don't worry if it isn't perfect at first. Begin filing on the edge that you have marked. Check the shape of the wing by viewing it from the wingtip. continue filing until it resembles the above images, and then repeat on each of the other wings.",
      "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/15dd27a1da8840bcf83d/Woodern%20Boomerang%20Step%203.jpg"
    },
    {
      "title": "STEP 4",
      "description": "Sand with the coarse, medium, and fine grits in that order before using linseed oil. Rub a generous coating of the oil into the whole boomerang and let dry. Multiple coats can be used so do as many as you want, but one should be sufficient.",
      "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/078dce60997b67569708/Woodern%20Boomerang%20Step%204.jpg"
    },
    {
      "title": "STEP 5",
      "description": "Ad a few layers of polyurethane to finish the boomerang. More than one layer should be used for added protection. If you want, paint or add designs with sharpie before finishing.",
      "photo_url": "http://lc-BChAXOV0.cn-n1.lcfile.com/4e17a0ea9e66783d25b3/Woodern%20Boomerang%20Step%205.jpg"
    }
  ]
]

materials = [
  [
    {
      "project_name": "Hero’s Helmet",
      "name": "Cardboard sheets"
    },
    {
      "project_name": "Hero’s Helmet",
      "name": "Strong tape"
    },
    {
      "project_name": "Hero’s Helmet",
      "name": "Scissors"
    },
    {
      "project_name": "Hero’s Helmet",
      "name": "Pencil"
    },
    {
      "project_name": "Hero’s Helmet",
      "name": "Paints"
    },
    {
      "project_name": "Hero’s Helmet",
      "name": "Paintbrushes"
    }
  ],
  [
    {
      "project_name": "Dome Den",
      "name": "Cardboard sheets"
    },
    {
      "project_name": "Dome Den",
      "name": "Ruler"
    },
    {
      "project_name": "Dome Den",
      "name": "Scissors"
    },
    {
      "project_name": "Dome Den",
      "name": "Pencil"
    },
    {
      "project_name": "Dome Den",
      "name": "Strong Tape"
    },
    {
      "project_name": "Dome Den",
      "name": "Paints"
    },
    {
      "project_name": "Dome Den",
      "name": "Paintbrushes"
    }
  ],
  [
    {
      "project_name": "IoT Telegraph",
      "name": "Raspberry Pi Zero W"
    },
    {
      "project_name": "IoT Telegraph",
      "name": "Arcade button switch"
    },
    {
      "project_name": "IoT Telegraph",
      "name": "Piezo buzzer"
    },
    {
      "project_name": "IoT Telegraph",
      "name": "Enclosure"
    },
    {
      "project_name": "IoT Telegraph",
      "name": "Soldering iron and solder"
    },
    {
      "project_name": "IoT Telegraph",
      "name": "Heat-shrink tubing"
    },
    {
      "project_name": "IoT Telegraph",
      "name": "JST connector leads, 12\" female 2-pin (2)"
    },
    {
      "project_name": "IoT Telegraph",
      "name": "MicroSD card reader"
    },
    {
      "project_name": "IoT Telegraph",
      "name": "Hot glue"
    }
  ],
  [
    {
      "project_name": "Cardboard Prototypes",
      "name": "Scrap cardboard"
    },
    {
      "project_name": "Cardboard Prototypes",
      "name": "Paper"
    },
    {
      "project_name": "Cardboard Prototypes",
      "name": "Pencil"
    },
    {
      "project_name": "Cardboard Prototypes",
      "name": "Ruler"
    },
    {
      "project_name": "Cardboard Prototypes",
      "name": "Box cutter or scissors"
    },
    {
      "project_name": "Cardboard Prototypes",
      "name": "Hot glue gun and glue"
    }
  ],
  [
    {
      "project_name": "Secret Light Up Ring",
      "name": "LED 3mm (1)"
    },
    {
      "project_name": "Secret Light Up Ring",
      "name": "Wrapping Wire, Coated, 30G, ( about 3 feet)"
    },
    {
      "project_name": "Secret Light Up Ring",
      "name": "Epoxy Resin"
    },
    {
      "project_name": "Secret Light Up Ring",
      "name": "Silicone Ring Mold (1)"
    },
    {
      "project_name": "Secret Light Up Ring",
      "name": "Soldering Iron/solder"
    },
    {
      "project_name": "Secret Light Up Ring",
      "name": "Wireless charger, Chi pad or phone with and NFC reader for testing the LED ring"
    }
  ],
  [
    {
      "project_name": "Sew LED Torch",
      "name": "Felt"
    },
    {
      "project_name": "Sew LED Torch",
      "name": "Needles"
    },
    {
      "project_name": "Sew LED Torch",
      "name": "Conductive thread"
    },
    {
      "project_name": "Sew LED Torch",
      "name": "Regular thread"
    },
    {
      "project_name": "Sew LED Torch",
      "name": "LilyPad sewable LEDs (see lilypadarduino.org or order directly from sparkfun.com/products/10899)"
    },
    {
      "project_name": "Sew LED Torch",
      "name": "LilyTiny"
    },
    {
      "project_name": "Sew LED Torch",
      "name": "LilyPad sewable battery holder"
    },
    {
      "project_name": "Sew LED Torch",
      "name": "Coin batteries, 3V (such as the CR2032)"
    },
    {
      "project_name": "Sew LED Torch",
      "name": "Alligator clips (optional)"
    }
  ],
  [
    {
      "project_name": "Wired Up Stationery",
      "name": "Scrappy Clips "
    },
    {
      "project_name": "Wired Up Stationery",
      "name": "Paper Clips"
    },
    {
      "project_name": "Wired Up Stationery",
      "name": "3V Coin Cell Battery"
    },
    {
      "project_name": "Wired Up Stationery",
      "name": "LED 3mm (1)"
    },
    {
      "project_name": "Wired Up Stationery",
      "name": "Aluminium Fold "
    },
    {
      "project_name": "Wired Up Stationery",
      "name": "Transparent Tape"
    }
  ],
  [
    {
      "project_name": "Penny-Powered Flashlight",
      "name": "7 pennies, made in 1983 or later"
    },
    {
      "project_name": "Penny-Powered Flashlight",
      "name": "Scrap cardboard, about 6\" square"
    },
    {
      "project_name": "Penny-Powered Flashlight",
      "name": "Paper towels"
    },
    {
      "project_name": "Penny-Powered Flashlight",
      "name": "Paper or plastic cup"
    },
    {
      "project_name": "Penny-Powered Flashlight",
      "name": "Vinegar"
    },
    {
      "project_name": "Penny-Powered Flashlight",
      "name": "Duct tape, 5\" piece"
    },
    {
      "project_name": "Penny-Powered Flashlight",
      "name": "LED, red"
    },
    {
      "project_name": "Penny-Powered Flashlight",
      "name": "Medium- or fine-grit sandpaper"
    },
    {
      "project_name": "Penny-Powered Flashlight",
      "name": "Scissors"
    },
    {
      "project_name": "Penny-Powered Flashlight",
      "name": "Pencil"
    },
    {
      "project_name": "Penny-Powered Flashlight",
      "name": "Safety glasses"
    }
  ],
  [
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Paper towel tube"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Scrap foam"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Black ABS plastic sheet, enough for three strips, about 6\" × 8\""
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Tricolor RGB LED"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "SPST switch"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Hook-up wire"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "CR2032 3V button cell battery"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Battery clip for button cell"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Compass"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Hobby knife"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Solder iron and solder"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "3/4\" and 1/16\" drill bit and drill"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Spider-Man comic"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Super glue"
    },
    {
      "project_name": "Colorful Comic Kaleidoscope",
      "name": "Electrical tape"
    }
  ],
  [
    {
      "project_name": "Dazzling Kaleidoscope",
      "name": "Pencil"
    },
    {
      "project_name": "Dazzling Kaleidoscope",
      "name": "Scissors"
    },
    {
      "project_name": "Dazzling Kaleidoscope",
      "name": "Masking tape"
    },
    {
      "project_name": "Dazzling Kaleidoscope",
      "name": "Colored beads"
    },
    {
      "project_name": "Dazzling Kaleidoscope",
      "name": "Colored paper"
    },
    {
      "project_name": "Dazzling Kaleidoscope",
      "name": "Cardboard tube"
    },
    {
      "project_name": "Dazzling Kaleidoscope",
      "name": "Clear plastic folder"
    },
    {
      "project_name": "Dazzling Kaleidoscope",
      "name": "Ruler"
    },
    {
      "project_name": "Dazzling Kaleidoscope",
      "name": "Plastic wrap"
    },
    {
      "project_name": "Dazzling Kaleidoscope",
      "name": "Wax paper"
    }
  ],
  [
    {
      "project_name": "Lemon Battery",
      "name": "5 lemons"
    },
    {
      "project_name": "Lemon Battery",
      "name": "6 short electrical wires with clips at each end"
    },
    {
      "project_name": "Lemon Battery",
      "name": "5 copper coins"
    },
    {
      "project_name": "Lemon Battery",
      "name": "Sharp knife"
    },
    {
      "project_name": "Lemon Battery",
      "name": "5 galvanized screws"
    },
    {
      "project_name": "Lemon Battery",
      "name": "LEDs (at least one color)"
    }
  ],
  [
    {
      "project_name": "Glowing Pinwheel",
      "name": "One 6\" x 6\" square of origami paper, construction paper, or similar"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "Copper tape"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "Cardstock scraps"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "One 3V coin-cell battery (CR2032)"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "Transparent tape"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "Three small neodymium magnets"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "Pin clasp with back"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "Four circuit-sticker LEDs (your choice)"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "Sturdy plastic straw"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "Pencil"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "Ruler"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "Scissors"
    },
    {
      "project_name": "Glowing Pinwheel",
      "name": "Hot-glue gun and glue sticks"
    }
  ],
  [
    {
      "project_name": "Make it Sing",
      "name": "MaKey MaKey kits, which include a circuit board, alligator clips, and a USB cable, are available at makeymakey.com."
    },
    {
      "project_name": "Make it Sing",
      "name": "Computers with Scratch. You can use the online version of Scratch at scratch.mit.edu or download and install the offline editor from scratch.mit. edu/scratch2download."
    },
    {
      "project_name": "Make it Sing",
      "name": "Scratch piano project:scratch.mit.edu/makeypiano"
    },
    {
      "project_name": "Make it Sing",
      "name": "Clipboards with metal clips"
    },
    {
      "project_name": "Make it Sing",
      "name": "Pencils, #2 or softer (graphite, not color)"
    },
    {
      "project_name": "Make it Sing",
      "name": "Blank paper"
    },
    {
      "project_name": "Make it Sing",
      "name": "Conductive materials, such as bananas, apple slices, gum drops, or other moist foods; Play-Doh or other waterbed clays; aluminum foil, spoons, copper tape, or other metal objects"
    },
    {
      "project_name": "Make it Sing",
      "name": "Non-conductive materials, such as plastic, electrical tape, and cardboard"
    }
  ],
  [
    {
      "project_name": "Metal Flower ",
      "name": "Sheet Metal"
    },
    {
      "project_name": "Metal Flower ",
      "name": "Circular Object (Roll of Tape)"
    },
    {
      "project_name": "Metal Flower ",
      "name": "Pop Rivet"
    },
    {
      "project_name": "Metal Flower ",
      "name": "Paint"
    }
  ],
  [
    {
      "project_name": "Woodern Boomerang",
      "name": "Jigsaw "
    },
    {
      "project_name": "Woodern Boomerang",
      "name": "Files"
    },
    {
      "project_name": "Woodern Boomerang",
      "name": "Sandpaper"
    },
    {
      "project_name": "Woodern Boomerang",
      "name": "Scissors"
    },
    {
      "project_name": "Woodern Boomerang",
      "name": "Sharpie"
    },
    {
      "project_name": "Woodern Boomerang",
      "name": "1/4 inch Wood Piece"
    },
    {
      "project_name": "Woodern Boomerang",
      "name": "Linseed oil"
    },
    {
      "project_name": "Woodern Boomerang",
      "name": "Stain "
    },
    {
      "project_name": "Woodern Boomerang",
      "name": "Polyurethane"
    },
    {
      "project_name": "Woodern Boomerang",
      "name": "Shop Towels/Rags"
    }
  ]
]


projects.each_with_index { |project, index|
  new_project = Project.create(project)
  project_steps[index].each { |step|
    new_step = ProjectStep.new(step)
    new_step.project = new_project
    new_step.save
  }
  materials[index].each { |material| 
    new_material = Material.new(material)
    new_material.project = new_project
    new_material.save
  }
}
puts 'Finish creating projects'

puts 'Finish creating materials'

puts 'Finish creating steps'
