# Creating interests for Interest tag dropdown
Interest.create(name: "3D Technology")
Interest.create(name: "Accessibility Technology")
Interest.create(name: "Account Management")
Interest.create(name: "Adventure Travel")
Interest.create(name: "Advertising")
Interest.create(name: "Advertising Technology")
Interest.create(name: "Aerospace")
Interest.create(name: "Analytics")
Interest.create(name: "Big Data")
Interest.create(name: "Biotechnology")
Interest.create(name: "Business Development")
Interest.create(name: "Clean Energy")
Interest.create(name: "Data Visualization")
Interest.create(name: "E-commerce")
Interest.create(name: "Education Technology")
Interest.create(name: "Entrepreneurship")
Interest.create(name: "Fashion Technology")
Interest.create(name: "Financial Technology")
Interest.create(name: "Food Technology")
Interest.create(name: "Legal Technology")
Interest.create(name: "Media Planning")
Interest.create(name: "Music Technology")
Interest.create(name: "Nanotechnology")
Interest.create(name: "Nonprofits")
Interest.create(name: "Product Management")
Interest.create(name: "Product Development")
Interest.create(name: "Recruiting")
Interest.create(name: "Robotics")
Interest.create(name: "Sales")
Interest.create(name: "Startups")
Interest.create(name: "UX/UI Design")
Interest.create(name: "Web Development")


# Users 0-12 on our Heroku DB, AND local test data - if adding more users, start at User 13 on Heroku DB
User.create(
  first_name: "Welcome",
  last_name: "Bot",
  location: "The Internet",
  industry: "Robotics",
  picture_url: 'WhiteLogoBlueBG300px.jpg',
  public_profile_url: "#Robot1",
  current_title: "Helpful Robot",
  current_company: "Mentorship",
  type: "Mentee",
  status: "unavailable",
  mission_statement: "I welcome people to this awesome website! Hello world!",
  linkedin_id: "#Robot1",
  email: "#robot1@robot1.robot1"
  )

User.create(
  first_name: "Welcome",
  last_name: "Bot",
  location: "The Internet",
  industry: "Robotics",
  picture_url: 'WhiteLogoBlueBG300px.jpg',
  public_profile_url: "#Robot2",
  current_title: "Helpful Robot",
  current_company: "Mentorship",
  type: "Mentor",
  status: "unavailable",
  mission_statement: "I welcome people to this awesome website! Hello world!",
  linkedin_id: "#Robot2",
  email: "#robot2@robot2.robot2"
  )

User.create(
  first_name: "Jason",
  last_name: "Allen",
  location: "Greater New York City Area, US",
  industry: "Media Production",
  picture_url: "https://media.licdn.com/mpr/mprx/0_0-CI4tcKiF1Slxg8jNhq4A67i8NSPVg8gznN4AXfp58yuYEhPqtFnlK3DaqPrjyuOA8zcnVym4rT",
  public_profile_url: "https://www.linkedin.com/in/jasonallen127",
  current_title: "Unemployed student",
  current_company: "None",
  type: "Mentee",
  status: "available",
  mission_statement: "My goal is to be mentored!",
  linkedin_id: "g8CGYxpaQV",
  email: "JasonAllen127@GMAIL.com"
  )


User.create(
  first_name: "Jaclyn",
  last_name: "Feminella",
  location: "Greater New York City Area, US",
  industry: "Staffing and Recruiting",
  picture_url:
   "https://media.licdn.com/mpr/mprx/0_OfVE-1Vsm-RuFeWaOIuoVzeUmbIlTEWi0DuXcQgsEhErTsVacfhoMzKsebZlkJe_OJGkx31VGTeKGmMxBy0nVF-9bTeAGmY7By0WA6FRu8ggHZ51RDWFltdoFqt3wmdYO0UQnZmQlfs",
  public_profile_url: "https://www.linkedin.com/in/jaclyn-feminella-b634485b",
  current_title: "Student",
  current_company: "DBC",

  type: "Mentor",
  status: "available",
  mission_statement: "Offering professional mentorship to navigate industry changes from Recruiting to Technology.",
  linkedin_id: "RgcyJ34e37",
  email: "jaclynfeminella@gmail.com"
  )

