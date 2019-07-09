require 'sinatra'
# external dependencies
require 'rack'
require 'tilt'
require "rack/protection"

# stdlib dependencies
require 'thread'
require 'time'
require 'uri'


set :bind, '0.0.0.0'

post '/' do
  p input = JSON.parse(request.body.read)
  list(input)
  #list(JSON.parse(request.body.read))
  # push = JSON.parse(request.body.read)
  # list(push)
end


def list names
  if names.size.eql?(0)
    ""
  elsif names.size.eql?(1)
    names[0]["name"]
  else
    array_first_names = names.map { |name| name["name"] }
    names.first(array_first_names.size - 1).map do |name|
      p name["name"]
    end.join(", ") + " & " + array_first_names[-1]
  end
end

