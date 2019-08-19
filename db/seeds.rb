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
    "location": "Shanghai",
    "address": "408-410 Bldg 4 3337 Hongmei Lu, near Huaguang Lu",
    "phone_number": "021-152 5195 0152",
    "description": "In just one year, KC Robot Lab has managed to amass over a hundred students, and offers courses in robotics, coding, laser cutting and 3D printing. Students from five to 16 years old learn the ins and outs of electronics, programming, engineering and more in the lab’s close-knit classrooms of no more than six students. The weekly classes are 1.5 hours per session, and though primarily taught in Mandarin, English-speaking tutors are available. Call to schedule a free trial class.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/1c53de2fffd74acc526c/makerspace_SWJTU%20Makerspace.jpg"
  },
  {
    "name": "MOOCXING",
    "location": "Shanghai",
    "address": "14C Bldg 5 251 Caoxi Lu, near Longcao Lu",
    "phone_number": "021-400 873 7505",
    "description": "MOOCXING has been around since 2013 and focuses on robotics and programming for children seven to 18 years old. Students can learn coding languages like Python and C++, as well as gain experience working with 3D printers and robots. Class sizes are generally small and taught in Mandarin, though it’s possible to set up one-on-one classes in English depending on tutor availability. Call for price information or to schedule a 200RMB trial course.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/1c53de2fffd74acc526c/makerspace_SWJTU%20Makerspace.jpg"
  },
  {
    "name": "Join-in Youth Creative Lab",
    "location": "SHANGHAI",
    "address": "1806 2669 Xietu Lu, near Tianyaoqiao Lu",
    "phone_number": "021-400 093 5090",
    "description": "Join-in works with children between three to 12 years old. Students can learn to program robots and other gadgets here. Class sizes are small, with around three to six students each, and one-on-one tutoring available. Weekly courses range from one to three hours depending on the student’s age and classes are taught in Chinese with English-speaking tutors subject to availability. Classes are around 9,600 per year. Call to set up a free trial.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/1c53de2fffd74acc526c/makerspace_SWJTU%20Makerspace.jpg"
  },
  {
    "name": "GAIA Space Center",
    "location": "SHANGHAI",
    "address": "147-149 Area 3 168 Shangnan Lu, near Guozhan Lu",
    "phone_number": "021-5041 1077",
    "description": "This makerspace’s classes are divided into three categories: ‘Baby Science’, basic science for three year olds; ‘Hands-on Science’, general science classes for children four to 12 years old and ‘Programming’, basic robot programming courses for children seven to 12 years old. GAIA also hosts birthday parties, weekend activities and summer/winter camps. The weekly bilingual classes come in a 48-week package, last one-and-a-half hours each and are generally around 14 students per class. Call for price details or to schedule a free trial class.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/1c53de2fffd74acc526c/makerspace_SWJTU%20Makerspace.jpg"
  },
  {
    "name": "XMaker Innovation Center",
    "location": "CHENGDU",
    "address": "Tongzilin South 6, Fangcaodi, block 7 unit 1 626",
    "phone_number": "WeChat ID: SWJTUyuhui",
    "description": "Maker Innovation Center is running by makers from intel-swjtu makercenter, West Makerspace and XMaker School.\n This is an open lab for local diyer/maker/hacker/engineer/researcher.\n We are running a \"codes to things\" course project to help people to learn how to fabricate things.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/1c53de2fffd74acc526c/makerspace_SWJTU%20Makerspace.jpg"
  },
  {
    "name": "SWJTU Makerspace",
    "location": "CHENGDU",
    "address": "4/F, block C, 144 Jiaoda Road, Jinniu District",
    "phone_number": "028-87601498",
    "description": "The SWJTU Makerspace is the first university makerspace in western China. It focuses on the industries regarding mechanical and electrical information, robotics, the Internet of Things, intelligent hardware, artificial intelligence and energy conservation.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/1c53de2fffd74acc526c/makerspace_SWJTU%20Makerspace.jpg"
  },
  {
    "name": "STEM Edu",
    "location": "CHENGDU",
    "address": "万瑞中心C座19楼 Wanrui Center, block C, 19th floor",
    "phone_number": "4001798315",
    "description": "This program is made for the young minds to create incubation center in their schools, colleges, institutes for long term learning.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/1c53de2fffd74acc526c/makerspace_SWJTU%20Makerspace.jpg"
  },
  {
    "name": "Chai Huo X.factory",
    "location": "SHENZHEN",
    "address": "Dashierlu, wankeyun community, nanshang zone",
    "phone_number": "0755-8671703",
    "description": "Chaihuo Maker Space was created and sponsored by Seeed Studio. As the first maker space in Shenzhen, Chaihuo has gathered a lot of DIY enthusiasts and entreprenuers, including SZDIY, the Android-loving group. IOS Party, Microsoft Club, SZHAM and Amateur Radio Group.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/1c53de2fffd74acc526c/makerspace_SWJTU%20Makerspace.jpg"
  }
]