User.create(
  first_name: "Ivy",
  last_name: "Vetor",
  location: "Greater New York City Area, US",
  industry: "Computer Software",
  picture_url: "https://media.licdn.com/mpr/mprx/0_9-HjcTh_ZbVjjXIlNvJCcG-_s3ppxbRlqzpCciT05XHD8i2Asq4AM_zAN7yGp8VgcAoi4kPNkgoD",
  public_profile_url: "https://www.linkedin.com/in/ivyvetor",
  current_title: "unemployed",
  current_company: "none",
  type: "Mentee",
  status: "available",
  mission_statement: "looking for a mentor",
  linkedin_id: "_PHmiMG9vW",
  email: "ivyvetor@gmail.com"
  )

User.create(
  first_name: "Emily",
  last_name: "Osowski",
  location: "Greater New York City Area, US",
  industry: "Music",
  picture_url:
   "https://media.licdn.com/mpr/mprx/0_tiUBxkqj_z-ycw7rYt_MlPYp6kGhldP8ZtfBsKUpCCDTqJa8ZtiMlKzp5zHyBej2AFfMq1nymk-3-DSuYKYwBKBKIk-8-DErYKYNylCgh5F24Rlu-3HVpLuuwAHKUDj3c1VUR7J7iuU",
  public_profile_url: "https://www.linkedin.com/in/emily-osowski-b04a64a3",
  current_title: "Senior Developer",
  current_company: "Facebook",
  type: "Mentor",
  status: "available",
  mission_statement: "I'm looking to mentor junior developers!",
  linkedin_id: "brhUXch3Ka",
  email: "emosowski@gmail.com"
  )

User.create(
  first_name: "Ayaz",
  last_name: "Uddin",
  location: "Greater New York City Area, US",
  industry: "Information Technology and Services",
  picture_url: "https://media.licdn.com/mpr/mprx/0__by8vxujMQ9vB_a1T_V1vpDAv6tnz_a13Qe0vjpGEiQboFJPfTuuRge2Ue-enkf0CkYYssCxZXBS",
  public_profile_url: "https://www.linkedin.com/in/ayaz2589",
  current_title: "Senior Product Manager",
  current_company: "Google",
  type: "Mentor",
  status: "available",
  mission_statement: "Eager to mentor junior devs!",
  linkedin_id: "0-7hFUkCA5",
  email: "uddin2589@yahoo.com"
  )

User.create(
  first_name: "Debbie",
  last_name: "Milburn",
  location: "Greater New York City Area, US",
  industry: "Computer Software",
  picture_url: "https://media.licdn.com/mpr/mprx/0_goVSNNoIq5NhQGpjjdRON9ENniTiEGpjxea-N9sqW6v-vQIgA2oTVnaVZS3jdLjAyd4PUlk-jLed",
  public_profile_url: "https://www.linkedin.com/in/debbiemilburn",
  current_title: "Mentor",
  current_company: "Dev Bootcamp",
  type: "Mentor",
  status: "available",
  mission_statement: "I'd love to mentor new devs!",
  linkedin_id: "bSsHbsgN7h",
  email: "debbiemilburn2@gmail.com"
  )

User.create(
  first_name: "Chand",
  last_name: "Nirankari",
  location: "Greater New York City Area, US",
  industry: "Political Organization",
  picture_url: "https://media.licdn.com/mpr/mprx/0_ukJ160xKZeX9qiJzmXW26gVK4w-Q4ieza_Du6y4rFm6nFbxvhCd0epuO9LtMUXWJSbRDdR6a-0jD",
  public_profile_url: "https://www.linkedin.com/in/chandnirankari",
  current_title: "Student",
  current_company: "Dev Bootcamp",
  type: "Mentee",
  status: "available",
  mission_statement: "I'd like to meet mentors in tech.",
  linkedin_id: "WFLGt31_tq",
  email: "chandnirankari@gmail.com"
  )

User.create(
  first_name: "Caitlin",
  last_name: "Hoffman",
  location: "San Francisco Bay Area, US",
  industry: "Non-profit Organization Management",
  picture_url:
   "https://media.licdn.com/mpr/mprx/0_-NRfZkejjr-2lLBP-Ki3nKojM9YSqX50cKSfOKYjJ9P2lq9P-K7frCQpsGrYt6wCZL7mJ8WyrlluBhP14FO1KKeKvllDBht-OFO2UlggYKkTg9WmtneCRLPuzXwjOhLiBksipi8XRtu",
  public_profile_url: "https://www.linkedin.com/in/caitlin-hoffman-17720647",
  current_title: "Student",
  current_company: "Dev Bootcamp",
  type: "Mentee",
  status: "available",
  mission_statement: "Looking forward to meeting mentors in tech!",
  linkedin_id: "2Pe9IYOHkm",
  email: "choffma@tulane.edu"
  )

