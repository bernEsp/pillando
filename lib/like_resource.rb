module LikeResource
  def self.call(resource)
    return unless valid_resource?(resource)
    resource.likes_count = resource.likes_count.to_i + 1
    resource
  end

  private
    def self.valid_resource?(resource)
      resource.respond_to?(:likes_count) &&
        resource.respond_to?(:likes_count=) &&
        resource.respond_to?(:save)
    end
end
