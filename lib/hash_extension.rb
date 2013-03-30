class Hash
  def recursive_fetch(keys = [], default = nil)
    keys.inject(self){|value, key|value.try(:[], key)} || default
  end
end
