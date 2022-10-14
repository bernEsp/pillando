module RePostResource
  def self.call(resource:, owner:, resource_object:)
    return unless valid_resource?(resource)
    clone_resource(resource, owner, resource_object)
    resource.repost_count = resource.repost_count.to_i + 1
    resource
  end

  private
    def self.valid_resource?(resource)
      resource.respond_to?(:repost_count) &&
        resource.respond_to?(:repost_count=) &&
        resource.respond_to?(:save)
    end

    def self.clone_resource(resource, owner, resource_object)
      clone_resource = resource_object.new(content: resource.content)
      clone_resource.user_id = owner
      clone_resource.save
    end
end
