require 'json'
json_string = File.read('data.json')
data = JSON.parse(json_string, :symbolize_names => true)
puts "<table><thead><tr><th>Id</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Gender</th><th>IP Addree</th></tr></thead><tbody>"
data.each do |row| 
  puts "<tr><td>%{id}</td><td>%{first_name}</td><td>%{last_name}</td><td>%{email}</td><td>%{gender}</td><td>%{ip_address}</td></tr>" % row
end
puts "</tbody></table>"
