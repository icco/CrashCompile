#!/usr/bin/ruby1.8

require 'rubygems'
require 'sinatra'

get '/' do
   erb :index
end

post '/' do
   i = params[:in]
   o = params[:out]
   ci = params[:hasI]
   cv = params[:hasV]

   v = cv == "on" ? '-v' : '';

   out = `cp #{v} #{i} #{o} 2>&1`

   if out.empty?
      erb :yes
   else
      erb :no, :locals => {:out => out}
   end
end
