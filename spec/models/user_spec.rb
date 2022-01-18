require 'rails_helper'

RSpec.describe User, type: :model do
  # current_user = User.first_or_create(email: 'testing@testing.com', password: 'testing', password_confirmation: "testing")
  
  it 'has an email' do
    user = User.new(
      email: '',
      password: 'testing',
      password_confirmation: 'testing'
    )

    expect(user).to_not be_valid
    user.email = 'test@testing.com'
    expect(user).to be_valid
  end

  it 'has a password' do
    user = User.new(
      email: 'test@testing.com',
      password: '',
      password_confirmation: 'testing'
    )

    expect(user).to_not be_valid

    user.password = 'testing'
    expect(user).to be_valid
  end

  it 'password confirmation match a password' do
    user = User.new(
      email: 'test@testing.com',
      password: '1234',
      password_confirmation: 'testing'
    )

    expect(user).to_not be_valid
    
    user.password = 'testing'
    expect(user).to be_valid
  end

end
