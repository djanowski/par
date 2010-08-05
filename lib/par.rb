class Par
  VERSION = "0.0.1"

  def self.new(source, options = {})
    File.popen("par #{options.to_a.join(" ")}", "r+") do |io|
      io.write source
      io.close_write
      io.read
    end
  end
end

export(Par) if defined?(export)
