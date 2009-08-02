GLUE_ROOT = File.dirname(__FILE__)

require "glue/rake"

desc "Export all files to my Github page"
task :export do
  Rake::Task["glue:generate"].invoke
  
  root = File.expand_path("~/Sites/github/fnando.github.com")
  
  Dir["public/**/*.{html,css,xml,txt,js,png,jpg,ico}"].each do |file|
    relative_path = file.gsub(/^public\//, "")
    base_dir = File.dirname(relative_path)
    
    FileUtils.mkdir_p File.join(root, base_dir) unless base_dir == "."
    FileUtils.cp file, File.join(root, relative_path)
  end
end