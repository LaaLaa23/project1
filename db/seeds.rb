User.destroy_all
u1 = User.create :name => 'John Smith', :email => 'john@smith.co', :bio => 'Apple merchant', :avatar => '/app/assets/images/appleface.png'
u2 = User.create :name => 'Jane Smith', :email => 'jane@smith.co', :bio => 'Baker of delicious treats', :avatar => '/app/assets/images/cakeface.png'
u3 = User.create :name => 'John Doe', :email => 'john@doe.co', :bio => 'Mortician', :avatar => '/app/assets/images/grimface.png'
u4 = User.create :name => 'Jane Doe', :email => 'jane@doe.co', :bio => 'Choir singer', :avatar => '/app/assets/images/choirface.png'

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
