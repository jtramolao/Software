# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  user = User.new(
      :email                 => "admin@admin.com",
      :password              => "123456",
      :password_confirmation => "123456"
  )
  user.save!
