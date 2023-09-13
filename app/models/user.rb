class User < ApplicationRecord
    has_many :articles, dependent: :destroy
    after_create_commit :log_user_saved_to_db
    after_update_commit :log_user_saved_to_db

    after_initialize do |user|
      puts "You have initialized an object!"
    end
  
    after_find do |user|
      puts "You have found an object!"
    end

    after_touch do |user|
        puts "You have touched an object"
      end
    
      
      
    private
       def log_user_saved_to_db
        puts 'User was saved to database'
       end
      
  end
  