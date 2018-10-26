require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET #show' do
    let!(:post) { Post.create(title: 'Foo Bar') }

    it 'performs quickly' do
      expect { get :show, params: { id: post.id } }.to perform_under(50).ms
    end

    it 'returns http success' do
      get :show, params: { id: post.id }
      expect(response).to have_http_status(:success)
    end
  end
end
