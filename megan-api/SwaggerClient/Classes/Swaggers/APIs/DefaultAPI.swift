//
// DefaultAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class DefaultAPI: APIBase {
    /**

     - parameter distance: (query)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userCollectionApiGet(distance: String? = nil, completion: @escaping ((_ data: UserResponseFieldsCollection?,_ error: Error?) -> Void)) {
        userCollectionApiGetWithRequestBuilder(distance: distance).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - GET /megan/v1/users
     - OAuth:
       - type: oauth2
       - name: auth0
     - examples: [{contentType=application/json, example={
  "nextPageToken" : "aeiou",
  "items" : [ {
    "is_stroker" : true,
    "gender" : "aeiou",
    "join_date" : "aeiou",
    "last_online_datetime" : "aeiou",
    "birth_date" : "aeiou",
    "description" : "aeiou",
    "calculated_field_test" : "aeiou",
    "is_latex_allergic" : true,
    "phone" : "aeiou",
    "nickname" : "aeiou",
    "home_location" : "aeiou",
    "email" : "aeiou",
    "is_strokee" : true,
    "has_nest" : true
  } ]
}}]
     
     - parameter distance: (query)  (optional)

     - returns: RequestBuilder<UserResponseFieldsCollection> 
     */
    open class func userCollectionApiGetWithRequestBuilder(distance: String? = nil) -> RequestBuilder<UserResponseFieldsCollection> {
        let path = "/megan/v1/users"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "distance": distance
        ])
        

        let requestBuilder: RequestBuilder<UserResponseFieldsCollection>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userCollectionApiPost(completion: @escaping ((_ data: UserResponseFields?,_ error: Error?) -> Void)) {
        userCollectionApiPostWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - POST /megan/v1/users
     - OAuth:
       - type: oauth2
       - name: auth0
     - examples: [{contentType=application/json, example={
  "is_stroker" : true,
  "gender" : "aeiou",
  "join_date" : "aeiou",
  "last_online_datetime" : "aeiou",
  "birth_date" : "aeiou",
  "description" : "aeiou",
  "calculated_field_test" : "aeiou",
  "is_latex_allergic" : true,
  "phone" : "aeiou",
  "nickname" : "aeiou",
  "home_location" : "aeiou",
  "email" : "aeiou",
  "is_strokee" : true,
  "has_nest" : true
}}]

     - returns: RequestBuilder<UserResponseFields> 
     */
    open class func userCollectionApiPostWithRequestBuilder() -> RequestBuilder<UserResponseFields> {
        let path = "/megan/v1/users"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserResponseFields>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userItemApiGet(completion: @escaping ((_ data: UserResponseFields?,_ error: Error?) -> Void)) {
        userItemApiGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - GET /megan/v1/me
     - OAuth:
       - type: oauth2
       - name: auth0
     - examples: [{contentType=application/json, example={
  "is_stroker" : true,
  "gender" : "aeiou",
  "join_date" : "aeiou",
  "last_online_datetime" : "aeiou",
  "birth_date" : "aeiou",
  "description" : "aeiou",
  "calculated_field_test" : "aeiou",
  "is_latex_allergic" : true,
  "phone" : "aeiou",
  "nickname" : "aeiou",
  "home_location" : "aeiou",
  "email" : "aeiou",
  "is_strokee" : true,
  "has_nest" : true
}}]

     - returns: RequestBuilder<UserResponseFields> 
     */
    open class func userItemApiGetWithRequestBuilder() -> RequestBuilder<UserResponseFields> {
        let path = "/megan/v1/me"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserResponseFields>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func userItemApiPatch(completion: @escaping ((_ data: UserResponseFields?,_ error: Error?) -> Void)) {
        userItemApiPatchWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     - PATCH /megan/v1/me
     - OAuth:
       - type: oauth2
       - name: auth0
     - examples: [{contentType=application/json, example={
  "is_stroker" : true,
  "gender" : "aeiou",
  "join_date" : "aeiou",
  "last_online_datetime" : "aeiou",
  "birth_date" : "aeiou",
  "description" : "aeiou",
  "calculated_field_test" : "aeiou",
  "is_latex_allergic" : true,
  "phone" : "aeiou",
  "nickname" : "aeiou",
  "home_location" : "aeiou",
  "email" : "aeiou",
  "is_strokee" : true,
  "has_nest" : true
}}]

     - returns: RequestBuilder<UserResponseFields> 
     */
    open class func userItemApiPatchWithRequestBuilder() -> RequestBuilder<UserResponseFields> {
        let path = "/megan/v1/me"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UserResponseFields>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