User.create(
  first_name: "Christyn",
  last_name: "Budzyna",
  location: "Greater New York City Area, US",
  industry: "Entertainment",
  picture_url:
   "https://media.licdn.com/mpr/mprx/0_xRVPDrusr2ribFSN9ECP_PaUt4jYT6yMs0uPHX8UcHj0T9DN9Rm-QG3sNwDYkXpZnRC-LTaVxWuxbGEvPe07LXf9VWuObGWZ9e0KaLVRAeMtSqtXsJWOmlqospnaaGOWxIUxWcYo0tb",
  public_profile_url: "https://www.linkedin.com/in/christyn-budzyna-27685753",
  current_title: "Junior Engineer",
  current_company: "Twitter",
  type: "Mentor",
  status: "available",
  mission_statement: "I want to mentor junior devs!",
  linkedin_id: "5ZDPyI0kYi",
  email: "cbudzyna@gmail.com"
  )

User.create(
  first_name: "Ayaz",
  last_name: "Uddin",
  location: "Greater New York City Area, US",
  industry: "Information Technology and Services",
  picture_url: "https://media.licdn.com/mpr/mprx/0__by8vxujMQ9vB_a1T_V1vpDAv6tnz_a13Qe0vjpGEiQboFJPfTuuRge2Ue-enkf0CkYYssCxZXBS",
  public_profile_url: "https://www.linkedin.com/in/ayaz2589",
  current_title: "Boss",
  current_company: "DBC",
  type: "Mentee",
  status: "available",
  mission_statement: 'Confusion is the feeling that comes before understanding',
  linkedin_id: "0-7hFUkCA5",
  email: "uddin2589@yahoo.com"
  )

User.create(
  first_name: "Jonathan O.",
  last_name: "Schwartz",
  location: "Greater New York City Area, US",
  industry: "Computer Software",
  picture_url: "https://media.licdn.com/mpr/mprx/0_toKw91admk5lEe489H6QqNydmk6uWR42ca6LKQoHw8JDWINyjUX543kdDkqxEJQ8PHXwgKwWF1eS70VKZMvBOF65C1e270r2RMvez61eW-g85dIKBHi6vtjMGQtp60bjtVAbtZ4k3yP",
  public_profile_url: "https://www.linkedin.com/in/jonoschwartz",
  current_title: "Student",
  current_company: "Dev Bootcamp",
  type: "Mentee",
  status: "available",
  mission_statement: "Find me a mentor!",
  linkedin_id: "2FFqx7V8Ge",
  email: "josch@umich.edu"
  )

User.create(
  first_name: "Veronica",
  last_name: "Staehle",
  location: "Greater New York City Area, US",
  industry: "Graphic Design",
  picture_url: "https://media.licdn.com/mpr/mprx/0_73E_PZS2q-vkVQP0STHpPVRCqvCwZL_0DhYpPRogIKnUbTNxiFs7jUYPVRGNRGC1mGegyyZeSn4C",
  public_profile_url: "https://www.linkedin.com/in/veronica-staehle-47242930",
  current_title: "ASL Interpreter",
  current_company: "LC Interpreting Services",
  type: "Mentor",
  status: "available",
  mission_statement: "Available to mentor eager DBC students on learning ASL!",
  linkedin_id: "Y7xmZDSS8Y",
  email: "veronicastaehle@gmail.com"
  )

User.create(
  first_name: "Maria-Angela",
  last_name: "Sanzone",
  location: "Greater New York City Area, US",
  industry: "Marketing and Advertising",
  picture_url: "https://media.licdn.com/mpr/mprx/0_NArAmTrAOpd0YlbbnznmmG5gyssxt-bb9rXmmG_T_xm7SnKF4chjhCc7tqV8AzQwv--fT5gvH1ML",
  public_profile_url: "https://www.linkedin.com/in/maria-angela-sanzone-46034a5",
  current_title: "Media Buyer",
  current_company: "Brand Networks",
  type: "Mentor",
  status: "available",
  mission_statement: "To test this page",
  linkedin_id: "SZHE4B_nRc",
  email: "masanzone@gmail.com"
  )

