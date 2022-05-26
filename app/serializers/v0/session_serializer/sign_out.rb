module V0
  module SessionSerializer
    class SignOut < ActiveModel::Serializer

      attribute(:message) { I18n.t('devise.sessions.signed_out') }
    end
  end
end

