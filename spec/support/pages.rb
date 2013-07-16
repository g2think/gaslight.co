#
# instantiate a new page object and keep a handle as needed
#
def method_missing(method, *args, &block)
  if method =~ /_page$/
    variable_name = "@#{method}"
    ivar = instance_variable_get(variable_name)

    unless ivar
      page = method.to_s.classify.constantize.new
      ivar = instance_variable_set(variable_name, page)
    end
    ivar
  else
    super
  end
end

