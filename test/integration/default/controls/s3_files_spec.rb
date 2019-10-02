control "s3_files" do
    describe attribute("file_1_content") do
        it { should match /^.*T.*Z$/ }
    end
    describe attribute("file_2_content") do
        it { should match /^.*T.*Z$/ }
    end
end