Makerspace.create(makerspaces)

equipments = [
  {
    "name": "Impulse Sealer",
    "description": "Equipment that can be used to create water-tight seals on TPU Nylon fabric and similar materials",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/4ca1012647532ec62c59/equipment_image1.jpeg"
  },
  {
    "name": "Shear Press, Brake and Slip Roll",
    "description": "Used to bend, cut, curve, etc. sheet metal",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/b6acff7484b79e8b3f81/equipment_image2.jpeg"
  },
  {
    "name": "StrataSys 3D Printers",
    "description": "Prints out modeled parts designs from STL files",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/d05a1366b713465eb2cd/equipment_image3.jpeg"
  },
  {
    "name": "Photo Booth",
    "description": "Can be set up to take pictures of student projects at various stages",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/bfcda04cee518ae94c91/equipment_image4.jpeg"
  },
  {
    "name": "Sewing Machine",
    "description": "Industrial grade sewing machine capable of sewing through tough materials",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/cebcbff37ae3070f69e4/equipment_image5.jpeg"
  },
  {
    "name": "Drill Press",
    "description": "Makes holes through all types of wood and some thin sheets of metal",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/7c52ab82c08e6389a23e/equipment_image6.jpeg"
  },
  {
    "name": "Power Drills",
    "description": "Hand drills which can also be used for securing and undoing screws",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/24eef63bb46c4a3bbfc8/equipment_image7.jpeg"
  },
  {
    "name": "AC/DC Power Supplies",
    "description": "Energy sources for DC voltages and currents",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c3ebda9df0f1483a9187/equipment_image8.jpeg"
  },
  {
    "name": "Oscilloscopes",
    "description": "Observe waveforms created by electrical signals",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/cbea2f3da8b5f178ae7c/equipment_image10.jpeg"
  },
  {
    "name": "Soldering Iron",
    "description": "For basic solder work",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/e4454273d8ec9ccacbca/equipment_image11.jpeg"
  },
  {
    "name": "Function Generators",
    "description": "Generates common electrical waveforms over a range of frequencies",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/cce89d8d98f7fec2dfa0/equipment_image12.jpeg"
  },
  {
    "name": "Helping Arms",
    "description": "Facilitates work with small components. E.g. mini circuit boards",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/d13150837ad310f3f0b9/equipment_image13.jpeg"
  },
  {
    "name": "Heat Gun",
    "description": "Provides heat for warming thermoplastics, activating adhesives, shrinking heat sensitive tubing, etc",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/bbe05ab3d69a027bc6d1/equipment_image14.jpeg"
  },
  {
    "name": "Hot Wire Foam Cutter",
    "description": "Can be used to cut out shapes from foam\n\n",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c67714820e2557b1d024/equipment_image15.jpeg"
  },
  {
    "name": "Bandsaw",
    "description": "Used for cutting wood and plastic",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/9801eaa2bf46c0a8c09f/equipment_image20.jpeg"
  },
  {
    "name": "Electronics Kits",
    "description": "Contain commonly used circuit building components and measuring instruments",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/ec90cb0b57b48cb040de/equipment_image19.jpeg"
  },
  {
    "name": "Vinyl Cutter",
    "description": "Used for cutting the selection of vinyls provided in the makerspace",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/a2ba9a0c2c1847deebba/equipment_8275.jpg"
  },
  {
    "name": "Pressure Chamber",
    "description": "Equipment used to push air bubble out of different materials. This allows users to create high quality prototypes.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/90fb00055f24c3a04978/equipment_2264.jpg"
  },
  {
    "name": "Vacuum Former",
    "description": "Equipment used for making molds and forms out of thick, durable thermoplastics",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/85b2137daef7cafe71cc/equipment_3984.jpg"
  },
  {
    "name": "Vacuum Chamber",
    "description": "Used for the first stage of removing air out of a material, prior to using the pressure chamber.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/faf700c1dea71dbde59a/equipment_0508.jpg"
  },
  {
    "name": "Hand Tools",
    "description": "Spanners, Screw Drivers, Tape Measure, Clamps, etc.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/2a32c6923c81aa0b2660/equipment_image18.jpeg"
  }
]

