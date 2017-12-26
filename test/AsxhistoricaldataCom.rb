# test/AsxhistoricaldataCom.rb

test_dir = File.dirname(File.expand_path(__FILE__))
$LOAD_PATH.unshift(test_dir) unless $LOAD_PATH.include?(test_dir)

lib_dir = File.expand_path(File.join(test_dir, '..', 'lib'))
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

tests = Dir[File.join(test_dir, 'AsxhistoricaldataCom', '**', '*.rb')]
tests.each{|test| require test}
