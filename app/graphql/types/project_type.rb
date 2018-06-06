module Types
  ProjectType = GraphQL::ObjectType.define do
    name "projects"
    description "a project"

    field :id, !types.Int
    field :title, !types.String do
      resolve ->(project, args, ctx) { project.user.email.split('@')[0] + '-' + project.title }
    end

    field :user, !UserType
  end
end