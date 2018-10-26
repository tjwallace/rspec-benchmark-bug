require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /posts/:id' do
    let!(:post) { Post.create(title: 'Foo Bar') }

    it 'performs quickly' do
      expect { get post_path(post.id) }.to perform_under(50).ms
    end

    it 'returns http success' do
      get post_path(post.id)
      expect(response).to have_http_status(:success)
    end
  end
end
