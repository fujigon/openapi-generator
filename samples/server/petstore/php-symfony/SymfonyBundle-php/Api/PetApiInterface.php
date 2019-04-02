<?php
/**
 * PetApiInterface
 * PHP version 5
 *
 * @category Class
 * @package  OpenAPI\Server
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */

/**
 * OpenAPI Petstore
 *
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * OpenAPI spec version: 1.0.0
 * 
 * Generated by: https://github.com/openapitools/openapi-generator.git
 *
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 */

namespace OpenAPI\Server\Api;

use Symfony\Component\HttpFoundation\File\UploadedFile;
use OpenAPI\Server\Model\ApiResponse;
use OpenAPI\Server\Model\Pet;

/**
 * PetApiInterface Interface Doc Comment
 *
 * @category Interface
 * @package  OpenAPI\Server\Api
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */
interface PetApiInterface
{

    /**
     * Sets authentication method api_key
     *
     * @param string $value Value of the api_key authentication method.
     *
     * @return void
     */
    public function setapi_key($value);

    /**
     * Sets authentication method petstore_auth
     *
     * @param string $value Value of the petstore_auth authentication method.
     *
     * @return void
     */
    public function setpetstore_auth($value);

    /**
     * Operation addPet
     *
     * Add a new pet to the store
     *
     * @param  OpenAPI\Server\Model\Pet $body  Pet object that needs to be added to the store (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return void
     *
     */
    public function addPet(Pet $body, &$responseCode, array &$responseHeaders);

    /**
     * Operation deletePet
     *
     * Deletes a pet
     *
     * @param  int $petId  Pet id to delete (required)
     * @param  string $apiKey   (optional)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return void
     *
     */
    public function deletePet($petId, $apiKey = null, &$responseCode, array &$responseHeaders);

    /**
     * Operation findPetsByStatus
     *
     * Finds Pets by status
     *
     * @param  string[] $status  Status values that need to be considered for filter (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\Pet[]
     *
     */
    public function findPetsByStatus(array $status, &$responseCode, array &$responseHeaders);

    /**
     * Operation findPetsByTags
     *
     * Finds Pets by tags
     *
     * @param  string[] $tags  Tags to filter by (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\Pet[]
     *
     */
    public function findPetsByTags(array $tags, &$responseCode, array &$responseHeaders);

    /**
     * Operation getPetById
     *
     * Find pet by ID
     *
     * @param  int $petId  ID of pet to return (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\Pet[]
     *
     */
    public function getPetById($petId, &$responseCode, array &$responseHeaders);

    /**
     * Operation updatePet
     *
     * Update an existing pet
     *
     * @param  OpenAPI\Server\Model\Pet $body  Pet object that needs to be added to the store (required)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return void
     *
     */
    public function updatePet(Pet $body, &$responseCode, array &$responseHeaders);

    /**
     * Operation updatePetWithForm
     *
     * Updates a pet in the store with form data
     *
     * @param  int $petId  ID of pet that needs to be updated (required)
     * @param  string $name  Updated name of the pet (optional)
     * @param  string $status  Updated status of the pet (optional)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return void
     *
     */
    public function updatePetWithForm($petId, $name = null, $status = null, &$responseCode, array &$responseHeaders);

    /**
     * Operation uploadFile
     *
     * uploads an image
     *
     * @param  int $petId  ID of pet to update (required)
     * @param  string $additionalMetadata  Additional data to pass to server (optional)
     * @param  string $file  file to upload (optional)
     * @param  integer $responseCode     The HTTP response code to return
     * @param  array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return OpenAPI\Server\Model\ApiResponse[]
     *
     */
    public function uploadFile($petId, $additionalMetadata = null, $file = null, &$responseCode, array &$responseHeaders);
}
