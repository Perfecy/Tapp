class FormController < ApplicationController


protect_from_forgery except: :pp
def pp
   @data=params[:f]
  if(!@data.nil?)
  if(@data.original_filename == 'UrLico.csv')
    @fiz=@data
    File.open('/Users/kirill/Library/Application Support/Neo4j Desktop/Application/neo4jDatabases/database-3b1b39be-dd4d-419d-bb65-d869c204675c/installation-4.1.0/import/'+@fiz.original_filename,'wb') do |file|
    file.write(@fiz.read)
    puts @fiz
    puts @ur
  end
  @data=nil
  end
end
@data=params[:a]
  if(!@data.nil?)
  if(@data.original_filename == 'FizLico.csv')
    @ur=@data
    File.open('/Users/kirill/Library/Application Support/Neo4j Desktop/Application/neo4jDatabases/database-3b1b39be-dd4d-419d-bb65-d869c204675c/installation-4.1.0/import/'+@ur.original_filename,'wb') do |file|
    file.write(@ur.read)
    puts @fiz
    puts @ur
  end
  @data=nil
  end
end
# ActiveGraph::Base.driver = Neo4j::Driver::GraphDatabase.driver('neo4j::/localhost:7687')
#
#  me = ActiveGraph::Base.query('MATCH (n) RETURN n').first.found
#   # File.open(Rails.root.join('public','uploads',@data.original_filename),'wb') do |file|
# puts me

end
end
