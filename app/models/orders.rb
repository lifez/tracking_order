class Orders < ActiveRecord::Base
  before_save :order_id_process
  belongs_to :user, :class_name => "User", :foreign_key => :user_id


  def order_id_process
    unless self.order_id.include? "#"
      self.order_id = "#" + self.order_id
    end
 end

  def estimate_date
    start_date =  (self.created_at + self.user.start.days).strftime("%d %B %Y")
    end_date = (self.created_at + self.user.end.days).strftime("%d %B %Y")
    "Your Estimate delivery is between #{start_date} an #{end_date} "
  end

end
