# RSpec.describe 'Post' do           #
#   context 'before publication' do  # (almost) plain English
#     it 'cannot have comments' do   #
#       expect { Post.create.comments.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
#     end
#   end
# end

# require 'rails_helper'

# RSpec.describe Event, type: :model do 
#   current_user = User.find_or_create!(email: 'masonev@gmail.com', password:'123456', password_confirmation: 'password')
#   it 'has a title' do
#   end
# end