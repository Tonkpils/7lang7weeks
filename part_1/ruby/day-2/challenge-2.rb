class Tree
	attr_accessor :node_name, :children

	def initialize(tree={})
		tree.each_pair do |root, children|
			root_children = []

			children.each_pair do |sub_root, sub_tree|
				root_children << Tree.new({ sub_root => sub_tree })
			end

			@node_name = root
			@children = root_children
		end
	end

	def visit_all(&block)
		visit &block
		children.each { |c| c.visit_all &block }
	end

	def visit(&block)
		block.call self
	end
end

tree = Tree.new({'grandpa' => 
					{'dad' => {'child 1' => {}, 'child 2' => {}}, 
					 'uncle' => {'child 3' => {}, 'child 4' => {}}}
				})

puts "VISIT..."

tree.visit { |node| puts node.node_name }

puts "VISIT ALL..."
tree.visit_all { |node| puts node.node_name }