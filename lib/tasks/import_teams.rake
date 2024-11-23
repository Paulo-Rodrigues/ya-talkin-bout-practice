namespace :import do
  desc "Importando os 30 times"
  task teams: :environment do
    require 'csv'

    file_path = Rails.root.join('lib', 'tasks', 'nba_teams.csv')

    unless File.exist?(file_path)
      puts "Arquivo #{file_path} não encontrado"
      exit
    end

    puts "inicia importação"

    CSV.foreach(file_path, headers: true) do |row|
      team = Team.find_or_initialize_by(abbreviation: row['abbreviation'])
      team.name = row['name']
      team.city = row['city']
      team.conference = row['conference']
      team.division = row['division']
      team.championships = row['championships']

      if team.save
        puts "Time #{team.name} cadastrado"
      else
        puts "Erro ao salvar o time: #{team.name}"
      end

      puts "import concluido"
    end
  end
end