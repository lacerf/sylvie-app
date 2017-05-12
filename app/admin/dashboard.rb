ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Tickets" do
          ol do
            Ticket.order(created_at: :desc).limit(5).map do |ticket|
              li (ticket.title)
            end
          end
        end
      end
      
      
      
    end
  end
end
