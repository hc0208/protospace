PROTO SPACE
====

Overview
プロトタイプ投稿サイト

## Description
protospaceとはユーザーがプロトタイプを投稿し、それに対し他のユーザーがコメントやlikeができるアプリケーションです。

##DB設計
作成するテーブルとカラムとその型


users
- id
- name         string
- avatar       text
- profile      text
- member       text
- works        text
- email
- password

prototypes
- id
- title        string
- catchcopy    text
- concept      text
- user_id      integer
- likes_count  integer
- tag_list

thumbnails
- id
- prototype_id integer
- image        text
- role         integer

comments
- id
- prototype_id integer
- user_id      integer
- text         text

likes
- id
- user_id      integer
- prototype_id integer

##アソシエーション


    class User < ActiveRecord::Base
      has_many :comments
      has_many :prototypes
      has_many :likes
    end

    class Prototype < ActiveRecord::Base
      belongs_to :user
      has_many :thumbnails
      has_many :comments
      has_many :likes
    end

    class Comment < ActiveRecord::Base
      belongs_to :user
      belongs_to :prototype
    end

    class Like < ActiveRecord::Base
      belongs_to :user
      belongs_to :prototype
    end

    class Thumbnail < ActiveRecord::Base
      belongs_to :prototype
      enum role: %i(main sub)
    end
