# frozen_string_literal: true

# else / https://www.notion.so/highereducation/else-de053abe2b024934b0cacafcf4348071
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
