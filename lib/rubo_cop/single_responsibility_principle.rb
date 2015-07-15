require "rubocop"
require "rubo_cop/single_responsibility_principle/version"

module RuboCop
  module Cop
    module Style
      # Require that classes implement exactly one method
      class OnlyOneMethodPerClass < Cop
        def investigate(processed_source)
          ast = processed_source.ast
          return unless ast

          ast.each_node(:class) do |node|
            # TODO: consider attr_accessors as well
            # TODO: distinguish between public and private
            _, _, body = *node
            count = body.each_child_node.count(&:def_type?)
            next if count == 1

            # TODO: what should the second thing be...?
            msg = "Detected #{count} methods; only one is allowed."
            add_offense(node, :expression, msg)
          end
        end
      end
    end
  end
end
