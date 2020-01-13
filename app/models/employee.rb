class Employee < ApplicationRecord
  establish_connection "employee".to_sym
end
