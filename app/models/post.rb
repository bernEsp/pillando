class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :content
  after_create_commit { broadcast_prepend_to('post') }
  after_update_commit { broadcast_prepend_to('post') }
end
