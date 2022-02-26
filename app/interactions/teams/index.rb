# frozen_string_literal: true

require "active_interaction"

module Teams
  class Index < ActiveInteraction::Base
    def execute
      return errors.add(:base, :invalid, message: "foo")
    end
  end
end
