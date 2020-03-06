require 'net/ssh'

class CFRun
  def initialize(target)
    @target = target
    @commands = []
  end

  def add(command)
    @commands << command
  end

  def run
    puts "Converging on target #{@target}"

    user = @target[/^[a-zA-Z0-9]+/]
    host = @target[/[a-zA-Z0-9]+$/]

    Net::SSH.start(host, user, :keys => "/Users/tyler/.ssh/id_rsa") do |ssh|

      @commands.each do |command|
        puts "Running command #{command} on host #{host} as user #{user}"
        ssh.exec!(command)
      end
    end
  end
end