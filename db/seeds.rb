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
    name: "KC Robot Lab",
    location: "Shanghai",
    address: "408-410 Bldg 4 3337 Hongmei Lu, near Huaguang Lu",
    phone_number: "021-152 5195 0152",
    description: "In just one year, KC Robot Lab has managed to amass over a hundred students, and offers courses in robotics, coding, laser cutting and 3D printing. Students from five to 16 years old learn the ins and outs of electronics, programming, engineering and more in the lab’s close-knit classrooms of no more than six students. The weekly classes are 1.5 hours per session, and though primarily taught in Mandarin, English-speaking tutors are available. Call to schedule a free trial class.",
    photo_url: "http://img.timeoutshanghai.com/201902/2019022609042491.jpg",
  },
  {
    name: "MOOCXING",
    location: "Shanghai",
    address: "14C Bldg 5 251 Caoxi Lu, near Longcao Lu",
    phone_number: "021-400 873 7505",
    description: "MOOCXING has been around since 2013 and focuses on robotics and programming for children seven to 18 years old. Students can learn coding languages like Python and C++, as well as gain experience working with 3D printers and robots. Class sizes are generally small and taught in Mandarin, though it’s possible to set up one-on-one classes in English depending on tutor availability. Call for price information or to schedule a 200RMB trial course.",
    photo_url: "http://img.timeoutshanghai.com/201902/20190226092317548.jpg"
  },
  {
    name: "Join-in Youth Creative Lab",
    location: "Shanghai",
    address: "1806 2669 Xietu Lu, near Tianyaoqiao Lu",
    phone_number: "021-400 093 5090",
    description: "Join-in works with children between three to 12 years old. Students can learn to program robots and other gadgets here. Class sizes are small, with around three to six students each, and one-on-one tutoring available. Weekly courses range from one to three hours depending on the student’s age and classes are taught in Chinese with English-speaking tutors subject to availability. Classes are around 9,600 per year. Call to set up a free trial.",
    photo_url: "http://img.timeoutshanghai.com/201902/20190226093313956.jpg"
  },
  {
    name: "GAIA Space Center",
    location: "Shanghai",
    address: "147-149 Area 3 168 Shangnan Lu, near Guozhan Lu",
    phone_number: "021-5041 1077",
    description: "This makerspace’s classes are divided into three categories: ‘Baby Science’, basic science for three year olds; ‘Hands-on Science’, general science classes for children four to 12 years old and ‘Programming’, basic robot programming courses for children seven to 12 years old. GAIA also hosts birthday parties, weekend activities and summer/winter camps. The weekly bilingual classes come in a 48-week package, last one-and-a-half hours each and are generally around 14 students per class. Call for price details or to schedule a free trial class.",
    photo_url: "http://img.timeoutshanghai.com/201902/20190226093924307.jpg"
  },
  {
    name: "XMaker Innovation Center",
    location: "Chengdu",
    address: "Tongzilin South 6, Fangcaodi, block 7 unit 1 626",
    phone_number: "WeChat ID: SWJTUyuhui",
    description: "Maker Innovation Center is running by makers from intel-swjtu makercenter, West Makerspace and XMaker School.
    This is an open lab for local diyer/ maker/ hacker/ engineer/ researcher.
    We are running a \"codes to things\" course project to help people to learn how to fabricate things.",
    photo_url: "http://qcloud.dpfile.com/pc/uQ8QMIVJD1dP1cn8_lGTaEeAEX5irizGtCa-eRekLaqAxFvwnLkkxj0esQKG48YCHB1FIzxqqv4y1DPjvSHfJsPMUtGpjXdtO1pf5OouG4AnY08TQIxe-DkxF3-YDtNHvJLBPMnbGaim65JmQfWVIQ.jpg"
  },
  {
    name: "SWJTU Makerspace",
    location: "Chengdu",
    address: "4/F, block C, 144 Jiaoda Road, Jinniu District",
    phone_number: "028-87601498",
    description: "The SWJTU Makerspace is the first university makerspace in western China. It focuses on the industries regarding mechanical and electrical information, robotics, the Internet of Things, intelligent hardware, artificial intelligence and energy conservation.",
    photo_url: "https://creativeconomy.britishcouncil.org/media/thumbnails/uploads/SWJU_ingrid_small.jpg.740x494_q90_crop.jpg"
  },
  {
    name: "STEM Edu",
    location: "Chengdu",
    address: "万瑞中心C座19楼 Wanrui Center, block C, 19th floor",
    phone_number: "4001798315",
    description: "This program is made for the young minds to create incubation center in their schools, colleges, institutes for long term learning.",
    photo_url: "http://p0.meituan.net/education/48d34b7de66f9f878ab05116f65ab9682589593.jpg%40960w_300h_1e_1c_1l%7Cwatermark%3D1%26%26r%3D1%26p%3D9%26x%3D2%26y%3D2%26relative%3D1%26o%3D20"
  },
  {
    name: "Chai Huo X.factory",
    location: "Shenzhen",
    address: "Dashierlu, Wankeyun Community, Nanshang Zone",
    phone_number: "0755-8671703",
    description: "Chaihuo Maker Space was created and sponsored by Seeed Studio. As the first maker space in Shenzhen, Chaihuo has gathered a lot of DIY enthusiasts and entreprenuers, including SZDIY, the Android-loving group. IOS Party, Microsoft Club, SZHAM and Amateur Radio Group.",
    photo_url: "http://admin.chaihuo.org/uploadfiles/img/201908121638230898a6c04513-2e3f-4fe0-b696-e97a1adb3ed623.jpg"
  }
]

