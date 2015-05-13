# -*- coding: utf-8 -*-

require 'sequel'

Sequel.connect("mysql2://localhost/tiny_web_example?user=root")

class Comment < Sequel::Model
  plugin :validation_helpers
  plugin :timestamps, :update_on_create => true

  private
  def before_validation
    if self.display_name.size > 10
      errors.add(:display_name, "size must be 10 or less.")
    end

    super
  end
end


