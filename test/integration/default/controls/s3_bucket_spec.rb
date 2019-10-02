control "s3_bucket" do
    describe attribute("bitbucket_arn") do
        it { should match /arn:aws:s3:::.*/ }
    end
end