class MessagesController < ApplicationController
    set :default_content_type, 'application/json'

    get '/messages' do
        messages = Message.all
        messages.to_json
    end

    post '/messages/new' do
        message = Message.create(
            message_sender_id: params[:message_sender],
            message_receiver_id: params[:message_reciever],
            message: params[:message]
        )
        message.to_json
    end

    post '/messages/conversation' do
        messages_sent = Message.where('message_sender_id = ? AND message_receiver_id = ?', params[:message_sender], params[:message_reciever])
        messages_recieved = Message.where('message_sender_id = ? AND message_receiver_id = ?', params[:message_reciever], params[:message_sender])
        sender = User.where('id = ?', params[:message_sender])
        receiver = User.where('id = ?', params[:message_reciever])
        conversation = [messages_sent + messages_recieved]
        
        {
            sender: sender, 
            reciever: receiver, 
            conversation: conversation
        }.to_json
    end

    post '/messages/test' do
        messages_sent = Message.where('message_sender_id = ?', params[:sender])
        # messages_sent = Message.where('message_sender_id = ? AND message_receiver_id = ?', params[:sender], params[:reciever])
        # messages_recieved = Message.where('message_sender_id = ? AND message_receiver_id = ?', params[:message_reciever], params[:message_sender])
        # [messages_sent, messages_recieved].to_json
        # Message.all.to_json
        params[:sender].to_json
        # "jello"
    end


end