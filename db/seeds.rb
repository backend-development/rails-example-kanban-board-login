# frozen_string_literal: true

b1 = Board.create(title: 'Semesterprojekt')
b1.cards.create(title: 'Konzept', description: 'Abgabe am 26.Oktober', status: 'backlog')
b1.cards.create(title: 'Wichtigster Use Case', description: 'definiere den wichtigstesn Use Case', status: 'backlog')

b2 = Board.create(title: 'Weihnachten')
b2.cards.create(title: 'Geschenk für Mama', description: 'Recherche notwendig!', status: 'backlog')

u = User.create({email: "mariam@example.com",
                   password: 'asecret',
                   password_confirmation: 'asecret'})
u.confirm


u = User.create({email: "yusuf@example.com",
                   password: 'badpassword123',
                   password_confirmation: 'badpassword123'})
u.confirm