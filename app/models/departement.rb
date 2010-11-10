# == Schema Information
# Schema version: 20101110121455
#
# Table name: departements
#
#  id         :integer(4)      not null, primary key
#  region_id  :integer(4)
#  nom        :string(255)
#  code       :string(255)
#  nc         :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Departement < ActiveRecord::Base
  belongs_to :region
end