User.create(
  first_name: "Ryan",
  last_name: "Horn",
  location: "Greater New York City Area, US",
  industry: "Marketing and Advertising",
  picture_url: "https://media.licdn.com/mpr/mprx/0_Gj0mWYtI4DqUm6QnSuw_FEhIJJiFeFZReuwmfEzoyJ3QeBv9euLaCRcIsRAQDBQcDjwmFj4wKja6I_DQwmVtTEJbzjabI_AVHmVSEw2EOpRI3voQk0uio0GUveqBC_QITDYCDzxssBm",
  public_profile_url: "https://www.linkedin.com/in/ryan-horn-a9a1547",
  current_title: "Director, Customer Success",
  current_company: "Brand Networks",
  type: "Mentor",
  status: "available",
  mission_statement: "To test this page",
  linkedin_id: "ShqXLW0BES",
  email: "phi2618@yahoo.com"
  )

User.create(
  first_name: "Kevin",
  last_name: "Perkins",
  location: "Greater New York City Area, US",
  industry: "Computer Software",
  picture_url: "https://media.licdn.com/mpr/mprx/0_foFc5xhvGyE5Qy-oQo0cwp3v6RZJ5YOwQUjM8o9vCD5Zhm_wwHlJG4Cv3DvJ8yKnWa0MmS3zIRe4_shnLMGISwhJmReM_sFoQMGqQEzq5VgzWupnoHNs6ORLamtWosKRfVQR3NF2TLv",
  public_profile_url: "https://www.linkedin.com/in/kevperk",
  current_title: "Technical Product Manager, Search Algorithms",
  current_company: "Google",
  type: "Mentor",
  status: "available",
  mission_statement: "I would like to mentor junior developers and those interested
    in becoming full-stack developers!",
  linkedin_id: "j-buZIBGCS",
  email: "kevcorper@gmail.com"
  )

User.create(
  first_name: "Anthony",
  last_name: "Narisi",
  location: "Greater New York City Area, US",
  industry: "Computer Software",
  picture_url: "https://media.licdn.com/mpr/mprx/0_i2oR-pOzb6eZ_DDiGaYUsJ0zF6OLhuumf2tvcWMz3Bbkhyx_o2yzVSNz5GIZ_D1fo2YsVacvmTdX_e2PuxfFVH9MITd5_eRfExf4AdiNh8pdWYhP6aMnlgD5wq1voeuOipwcncgAcHW",
  public_profile_url: "https://www.linkedin.com/in/anthony-narisi-43b3a580",
  current_title: "Phase 0 Student",
  current_company: "Dev Bootcamp",
  type: "Mentee",
  status: "available",
  mission_statement: "I am interested in becoming a full-stack developer!",
  linkedin_id: "cPCx2Sc9RL",
  email: "tonynarisi@gmail.com"
  )

User.create(
  first_name: "David",
  last_name: "Lange",
  location: "Greater New York City Area, US",
  industry: "Computer Software",
  picture_url: "https://media.licdn.com/mpr/mprx/0_mO0h7ezeJePI7qwnG7whXIbeyeG9dFvBwVWmdjAeyI4BdcwBGOwDTyxeRRTLfc49IVWhXepHle-cE_bR3SVpbyjXqe-nEif9CSViugHd0WFV8zqEapuS2d64NjHQiiZFIaY2I_4LrUI",
  public_profile_url: "https://www.linkedin.com/in/david-lange-65b82576",
  current_title: "Student",
  current_company: "Dev Bootcamp",
  type: "Mentee",
  status: "available",
  mission_statement: "Seeking to connect with professions in Tech and Music.",
  linkedin_id: "98d1FsVNfd",
  email: "dlange8181@gmail.com"
  )

users = User.all
users.each do |user|
  5.times do
    i = Interest.all.sample

    UserInterest.create(
      user: user,
      interest: i)
  end
end

10.times do
  mentee = Mentee.all.sample
  mentor = Mentor.all.sample

  c = Conversation.create(
    mentee_id: mentee.id,
    mentor_id: mentor.id)

  AcceptedMatch.create(
    initiator: mentor,
    receiver: mentee,
    mentee_id: mentee.id,
    mentor_id: mentor.id,
    conversation_id: c.id
    )
end

10.times do
  mentee = Mentee.all.sample
  mentor = Mentor.all.sample

 c = Conversation.create(
    mentee_id: mentee.id,
    mentor_id: mentor.id)

  PendingMatch.create(
    initiator: mentee,
    receiver: mentor,
    mentee_id: mentee.id,
    mentor_id: mentor.id,
    conversation_id: c.id
    )
end


conversations = Conversation.all
conversations.each do |conversation|

  10.times do
    Message.create(
      body: "I am a Mentor message!",
      conversation: conversation,
      user: conversation.mentor,
      read: false
    )
    Message.create(
      body: "I am a Mentee message!",
      conversation: conversation,
      user: conversation.mentee,
      read: false
    )
  end

end

