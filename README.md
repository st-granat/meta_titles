# MetaTitles

Meta Titles for Rails Backend App in one .yml file

## Installation

Add this line to your application's Gemfile:

    gem 'meta_titles'

## Usage

1. Edit your controller to include this gem functionality:

    class Admin::ApplicationController < ApplicationController
      build_meta_titles
      ...

2. Edit file config/locales/meta_titles.yml with your meta titles:

    ru:
      meta_titles:
        admin:
          pages:
            index: Страницы
            show: Просмотр страницы
            new: Создание страницы
            create: Создание страницы
            edit: Редактирование страницы
            update: Редактирование страницы
          ...

3. Prepare your layout view to print @meta_title variable.

### Enjoy!
