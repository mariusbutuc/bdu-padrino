require File.dirname(__FILE__) + '/config/boot.rb'
require 'thor'
require 'padrino-core/cli/rake'

PadrinoTasks.init

desc 'Hey Padrino, Marius greets you for the need to write a default Rake task!'
task default: %w[ ar:create ar:migrate seed ]