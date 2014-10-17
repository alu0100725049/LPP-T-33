task :default => :tu

desc "Pruebas unitarias de la clase Complex"
task :tu do
  sh "ruby -I. test/tc_complex.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
  sh "ruby -I. test/tc_complex.rb -n /simple/"
end
