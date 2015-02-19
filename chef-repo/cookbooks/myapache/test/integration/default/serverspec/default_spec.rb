require 'spec_helper'

describe "myapache::apache" do
  it "has httpd package installed" do
    expect(package('httpd')).to be_installed
  end

  it "displays home page" do
    expect(command("curl http://localhost").stdout).to match /Hello, world/
  end

  it "displays platform information" do
    expect(command("curl http://localhost").stdout).to match /This is a centos 6.5 server/
  end
end


