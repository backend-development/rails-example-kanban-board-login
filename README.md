# README


# How this app was built

    rvm use 3.1.2
    nvm use 16.17
    rails new kanban --database=postgresql --webpacker
    cd kanban
    rails db:create
    rails generate scaffold board title
    rails db:migrate
    rails generate scaffold card title description status board:references
    rails db:migrate

