class CloudVps
  attr_accessor :id, :plan_id, :hostname, :password, :email, :phone

  def initialize(params = {})
    @id = params[:id]
    @plan_id = params[:plan_id]
    @hostname = params[:hostname]
    @password = params[:password]
    @email = params[:email]
    @phone = params[:phone]
  end

  def self.all
    [
      CloudVps.new(
        {
          id: 1,
          plan_id: 1,
          hostname: "ns1-hostname-1",
          password: "password1",
          email: "email1@locaweb.com",
          phone: "123456789"
        }
      ),
      CloudVps.new(
        {
          id: 2,
          plan_id: 2,
          hostname: "ns2-hostname-2",
          password: "password2",
          email: "email2@locaweb.com",
          phone: "987654321"
        }
      ),
      CloudVps.new(
        {
          id: 3,
          plan_id: 3,
          hostname: "ns3-hostname-3",
          password: "password3",
          email: "email3@locaweb.com",
          phone: "55555555"
        }
      )
    ]
  end

  def self.find(id)
    all.select { |p| p.id == id.to_i }.first
  end
end