Equipment.create(equipments)

projects = [
  {
    "name": "Secret Light Up Ring",
    "level": "INTERMEDIATE",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "Discover electromagnets in everyday life with this inductive LED ring!"
  },
  {
    "name": "Digital Bling\n",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "Adorn your body with electrifyingly awesome jewelry that you build yourself."
  },
  {
    "name": "Cardboard Automata",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "Explore mechanical elements such as cams, levers, and linkages to create your own moving sculpture."
  },
  {
    "name": "Chain Reaction",
    "level": "INTERMEDIATE",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "Rube Goldberg-inspired cause and effect contraptions using everyday materials and found objects."
  },
  {
    "name": "Light Painting",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "Create striking images and illusions using nothing more than a camera, a light source, and a little practice."
  },
  {
    "name": "Light Play",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "Explore light, shadow, and motion using a variety of simple materials and light sources."
  },
  {
    "name": "Marble Machines",
    "level": "ADVANCED",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "A Marble Machine is a creative ball-run contraption made from familiar materials."
  },
  {
    "name": "Musical Bench",
    "level": "ADVANCED",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "This exhibit makes music when people touch, kiss, or hold hands."
  },
  {
    "name": "Paper Circuits",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "Make simple or complex electrical circuits on a flat piece of paper!"
  },
  {
    "name": "Plastic Fusing",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "Turn old plastic bags into beautiful new fabrics that you can use to make a variety of fashionable items."
  },
  {
    "name": "Scribbling Machines",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "Make a motorized contraption that moves in unusual ways and leaves a mark to trace its path."
  },
  {
    "name": "Sewn Circuits",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/fb0db26e9006b708f37d/project_sewn_circuits_thumbnail.jpg",
    "description": "Watch your friends’ eyes light up, as you light up the LED on your clothing just by wearing it!"
  },
  {
    "name": "Squishy Circuits",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/97ec206bca3ef8a5254b/project_squishy_circuits_thumbnail.jpg",
    "description": "Use homemade conductive and resistant play-doh to build electronic sculptures that light up, move, and make sounds."
  },
  {
    "name": "Toy Take Apart",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/e42deed6cd0e59482ad5/project_toy_takeapart_thumbnail.jpg",
    "description": "Do you ever wonder what’s inside your toys? You’ll make some exciting and surprising discoveries!"
  },
  {
    "name": "Wind Tubes",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/bd0ccb619d9220db3f46/project_wind_tubes_thumbnail.jpg",
    "description": "Explore moving air, wind, and aerodynamics with a variety of everyday objects."
  },
  {
    "name": "Sew LED Torch",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c8b62f59c898bc9b1eaa/project_Sew%20LED%20Torch.png",
    "description": "Lights up after bedtime  with this Textile LED Torch Light."
  },
  {
    "name": "Wired Up Stiationery",
    "level": "BEGINNER",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/32b58191a1748dea7bd4/project_Wired%20Up%20Stationery%20-%20Main%20Page.jpg",
    "description": "Learn how to wire up simple circuits, with stationery."
  }
]

Project.create(projects)