# AsxhistoricaldataCom.rb
# AsxhistoricaldataCom

# 20200528, 0606
# 0.10.0

# Changes since 0.9:
# -/0 (+ ability to unzip)
# 1. ~ .gitignore to include .DS_Store.
# 2. ~ Gemfile: + gem 'rubyzip'
# 3. + AsxhistoricaldataCom::DataFile.write_decompressed/write_all_decompressed
# 4. + AsxhistoricaldataCom::DataFile.write/write_all
# 5. + AsxhistoricaldataCom::DataFile.retrieve_decompressed/retrieve_all_decompressed
# 6. + AsxhistoricaldataCom::DataFile.retrieve/retrieve_all
# 7. ~ test/AsxhistoricaldataCom/DataFile_test.rb: + describe ".retrieve/retrieve_all"...
# 8. ~ test/AsxhistoricaldataCom/DataFile_test.rb: + describe ".retrieve_decompressed/retrieve_all_decompressed"...
# 9. ~ test/AsxhistoricaldataCom/DataFile_test.rb: ~ describe ".all" (with no args)
# 10. ~ test/AsxhistoricaldataCom/DataFile_test.rb: + expectation syntax
# 11. + lib/File/self.basename_without_extname
# 12. + lib/Thoran/File/SelfBasenameWithoutExtname/self.basename_without_extname

# Todo:
# 1. Write tests for AsxhistoricaldataCom::DataFile.write_decompressed/write_all_decompressed.
# 2. Write tests for AsxhistoricaldataCom::DataFile.write/write_all.
# 3. Fix Fixnum deprecation warning for lib/Month/self.days.rb:22.

lib_dir = File.dirname(File.expand_path(__FILE__))
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'AsxhistoricaldataCom/DataFile'
