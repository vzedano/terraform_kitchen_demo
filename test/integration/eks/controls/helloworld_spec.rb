require 'net/https'

control "helloworld" do
    describe 'helloworld app' do
        subject do
            url = attribute('helloworld_app_url')
            
            http = Net::HTTP.new(url, attribute('helloworld_app_port'))

            http.use_ssl = false

            http.get('/').body
        end
        
        it { should match /.*Hello world!.*/ }
    end
end