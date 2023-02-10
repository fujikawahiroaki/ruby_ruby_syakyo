require "minruby"

tree = minruby_parse("1 + 2 * 4")

def evaluate(tree)
  case tree[0]
  when "lit"
    tree[1]
  when "+"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left + right
  when "-"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left - right
  when "*"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left * right
  when "/"
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left / right
  end
end

p evaluate(tree)
