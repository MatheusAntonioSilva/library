module V0
  module SessionSerializer
    class SignIn < ActiveModel::Serializer

      attribute(:message) { I18n.t('devise.sessions.signed_in') }
    end
  end
end

