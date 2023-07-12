require_relative 'api_client'
require_relative 'data_converter'

api_client = ApiClient.new
data_converter = DataConverter.new

# Récupérer les données de l'API
data = api_client.fetch_data('https://jsonplaceholder.typicode.com/posts')

# Convertir les données en CSV
data_converter.convert_to_csv(data, 'donnees.csv')


