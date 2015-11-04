file "hello.txt" do
  mode "0400"
  owner "root"
  group "root"
  content "Hello\n"
  action :create
end
