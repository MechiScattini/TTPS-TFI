
# creates schedules
monday = Schedule.new
monday.day = :Monday
monday.time_from = Time.new(2000,1,1,5,0,0)
monday.time_to = Time.new(2000,1,1,15,0,0)
monday.save!

tuesday = Schedule.new
tuesday.day = :Tuesday
tuesday.time_from = Time.new(2000,1,1,5,0,0)
tuesday.time_to = Time.new(2000,1,1,15,0,0)
tuesday.save!

wednesday = Schedule.new
wednesday.day = :Wednesday
wednesday.time_from = Time.new(2000,1,1,5,0,0)
wednesday.time_to = Time.new(2000,1,1,15,0,0)
wednesday.save!

thursday = Schedule.new
thursday.day = :Thursday
thursday.time_from = Time.new(2000,1,1,5,0,0)
thursday.time_to = Time.new(2000,1,1,15,0,0)
thursday.save!

friday = Schedule.new
friday.day = :Friday
friday.time_from = Time.new(2000,1,1,5,0,0)
friday.time_to = Time.new(2000,1,1,15,0,0)
friday.save!

saturday = Schedule.new
saturday.day = :Saturday
saturday.time_from = Time.new(2000,1,1,5,0,0)
saturday.time_to = Time.new(2000,1,1,9,0,0)
saturday.save!


# create branches
banco_provincia = Branch.new
banco_provincia.name = "Banco Provincia"
banco_provincia.address = "Av.7 N°726"
banco_provincia.telephone = "0221-429-0100"
banco_provincia.schedules << monday
banco_provincia.schedules << tuesday
banco_provincia.schedules << wednesday
banco_provincia.schedules << thursday
banco_provincia.schedules << friday
banco_provincia.schedules << saturday
banco_provincia.save!

banco_galicia = Branch.new
banco_galicia.name = "Banco Galicia"
banco_galicia.address = "Av.7 N°875"
banco_galicia.telephone = "0810-777-3333"
banco_galicia.schedules << monday
banco_galicia.schedules << tuesday
banco_galicia.schedules << wednesday
banco_galicia.schedules << thursday
banco_galicia.schedules << saturday
banco_galicia.save!

# creates users

# creates admin user
admin = User.new
admin.email = 'admin@mail.com'
admin.password = '123123'
admin.password_confirmation = '123123'
admin.role = :admin
admin.save!

# creates bank personal user
bank_personal_1 = User.new
bank_personal_1.email = 'bankPersonal1@mail.com'
bank_personal_1.password = '123123'
bank_personal_1.password_confirmation = '123123'
bank_personal_1.role = :bank_personal
bank_personal_1.branch_id = banco_provincia.id
bank_personal_1.save!

# creates another bank personal user
bank_personal_2 = User.new
bank_personal_2.email = 'bankPersonal2@mail.com'
bank_personal_2.password = '123123'
bank_personal_2.password_confirmation = '123123'
bank_personal_2.role = :bank_personal
bank_personal_2.branch_id = banco_galicia.id
bank_personal_2.save!

# creates client user
client1 = User.new
client1.email = 'client1@mail.com'
client1.password = '123123'
client1.password_confirmation = '123123'
client1.role = :client
client1.save!

# creates another client user
client2 = User.new
client2.email = 'client2@mail.com'
client2.password = '123123'
client2.password_confirmation = '123123'
client2.role = :client
client2.save!

# creates appointment
appointment_client_1 = Appointment.new
appointment_client_1.branch_id = banco_provincia.id
appointment_client_1.date = Date.new(2024,12,12)
appointment_client_1.time = Time.new(2000,1,1,6,0,0)
appointment_client_1.motive = "prueba"
appointment_client_1.users << client1
appointment_client_1.solved = false
appointment_client_1.save!

# creates appointment
appointment_client_2 = Appointment.new
appointment_client_2.branch_id = banco_provincia.id
appointment_client_2.date = Date.new(2024,12,12)
appointment_client_2.time = Time.new(2000,1,1,6,0,0)
appointment_client_2.motive = "prueba"
appointment_client_2.users << client2
appointment_client_2.solved = false
appointment_client_2.save!
