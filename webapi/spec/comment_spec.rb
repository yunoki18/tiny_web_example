# -*- coding: utf-8 -*-

require_relative 'spec_helper'

describe Webapi::Models::Comment do
  it "create a new comment." do
    comment = Webapi::Models::Comment.create(:display_name => "spec test",
                                             :comment => "test comment.")
  end

  # it "create a new comment 2." do
  #   comment = Webapi::Models::Comment.create(:display_name => "spec test 2",
  #                                            :comment => "test comment.")
  # end
end
