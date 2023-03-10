# frozen_string_literal: true

require 'vcpkg_pipeline/core/register'

module VPL
  class Command
    class Reg < Command
      # VPL::Command::Reg::List
      class List < Reg
        self.summary = '查看现有注册表'

        self.description = <<-DESC
          查看现有注册表。
        DESC

        self.arguments = []

        def self.options
          [].concat(super)
        end

        def run
          Register.new.list
        end
      end
    end
  end
end
