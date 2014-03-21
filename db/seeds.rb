User.destroy_all
Event.destroy_all

u1 = User.create(:first_name => 'Tom', :last_name => 'Dane')
u2 = User.create(:first_name => 'Ian', :last_name => 'Johsnon')
u3 = User.create(:first_name => 'Arash', :last_name => 'Katrak')

e1 = Event.create(:title => 'Philosophy in the Age of Democracy', :description => 'How does healthy democracy both depend on and inform philosophical education? What benefits do we expect to flow from public support of philosophical research? In the light of comments made in the 2013 federal election campaign, Professor Paul Redding, Richard Eldridge and Dalia Nassar address different aspects of these questions.', :time => '6:00pm-7:30pm', :date => '25/03/2014', :location =>'Law School Foyer, Eastern Avenue, University of Sydney', :price => 0, :contact => 'The University of Sydney (02) 9351 2943')

e2 = Event.create(:title => 'All About Women: Egypt, The War On Women And The Arab World', :description => 'The quest for political freedom in the Arab World is linked with the quest for freedom for women. Join one of the most visible reporters of the dramatic events in Egypt in recent years, Egyptian-American journalist Mona Eltahawy as she asks, what does the future hold for these revolutions?', :time => '4:00pm-5:00pm',:date => '30/3/2014', :location =>'Drama Theatrre, Sydney Opera House, Bennelong Point', :price => 25, :contact => 'Sydney Opera House (02) 9250 7777')

e3 = Event.create(:title => 'Blue Dragon: a Framework for a Mission to Mars ', :description => 'Blue Dragon is a concept to use commercial hardware for a future mission to Mars. Shaun Moss explains how a project with close collaboration between the world\'s most powerful and technically proficient nations may lead to world peace and further collaboration on other global issues such as climate change.', :time => '7:30pm-9:30pm',:date => '14/4/2014', :location =>'Discovery, Sydney Observatory, Watson rd, The Rocks', :price => 2, :contact => 'Sydney Space Frontier Society (02) 9150-4553')

u1.events = [e1, e2, e3]
u2.events = [e3]
e3.users = [u3]


