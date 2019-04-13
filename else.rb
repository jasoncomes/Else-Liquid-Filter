# frozen_string_literal: true

# else / https://github.com/jasoncomes/Else-Liquid-Filter
# If the input variable is not true then this will display the output.
# {{ image | else: " has-image" }}

module Else
  def else(content, else_content = '')
    content = content.to_s

    # Return if empty
    return if else_content.empty?

    # Return results
    content.nil? || content.empty? || content == 'false' ? else_content : ''
  end
end

Liquid::Template.register_filter(Else)
