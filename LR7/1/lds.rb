# frozen_string_literal: true

require 'English'
require 'English'
def div(a)
  a / 0
  # exit(false)
rescue ZeroDivisionError => e
  exit 100
end

# a = 'sdf'
fork { div(5) }
Process.wait
puts div(5)
puts $CHILD_STATUS.exited?
puts $CHILD_STATUS.exitstatus == 100
# b = a * 2
# puts b
# Process.exitstatus
#
