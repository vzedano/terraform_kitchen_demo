control "s3_bucket" do

    describe 's3 bucket' do
        subject do 
            json(attribute("terraform_state").chomp)
                .resources
                .select {|r| r['name'] == 'terraform-kitchen-demo' }[0] 
        end
        it { should_not be_nil }
    end

    describe attribute("bitbucket_arn") do
        it { should match /arn:aws:s3:::.*/ }
    end
end