Makerspace.create(makerspaces)

equipments = [
  {
    "name": "Impulse Sealer",
    "description": "Equipment that can be used to create water-tight seals on TPU Nylon fabric and similar materials",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103706/image1.jpeg"
  },
  {
    "name": "Shear Press, Brake and Slip Roll",
    "description": "Used to bend, cut, curve, etc. sheet metal",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103707/image2.jpeg"
  },
  {
    "name": "StrataSys 3D Printers",
    "description": "Prints out modeled parts designs from STL files",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103709/image3.jpeg"
  },
  {
    "name": "Photo Booth",
    "description": "Can be set up to take pictures of student projects at various stages",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103711/image4.jpeg"
  },
  {
    "name": "Sewing Machine",
    "description": "Industrial grade sewing machine capable of sewing through tough materials",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103712/image5.jpeg"
  },
  {
    "name": "Drill Press",
    "description": "Makes holes through all types of wood and some thin sheets of metal",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103714/image6.jpeg"
  },
  {
    "name": "Power Drills",
    "description": "Hand drills which can also be used for securing and undoing screws",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103715/image7.jpeg"
  },
  {
    "name": "AC/DC Power Supplies",
    "description": "Energy sources for DC voltages and currents",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103716/image8.jpeg"
  },
  {
    "name": "Oscilloscopes",
    "description": "Observe waveforms created by electrical signals",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103720/image10.jpeg"
  },
  {
    "name": "Soldering Iron",
    "description": "For basic solder work",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103721/image11.jpeg"
  },
  {
    "name": "Function Generators",
    "description": "Generates common electrical waveforms over a range of frequencies",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103722/image12.jpeg"
  },
  {
    "name": "Helping Arms",
    "description": "Facilitates work with small components. E.g. mini circuit boards",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103724/image13.jpeg"
  },
  {
    "name": "Heat Gun",
    "description": "Provides heat for warming thermoplastics, activating adhesives, shrinking heat sensitive tubing, etc",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103725/image14.jpeg"
  },
  {
    "name": "Hot Wire Foam Cutter",
    "description": "Can be used to cut out shapes from foam\n\n",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103726/image15.jpeg"
  },
  {
    "name": "Bandsaw",
    "description": "Used for cutting wood and plastic",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103734/image20.jpeg"
  },
  {
    "name": "Electronics Kits",
    "description": "Contain commonly used circuit building components and measuring instruments",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103732/image19-e1490712675865.jpeg"
  },
  {
    "name": "Vinyl Cutter",
    "description": "Used for cutting the selection of vinyls provided in the makerspace",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/06/12154922/IMG_2075-1-e1497300638275.jpg"
  },
  {
    "name": "Pressure Chamber",
    "description": "Equipment used to push air bubble out of different materials. This allows users to create high quality prototypes.",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/06/12154929/IMG_2077-1-e1497300762264.jpg"
  },
  {
    "name": "Vacuum Former",
    "description": "Equipment used for making molds and forms out of thick, durable thermoplastics",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/06/12154926/IMG_2076-1-e1497300833984.jpg"
  },
  {
    "name": "Vacuum Chamber",
    "description": "Used for the first stage of removing air out of a material, prior to using the pressure chamber.",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/06/12154817/IMG_2078-1-e1497300520508.jpg"
  },
  {
    "name": "Hand Tools",
    "description": "Spanners, Screw Drivers, Tape Measure, Clamps, etc.",
    "photo_url": "https://cdn.vanderbilt.edu/vu-wp0/wp-content/uploads/sites/134/2017/03/17103731/image18.jpeg"
  }
]

Equipment.create(equipments)

