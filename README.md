# README

## Welcome to My Cute Blog

My Cute Blog project was written in 2017. The main purpose was to create a simple blog to gain practice back when I was learning Rails.

This project was created using a Rails generator:

    $ rails new my-cute-blog

## Core Stories:

1. As a blog user, I want to see a list of all the articles
2. As a blog user, I want to add new articles
3. As a blog user, I want to read an article and see all of its comments
4. As a blog user, I want to edit my article
5. As a blog user, I want to permanently delete my article
6. As a blog user, I want to add comments to an article
7. As a blog user, I want to delete comments from an article

## System dependencies

* Ruby 2.3.3

* Rails 5.1.3

* PostgreSQL 9.6.3

## Configuration

    $ git clone https://github.com/gloriacruz/my-cute-blog.git

    $ cd my-cute-blog

    $ bundle install

    $ rails server

## Database

The website uses a Postgres database

* postgres (PostgreSQL) 9.6.3

To manually start the server

    $ pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

### Database creation

    $ rails db:create

### Database initialization

    $ rails db:migrate

## Routes

    $ rails routes

Output:

              Prefix Verb   URI Pattern                                       Controller#Action
           welcome_index GET    /welcome/index(.:format)                          welcome#index
        article_comments GET    /articles/:article_id/comments(.:format)          comments#index
                         POST   /articles/:article_id/comments(.:format)          comments#create
     new_article_comment GET    /articles/:article_id/comments/new(.:format)      comments#new
    edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format) comments#edit
         article_comment GET    /articles/:article_id/comments/:id(.:format)      comments#show
                         PATCH  /articles/:article_id/comments/:id(.:format)      comments#update
                         PUT    /articles/:article_id/comments/:id(.:format)      comments#update
                         DELETE /articles/:article_id/comments/:id(.:format)      comments#destroy
                articles GET    /articles(.:format)                               articles#index
                         POST   /articles(.:format)                               articles#create
             new_article GET    /articles/new(.:format)                           articles#new
            edit_article GET    /articles/:id/edit(.:format)                      articles#edit
                 article GET    /articles/:id(.:format)                           articles#show
                         PATCH  /articles/:id(.:format)                           articles#update
                         PUT    /articles/:id(.:format)                           articles#update
                         DELETE /articles/:id(.:format)                           articles#destroy
                    root GET    /                                                 welcome#index

## Deployment

After starting the server, navigate to http://localhost:3000

## Contributing

If you would like to contribute to My Cute Blog! Please email me [ally.cruz@gmail.com](mailto:ally.cruz@gmail.com).

## License

My Cute Blog is released under the [MIT License](https://opensource.org/licenses/MIT).
