require 'test-kitchen/cli'
require 'test-kitchen/runner'

module TestKitchen
  module CLI
    class Kitchen
      class Create < Kitchen

        banner "kitchen create (options)"

        def run
          options = {
            :platform => config[:platform],
            :project => config[:project]
          }
          runner = TestKitchen::Runner.targets[config[:runner]].new(options)
          runner.provision
        end

      end
    end
  end
end
