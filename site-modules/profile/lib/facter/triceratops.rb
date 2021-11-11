# frozen_string_literal: true

Facter.add(:triceratops) do
  confine :kernel => 'Linux'
  setcode do
    Facter::Core::Execution.execute(‘/bin/echo "roarrrrrr")
  end
end