require 'rails_helper'

RSpec.describe Post, type: :model do
  let!(:post) { Post.create(title: 'Foo Bar') }

  it 'finds records quickly' do
    expect { Post.find(post.id) }.to perform_under(50).ms
  end

  it 'finds posts that exist' do
    expect(Post.find(post.id)).to eq(post)
  end
end
