class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :dept, :active
end
