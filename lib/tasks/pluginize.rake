desc 'Turn conductor into a plugin.'
task :pluginize => :environment do
  mkdir_p('pkg/conductor')

  cp_r 'app/controllers/conductor', 'pkg/conductor/lib'
  cp_r 'app/views/conductor', 'pkg/conductor/lib/views'
  
  FileList['app/helpers/conductor/*'].each do |helper|
    cp_r helper, "pkg/conductor/lib/conductor/#{File.basename(helper)}"
  end
end

namespace :pluginize do
  task :clobber do
    FileUtils.rm_r('pkg')
  end
end