// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class ArmsLoginMutation: GraphQLMutation {
  public static let operationName: String = "ArmsLogin"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation ArmsLogin($data: UserLoginInput) { armsLogin(data: $data) { __typename token success user { __typename first_name id email } } }"#
    ))

  public var data: GraphQLNullable<UserLoginInput>

  public init(data: GraphQLNullable<UserLoginInput>) {
    self.data = data
  }

  public var __variables: Variables? { ["data": data] }

  public struct Data: ArmsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ArmsAPI.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("armsLogin", ArmsLogin.self, arguments: ["data": .variable("data")]),
    ] }

    public var armsLogin: ArmsLogin { __data["armsLogin"] }

    /// ArmsLogin
    ///
    /// Parent Type: `LoginResponse`
    public struct ArmsLogin: ArmsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ArmsAPI.Objects.LoginResponse }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("token", String?.self),
        .field("success", Bool?.self),
        .field("user", User?.self),
      ] }

      public var token: String? { __data["token"] }
      public var success: Bool? { __data["success"] }
      public var user: User? { __data["user"] }

      /// ArmsLogin.User
      ///
      /// Parent Type: `User`
      public struct User: ArmsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { ArmsAPI.Objects.User }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("first_name", String?.self),
          .field("id", ArmsAPI.ID?.self),
          .field("email", ArmsAPI.EmailAddress?.self),
        ] }

        public var first_name: String? { __data["first_name"] }
        public var id: ArmsAPI.ID? { __data["id"] }
        public var email: ArmsAPI.EmailAddress? { __data["email"] }
      }
    }
  }
}
