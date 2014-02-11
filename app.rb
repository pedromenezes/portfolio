# coding: utf-8

$projects = YAML.load_file('data/projects.yml')
$crew = YAML.load_file('data/crew.yml')

helpers do
  def render_project(project_name)
    erb :'_project', :locals => $projects[project_name]
  end

  def render_crew(member_name)
    erb :'_member', :locals => $crew[member_name]
  end
end

get '/' do
  erb :index, :locals => {:projects => $projects.keys}
end

get '/css/main.css' do
  scss :'css/layout'
end