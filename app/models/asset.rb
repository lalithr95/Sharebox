class Asset < ActiveRecord::Base
	belongs_to :user
	has_attached_file :uploaded_file, url: 'download/assets/:id', path: 'assets/:id/:basename.:extension', styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :uploaded_file, content_type: /\Aimage\/.*\Z/
  validates_attachment_presence :uploaded_file
  #TODO validate attachment size for uploaded_file

  def file_name
  	# TO use directly asset.file_name instead of asset.uploaded_file_file_name
  	uploaded_file_file_name
  end
end
