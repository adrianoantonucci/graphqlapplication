class Mutations::DeleteUser < GraphQL::Function
  argument :id, types.ID

  type types.Boolean
  def call(obj, args, context)
    return false unless user = User.where(id: args[:id]).first
    user.destroy 
  end
end