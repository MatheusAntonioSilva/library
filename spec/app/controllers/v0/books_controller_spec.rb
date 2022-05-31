require 'rails_helper'

describe ::V0::BooksController, type: :controller do

  describe '#create' do
    let(:params) { { content: content } }


    context 'when user is not authenticated' do
    end

    context 'when user is authenticated' do
      context 'successfully' do
        it 'responses 201' do
          expect(response.code).to eq('201')
          expect(JSON.parse(response.body).keys).to eq(['id', 'content', 'user', 'post_reposted', 'created_at', 'updated_at'])
        end
      end

      context 'when goes something wrong' do
        it 'responses 422' do
          expect(response.code).to eq('422')
          expect(JSON.parse(response.body).keys).to eq(['tag', 'error'])
        end
      end
    end
  end
end
