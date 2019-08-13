# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Josh", email: "person@example.com")
  end
end
