/**
* OpenAPI Petstore
* This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
*
* The version of the OpenAPI document: 1.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.client.models


import kotlinx.serialization.*
import kotlinx.serialization.internal.CommonEnumSerializer
/**
 * Model for testing model name same as property name
 * @param name 
 * @param snakeCase 
 * @param property 
 * @param ``123number`` 
 */
@Serializable
data class Name (
    @SerialName(value = "name") @Required val name: kotlin.Int,
    @SerialName(value = "snakeCase") val snakeCase: kotlin.Int? = null,
    @SerialName(value = "property") val property: kotlin.String? = null,
    @SerialName(value = "&#x60;123number&#x60;") val ``123number``: kotlin.Int? = null
)

