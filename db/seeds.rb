User.destroy_all
u1 = User.create :name => 'Alex Me', :email => 'alex@me.co', :bio => 'Super awesome person', :avatar => 'Drhs8tn3p5bw8hacu3ev', :password => 'ch1ck3ny', :password_confirmation => 'ch1ck3ny', :admin => true
u2 = User.create :name => 'John Smith', :email => 'john@smith.co', :bio => 'Apple merchant', :avatar => 'Vzcx334v3byo1fgvfzhh', :password => 'chicken', :password_confirmation => 'chicken'
u3 = User.create :name => 'Jane Smith', :email => 'jane@smith.co', :bio => 'Baker of delicious treats', :avatar => 'Egsfua0edullnt8s4nqr', :password => 'chicken', :password_confirmation => 'chicken'
u4 = User.create :name => 'John Doe', :email => 'john@doe.co', :bio => 'Mortician', :avatar => 'Rpxydt9acsk1mhmvjqnh', :password => 'chicken', :password_confirmation => 'chicken'
u5 = User.create :name => 'Jane Doe', :email => 'jane@doe.co', :bio => 'Choir singer', :avatar => 'Il85ohrv7mou9gz7ewbt', :password => 'chicken', :password_confirmation => 'chicken'

Post.destroy_all
p1 = Post.create :title => 'Best Cider Apples', :description => 'The best cider apples are apparently from Somerset, UK.', :body => 'The taste of Somerset is second to none. Bla bla bla. Boring stuff about cider. I am actually so bored I want to eat my own hand. Better finish or I will not be able to finish this project.', :image_url => ''
p2 = Post.create :title => 'Chili Cupcakes', :description => 'Somehow there are people putting chili into cupcakes...', :body => 'The crazy idea to put chili into pretty much any food continues. Now we are destroying the lovely treats - cupcakes. I am so mad at this idiocracy. Bla bla bla. Going to start copying and pasting, unless I can get the Lorem Ipsum working... who knows.', :image_url => ''
p3 = Post.create :title => 'Excitement!', :description => 'Who knew working as a mortician could be so exciting?', :body => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', :image_url => ''
p4 = Post.create :title => 'Big Sing!', :description => 'Something about a big sing...', :body => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', :image_url => ''
p5 = Post.create :title => 'Something!', :description => 'Getting more vague...', :body => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', :image_url => ''

Comment.destroy_all
c1 = Comment.create :text => 'Nice!'
c2 = Comment.create :text => 'What the Dickens!'
c3 = Comment.create :text => 'I could not agree less. What a load of trollop'
c4 = Comment.create :text => 'This is so true. I have experienced this and never been less impressed.'
c5 = Comment.create :text => 'Lorem Ipsum?'
c6 = Comment.create :text => 'I love this!'
c7 = Comment.create :text => 'I wanna try! Gimme sum sugga!'
c8 = Comment.create :text => 'Cool Beans!'
c9 = Comment.create :text => 'Bla bla bla... trolling.'
c10 = Comment.create :text => 'What are you talking about? Me no speeko latino.'

#Associations
u2.posts << p1
u3.posts << p2 << p5
u4.posts << p3
u5.posts << p4

u1.comments << c1 << c2 << c8 << c9 << c10
u2.comments << c1 << c2 << c7
u3.comments << c1 << c3 << c6 << c9
u4.comments << c2 << c3 << c4
u5.comments << c5 << c6 << c7 << c10

p1.comments << c1 << c3 << c9
p2.comments << c1 << c6 << c7 << c8
p3.comments << c2 << c4 << c5 << c9 << c10
p4.comments << c2 << c5 << c10
p5.comments << c2 << c5 << c9 << c10
