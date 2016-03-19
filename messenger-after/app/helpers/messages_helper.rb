module MessagesHelper
  def nested_messages(messages)
    messages.map do |message, sub_messages|
      render message, sub_messages: sub_messages
    end.join.html_safe
  end
end
