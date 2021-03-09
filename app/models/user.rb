class User < ApplicationRecord

    attr_reader :password
    
    before_validation :ensure_session_token!
    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :session_token, presence: true, uniqueness: true
    validates :password, length: { minimum: 8, allow_nil: true }

    def self.find_by_credentials(username, password)
      user = User.find_by(username: username)
      if user && user.is_password?(password)
        user
      else 
        nil
      end
    end
    
    def password=(password)
      @password = password
      self.password_digest = BCrypt::Password.create(password)
    end
    
    def is_password?(password)
      BCrypt::Password.new(self.password_digest) == password
    end
    
    def reset_session_token!
      self.session_token = SecureRandom::urlsafe_base64
      self.save!
      self.session_token
    end
    
    def ensure_session_token!
      self.session_token ||= SecureRandom::urlsafe_base64
    end

    has_many :stories,
        foreign_key: :user_id,
        class_name: :Story

    has_many :comments,
        foreign_key: :commenter_id,
        class_name: :Comment

end
