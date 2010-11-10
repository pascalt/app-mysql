# == Schema Information
# Schema version: 20101110121455
#
# Table name: articles
#
#  id          :integer(4)      not null, primary key
#  nom         :string(255)
#  commentaire :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Article < ActiveRecord::Base
end
