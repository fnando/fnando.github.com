module Helper
  def version(name)
    haml File.read(GLUE_ROOT + "/views/version/_#{name}.haml")
  end
end