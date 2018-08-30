class Mutations::UpdateUser < GraphQL::Function
    argument :id, types.ID
    argument :name, types.String
    argument :email, types.String
    argument :phone_number, types.Int
    argument :is_admin, types.Boolean
    argument :country_id, types.Int
  
    type Types::UserType
  
    def call(obj, args, context)
      return nil unless user = User.where(id: args[:id]).first
      user.update args.to_h
      user
    end
  end