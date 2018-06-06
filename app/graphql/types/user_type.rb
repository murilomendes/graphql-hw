module Types
  UserType = GraphQL::ObjectType.define do
    name "User"
    description "a user"

    field :id, !types.Int
    field :email, !types.String
    field :encryptedPassword, !types.String, property: :encrypted_password
  end
end