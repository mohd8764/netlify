#  load ruby YAML library
require 'yaml'

# ----------------------------------------------------------------------

# load courselist file from site variables 
curr_courses_var = YAML.load(File.read("./_data/courselist.yml"))

# create a project course by default 
if curr_courses_var["courses"] == []
    temp = {"courses"=>[{"group"=>"Project", "name"=>"Project"}]}
    File.open("./_data/courselist.yml", "w") { |file| file.write(temp.to_yaml) }
    curr_courses_var = YAML.load(File.read("./_data/courselist.yml"))
end

# extract current courses
curr_course_list = curr_courses_var["courses"].map{|x| x["name"] }

# ----------------------------------------------------------------------

# load grouplist file from site variables 
curr_group_var = YAML.load(File.read("./_data/grouplist.yml"))

# create a project course by default 
if curr_group_var["coursegroups"] == []
    temp = {"coursegroups"=>[{"name"=>"Project"}]}
    File.open("./_data/grouplist.yml", "w") { |file| file.write(temp.to_yaml) }
    curr_group_var = YAML.load(File.read("./_data/grouplist.yml"))
end

# extract coursegroup list
curr_group_list = curr_group_var["coursegroups"].map{|x| x["name"]}

# ----------------------------------------------------------------------

# debug
# puts curr_admin_config["collections"][1]["fields"][4]["options"]
# puts curr_admin_config["collections"][0]["files"][0]["fields"][0]["fields"][2]["options"]

# debug
# print curr_course_list
# print curr_group_list

# ----------------------------------------------------------------------

# load current admin config file 
curr_admin_config = YAML.load(File.read("./admin/config.yml"))

# assign new courselist to select widget options:
curr_admin_config["collections"][1]["fields"][4]["options"] = curr_course_list

# assign new grouplist to select widget options:
curr_admin_config["collections"][0]["files"][0]["fields"][0]["fields"][2]["options"] = curr_group_list

# debug
# puts curr_admin_config["collections"][1]["fields"][4]["options"]
# puts curr_admin_config["collections"][0]["files"][0]["fields"][0]["fields"][2]["options"]


# ----------------------------------------------------------------------

# update admin current config file
File.open("./admin/dirty_config.yml", "w") { |file| file.write(curr_admin_config.to_yaml) }

# write to new file
# File.open("mock_config.yml", "w") { |file| file.write(curr_admin_config.to_yaml) }

# ----------------------------------------------------------------------

# extract current courses
# group_list = site_vars["courses"].map{|x| x["group"] }
# update admin current config file
# File.open("./_data/grouplist.yml", "w") { |file| file.write(group_list.to_yaml) }

# ----------------------------------------------------------------------

curr_admin_config = File.open("./admin/dirty_config.yml")
curr_admin_config.first

new_admin_config = File.new("./admin/config.yml","w+")
curr_admin_config.each { |line| new_admin_config.puts(line) } 

# ----------------------------------------------------------------------
