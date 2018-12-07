class Order
  attr_reader :items

  include ItemContainer


  def initialize
    @items = Array.new
  end

  def read_credentials_from_file
    @credentials = Array.new
    File.readlines('credentials.txt').each {|i| @credentials << i.to_s}
    @credentials.each(&:chomp)
    @credentials
  end

  def place
    login = read_credentials_from_file[1]
    password = read_credentials_from_file[0]
    thread = Thread.new do # look to the delayed_job gem
      Pony.mail(to: StoreApplication::Admin.email,
                from: "My Store <#{login}>",
                via: :smtp, via_options: {
              address: 'smtp.gmail.com',
              port: '587',
              user_name: login.to_s,
              password: password.to_s,
              authentication: :plain,
              domain: 'mail.google.com'},
                subject: 'New order has been placed', body: 'Please check back you
admin page to see it!')
    end
    while thread.alive?
      puts '.'
      sleep 1
    end
  end
end