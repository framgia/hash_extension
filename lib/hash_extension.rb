class Hash
  def recursive_fetch *args
    options = args.last.class == Hash ? args.pop : {}
    args.inject(self){|value, key|(value.key?(key) ? value[key] : nil) || (options[:default] || nil)}
  end

  def update_counter! key, addition = 1
    if self.key? key 
      self[key] += addition
    else
      self[key] = addition
    end
  end
end
