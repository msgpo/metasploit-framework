##
# This module requires Metasploit: https://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

class MetasploitModule < Msf::Auxiliary
  include Msf::Module::Deprecated

  deprecated(Date.new(2019, 12, 31))

  def initialize
    super(
      'Name'            => 'John the Ripper AIX Password Cracker',
      'Description'     => %Q{
          This module uses John the Ripper to identify weak passwords that have been
        acquired from passwd files on AIX systems.
      },
      'Author'          =>
        [
          'theLightCosine',
          'hdm'
        ] ,
      'License'         => MSF_LICENSE  # JtR itself is GPLv2, but this wrapper is MSF (BSD)
    )

  end

  def run
    fail_with(Failure::BadConfig, 'This module has been enhanced and move to: auxiliary/analyze/crack_aix')
  end

end
