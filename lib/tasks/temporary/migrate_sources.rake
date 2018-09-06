namespace :sources do
  desc 'Migrate Snippet source URLs into the new Source model'
  task migrate: :environment do
    snippets = Snippet.all
    puts "Going to update #{snippets.count} snippets"

    ActiveRecord::Base.transaction do
      snippets.each do |snippet|
        source_id = Source.find_or_create_by!(url: snippet.source).id
        snippet.update!(source_id: source_id)
        print '.'
      end
    end

    puts ' All done now!'
  end
end
