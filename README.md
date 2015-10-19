PROTO SPACE
====

Overview
プロトタイプ投稿サイト

## Description
protospaceとはユーザーがプロトタイプを投稿し、それに対し他のユーザーがコメントやlikeができるアプリケーションです。

##DB設計
作成するテーブルとカラム


users
- id
- name
- avatar
- profile
- member
- works
- email
- password

prototypes
- id
- catchcopy
- concept
- user_id

thumbnails
- id
- prototype_id

small_thumbnails
- id
- prototype_id

comments
- id
- prototype_id
- user_id
- text

likes
- user_id
- prototype_id

tags
- id
- name

prototype_tags
- id
- tags_id
- prototypes_id


##アソシエーション


    class User < ActiveRecord::Base
      has_many :comments
      has_many :prototypes
      has_many :likes
    end

    class Prototype < ActiveRecord::Base
      belongs_to :user
      belongs_to :thumnail
      has_many :small_thumbnails
      has_many :likes
      has_many :prototype_tags
      has_many :tags, through: :prototype_tags
    end

    class Comment < ActiveRecord::Base
      belongs_to :user
    end

    class Tag < ActiveRecord::Base
      has_many :prototype_tags
      has_many :prototypes, through: :prototype_tags
    end

    class PrototypeTag < ActiveRecord::Base
      belongs_to :tag
      belongs_to :prototype
    end

    class Thumbnail < ActiveRecord::Base
      belongs_to :prototype
    end

    class SmallThumbnail < ActiveRecord::Base
      belongs_to :small_thumbnail
    end

