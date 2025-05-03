module ImageManager
    extend ActiveSupport::Concern

    def create_new_image(uploaded_file, car_id)
      file_name = "#{SecureRandom.uuid}_#{uploaded_file.original_filename}"
      
      begin
        file = GCS_BUCKET.create_file(uploaded_file.tempfile, file_name)
      rescue StandardError
        return false
      end
    
      @new_image = Image.new(url: file.public_url, name: file_name, car_id: car_id)
    
      if @new_image.save
        true
      else
        file.delete
        false
      end
    end
    
    def delete_selected_image(image)
      # Extract just the filename from the full URL
      file_name = File.basename(URI.parse(image.url).path)
    
      file = GCS_BUCKET.file(file_name)
      if file
        file.delete
      else
        return false
      end
    
      if image.destroy
        true
      else
        false
      end
    end
    
    
    


end 