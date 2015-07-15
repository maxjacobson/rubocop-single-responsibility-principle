require "rubo_cop/single_responsibility_principle/version"

module RuboCop
  module Cop
    module Style
      class OnlyOneMethodPerClass < Cop
        def investigate(processed_source)
          ast = processed_source.ast
          return unless ast

          ast.each_node(:class) do |node|
            _, _, body = *node
            # TODO: consider attr_accessors as well
            # TODO: distinguish between public and private
            if (count = body.each_child_node.count(&:def_type?)) > 1
              # TODO: what should the second thing be...?
              add_offense(node, :expression, "Detected #{count} methods; only one is allowed.")
            end
          end
        end
      end
    end
  end
end
