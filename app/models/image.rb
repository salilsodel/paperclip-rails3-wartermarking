require 'paperclip_processors/watermark'

class Image < ActiveRecord::Base
  
  has_attached_file :image, :processors => [:watermark],
    :styles => { :mini => '0x100', :small => '0x200',  :large => '500x0', :tall => '0x400',
      :preview => {
        :geometry => '640x480>',
        :watermark_path => "#{Rails.root}/public/images/watermark.png",
        :position => 'Center'
      }
    },      
    :url => "/assets/images/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"
    
    
end


 