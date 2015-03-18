class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  before_create do

    # Проверка на наличие пользователей.
    # Если ты первый, то удача повернулась к тебе лицом и ты становишься админом!! Та-да!!
      if User.first.nil?
        self.admin = 1
      end

  end

end
