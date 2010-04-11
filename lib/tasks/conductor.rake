desc 'Turn conductor into a plugin.'
task :pluginize => [ :environment, "pluginize:clobber" ] do
  mkdir_p('pkg/conductor/lib')
  mkdir_p('pkg/conductor/views')
  mkdir_p('pkg/conductor/public')

  cp_r 'app/controllers/conductor', 'pkg/conductor/lib/conductor'
  cp_r 'app/views/conductor', 'pkg/conductor/views/conductor'
  
  FileList['app/helpers/conductor/*'].each do |helper|
    cp helper, "pkg/conductor/lib/conductor/#{File.basename(helper)}"
  end

  FileList['lib/pluginization/*'].each do |mechanic|
    cp mechanic, "pkg/conductor/#{File.basename(mechanic)}"
  end

  cp 'public/stylesheets/conductor.css', 'pkg/conductor/public/conductor.css'
end

namespace :pluginize do
  task :clobber do
    FileUtils.rm_r('pkg')
  end
end