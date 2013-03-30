class Hash
  def recursive_fetch *args
    options = args.last.class == Hash ? args.pop : {}
    args.inject(self){|value, key|value.try(:[], key)} || (options[:default] || nil)
  end
end
