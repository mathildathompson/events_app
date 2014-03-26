User.destroy_all
Event.destroy_all

u1 = User.create(:first_name => 'Tom', :last_name => 'Dane', :admin => true, password: 'duck', password_confirmation: 'duck')
u2 = User.create(:first_name => 'Ian', :last_name => 'Johsnon', :admin => false, password: 'duck', password_confirmation: 'duck')
u3 = User.create(:first_name => 'Arash', :last_name => 'Katrak', :admin => false, password: 'duck', password_confirmation: 'duck')






