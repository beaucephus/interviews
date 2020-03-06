require 'yaml'
require_relative 'CFFile.rb'
require_relative 'CFRun.rb'

config = YAML.load(File.read(ARGV[0]))

resources = config["resources"]
targets = config["targets"]

puts config

targets.each do |target|

  run = CFRun.new(target)

  resources.each do |resource|
    case resource["type"]
    when "file"
      run.add(
        CFFile.new(resource["name"], target).send(resource["action"])
      )
    else
      raise "Failed to match resource type with a resource."
    end
  end

  run.run
end
