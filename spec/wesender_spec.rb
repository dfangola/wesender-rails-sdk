require "spec_helper"

describe "Test connection with API" do
    it "Api response == 200" do
        
        my_app = WesenderSMS.new ENV["WESENDER_API_KEY"]
        response = my_app.send(["913747220"], "Update gem Ruby")

        puts "=="*20
        p response
        puts "=="*20

        expect(response["code"]).to eq(200)
    end
end