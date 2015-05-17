namespace :substitutions do
	desc 'Delete all substitutions'
	task :reset do
		Substitution.all.destroy_all
	end
end
