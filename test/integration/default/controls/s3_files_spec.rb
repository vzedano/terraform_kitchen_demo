control "s3_files" do
    describe 's3 file1' do
        subject do 
            json(attribute("terraform_state").chomp)
                .resources
                .select {|r| r['name'] == 'file1' }[0] 
        end
        it { should_not be_nil }
    end
    describe 's3 file2' do
        subject do 
            json(attribute("terraform_state").chomp)
                .resources
                .select {|r| r['name'] == 'file2' }[0] 
        end
        it { should_not be_nil }
    end
    describe attribute("file_1_content") do
        it { should match /^.*T.*Z$/ }
    end
    describe attribute("file_2_content") do
        it { should match /^.*T.*Z$/ }
    end
end