class User < ApplicationRecord::Base
    has_many : blogs
    validates: password, presence: true,
                lenght { minimum: 8}
    validates: email, presence:true
end