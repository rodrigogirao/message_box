class UserMessagesFinder
  attr_reader :messages

  def initialize(messages: Message.all, user:)
    @messages = messages
    @user = user
  end

  def inbox
    @messages = @messages.not_archived.where(receiver: @user)
    self
  end

  def archived
    @messages = @messages.archived.where(receiver: @user)
    self
  end
end
