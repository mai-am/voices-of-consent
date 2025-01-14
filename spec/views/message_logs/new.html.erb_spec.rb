require 'rails_helper'

RSpec.describe "message_logs/new", type: :view do
  before(:each) do
    messageable = create(:box_request)
    @message_log = create(:message_log,
           messageable_type: "BoxRequest",
           messageable_id: messageable.id,
           content: "MyText",
           delivery_type: 3,
           delivery_status: "Delivery Status",
           sent_to: create(:user),
           sent_by: create(:user)
    )
  end

  it "renders new message_log form" do
    page = render
    expect(page).to include('react-root')
    expect(page).to include('js/message_log_form')
  end
end
