class Stach
  require_relative "stach/version"

  def initialize(template = "", record = {})
    @template = template || ""
    @record = record || {}
  end

  def to_s
    @record.reduce(@template) do |content, (key, value)|
      content.gsub(/\{\{#{key}\}\}/, value)
    end
  end
end