projects = [
  {
    "name": "Secret Light Up Ring",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/93edb7e6604b91e21d46/LED%20Ring.png",
    "description": "Discover electromagnets in everyday life with this inductive LED ring!"
  },
  {
    "name": "Digital Bling\n",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/digital_bling_thumbnail.jpg?itok=McGr6LcW",
    "description": "Adorn your body with electrifyingly awesome jewelry that you build yourself."
  },
  {
    "name": "Cardboard Automata",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/carboard_automata_thumbnail.jpg?itok=xjivhyRV",
    "description": "Explore mechanical elements such as cams, levers, and linkages to create your own moving sculpture."
  },
  {
    "name": "Chain Reaction",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/chain_reaction_thumbnail.jpg?itok=r2L_Oog2",
    "description": "Rube Goldberg-inspired cause and effect contraptions using everyday materials and found objects."
  },
  {
    "name": "Light Painting",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/light_painting_thumbnail.jpg?itok=DDvjhwRG",
    "description": "Create striking images and illusions using nothing more than a camera, a light source, and a little practice."
  },
  {
    "name": "Light Play",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/light_play_thumbnail.jpg?itok=0P0yVNwD",
    "description": "Explore light, shadow, and motion using a variety of simple materials and light sources."
  },
  {
    "name": "Marble Machines",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/marble_machines_thumbnail.jpg?itok=PO-yqsDl",
    "description": "A Marble Machine is a creative ball-run contraption made from familiar materials."
  },
  {
    "name": "Musical Bench",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/musical_bench_thumbnail.jpg?itok=zmKBL_PT",
    "description": "This exhibit makes music when people touch, kiss, or hold hands."
  },
  {
    "name": "Paper Circuits",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/paper_circuit_thumbnail.jpg?itok=7sySjvJG",
    "description": "Make simple or complex electrical circuits on a flat piece of paper!"
  },
  {
    "name": "Plastic Fusing",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/plastic_fusing_thumbnail.jpg?itok=FAnp0SnA",
    "description": "Turn old plastic bags into beautiful new fabrics that you can use to make a variety of fashionable items."
  },
  {
    "name": "Scribbling Machines",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/scribbling_machines_thumbnail.jpg?itok=Skqwg0NZ",
    "description": "Make a motorized contraption that moves in unusual ways and leaves a mark to trace its path."
  },
  {
    "name": "Sewn Circuits",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/sewn_circuits_thumbnail.jpg?itok=J1C2mlcK",
    "description": "Watch your friends’ eyes light up, as you light up the LED on your clothing just by wearing it!"
  },
  {
    "name": "Squishy Circuits",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/squishy_circuits_thumbnail.jpg?itok=t3YRb241",
    "description": "Use homemade conductive and resistant play-doh to build electronic sculptures that light up, move, and make sounds."
  },
  {
    "name": "Toy Take Apart",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/toy_takeapart_thumbnail.jpg?itok=66V1_AHg",
    "description": "Do you ever wonder what’s inside your toys? You’ll make some exciting and surprising discoveries!"
  },
  {
    "name": "Wind Tubes",
    "photo_url": "https://www.exploratorium.edu/sites/default/files/styles/tinkering_pod/public/tinkering/files/wind_tubes_thumbnail.jpg?itok=hO1dATwX",
    "description": "Explore moving air, wind, and aerodynamics with a variety of everyday objects."
  }
]

Project.create!(projects)

project_steps = [
  {
    "project_id": 1,
    "title": "1st Step:",
    "description": "Make your coil.Wrap the wire in a circle 15 -30 times making sure that it will that will fit in the mold. Tuck the wire into your mold to keep it from unraveling.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/c95a969ec067ef989ac5/LED%20Ring%20Step%201.png"
  },
  {
    "project_id": 1,
    "title": "2nd Step:",
    "description": "Trim your LED legs so they comfortably fit in the mold, and solder one LED leg to one free end of the wire, and repeat with ends.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/87d4869e7c913864ce98/LED%20Ring%20Step%202.png"
  },
  {
    "project_id": 1,
    "title": "3rd Step:",
    "description": "Now is a good time to test your LED to make sure everything is working as expected. Test using a Adafruit chi pad, or any wireless charging pad, or a phone with NFC. These all contain a primary induction coil. Hold the coil and LED assembly over the charger (primary coil). The LED should light up. The LED requires that current flow in a specific direction (it has a polarity) , so if the LED does not light up, flip it over to reverse the polarity and align it with the primary coil. ",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/e46073f3d5438b1dae2c/LED%20Ring%20Step%203.png"
  },
  {
    "project_id": 1,
    "title": "4th Step:",
    "description": "Prepare your resin according to the included instructions. This is the time to add glitter or color into your resin. Pour resin into your mold, making sure to get around the wires and tapping gently as needed so there are no air bubbles in the cast.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/ece1c41a7d951b782018/LED%20Ring%20Step%204.png"
  },
  {
    "project_id": 1,
    "title": "5th Step:",
    "description": "Let your resin cure as directed. Once fully cured, clean up with sandpaper.",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/87942b19648f84ad3a8f/LED%20Ring%20Step%205.png"
  },
  {
    "project_id": 1,
    "title": "6th Step:",
    "description": "Check out your ring!",
    "photo_url": "https://avos-cloud-dycrb1wrauoc.s3.amazonaws.com/27b02aa1de42f54e3eb2/LED%20Ring%20Step%206.png"
  }
]

ProjectStep.create!(project_steps)