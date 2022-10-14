module DefaultResponses
  extend ActiveSupport::Concern

  private
    # handles post responses
    # TODO: Handle format responses
    def create_response(resource, path=nil)
      respond_to do |format|
        if resource.save
          successfull_response(format, resource, path)
        else
          failure_response(format, resource)
        end
      end
    end

  protected
    def successfull_response(format, resource, path)
      format.html do
        resource_name = resource.class.to_s
        path = path || send("#{resource_name.tableize}_path".to_sym)
        redirect_to(
          path, notice: "#{resource_name} was successfully created."
        )
      end
      format.json { render :show, status: :created, location: resource }
    end

    def failure_response(format, resource)
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: resource.errors, status: :unprocessable_entity }
    end

end
