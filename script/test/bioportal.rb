# Ruby querying of the BioPortal triplestore using standard Ruby libraries and the JSON rubygem
require 'rubygems'
require 'json'
require 'open-uri'
require 'cgi'


apikey = "3a6ded3d-0768-4d32-9608-11fc205f37a2"
endpoint = "http://sparql.bioontology.org/sparql/"
query = <<-EOS
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdf: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX obo: <http://www.geneontology.org/formats/oboInOWL#>
SELECT DISTINCT ?label ?synonym {    
    <http://purl.obolibrary.org/obo/HP_0002072> rdfs:label  ?label;
                                                obo:hasExactSynonym ?synonym.
                                                }
EOS
# Returns a JSON object with the results of a SPARQL query
def query(query, apikey, endpoint, accept = "application/xml")
xml = open("#{endpoint}?query=#{CGI.escape(query)}&apikey=#{apikey}", "Accept" => accept).read
#JSON.parse(json)
end
puts query(query, apikey, endpoint)