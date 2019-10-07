# coding: utf-8

"""
    OpenAPI Petstore

    This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Generated by: https://openapi-generator.tech
"""


import pprint  # noqa: F401
import re  # noqa: F401

import six  # noqa: F401

from petstore_api.exceptions import ApiValueError  # noqa: F401
from petstore_api.model_utils import (  # noqa: F401
    ModelNormal,
    ModelSimple,
    check_allowed_values,
    check_validations
)


class Name(ModelNormal):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.

    Attributes:
      allowed_values (dict): The key is the tuple path to the attribute
          and the for var_name this is (var_name,). The value is a dict
          with a capitalized key describing the allowed value and an allowed
          value. These dicts store the allowed enum values.
      attribute_map (dict): The key is attribute name
          and the value is json key in definition.
      discriminator_value_class_map (dict): A dict to go from the discriminator
          variable value to the discriminator class name.
      openapi_types (dict): The key is attribute name
          and the value is attribute type.
      validations (dict): The key is the tuple path to the attribute
          and the for var_name this is (var_name,). The value is a dict
          that stores validations for max_length, min_length, max_items,
          min_items, exclusive_maximum, inclusive_maximum, exclusive_minimum,
          inclusive_minimum, and regex.
    """

    allowed_values = {
    }

    attribute_map = {
        'name': 'name',  # noqa: E501
        'snake_case': 'snake_case',  # noqa: E501
        '_property': 'property',  # noqa: E501
        '_123_number': '123Number'  # noqa: E501
    }

    openapi_types = {
        'name': 'int',
        'snake_case': 'int',
        '_property': 'str',
        '_123_number': 'int'
    }

    validations = {
    }

    def __init__(self, name=None, snake_case=None, _property=None, _123_number=None):  # noqa: E501
        """Name - a model defined in OpenAPI"""  # noqa: E501

        self._name = None
        self._snake_case = None
        self.__property = None
        self.__123_number = None
        self.discriminator = None

        self.name = name
        if snake_case is not None:
            self.snake_case = (
                snake_case
            )
        if _property is not None:
            self._property = (
                _property
            )
        if _123_number is not None:
            self._123_number = (
                _123_number
            )

    @property
    def name(self):
        """Gets the name of this Name.  # noqa: E501


        :return: The name of this Name.  # noqa: E501
        :rtype: int
        """
        return self._name

    @name.setter
    def name(self, name):  # noqa: E501
        """Sets the name of this Name.


        :param name: The name of this Name.  # noqa: E501
        :type: int
        """
        if name is None:
            raise ApiValueError("Invalid value for `name`, must not be `None`")  # noqa: E501

        self._name = (
            name
        )

    @property
    def snake_case(self):
        """Gets the snake_case of this Name.  # noqa: E501


        :return: The snake_case of this Name.  # noqa: E501
        :rtype: int
        """
        return self._snake_case

    @snake_case.setter
    def snake_case(self, snake_case):  # noqa: E501
        """Sets the snake_case of this Name.


        :param snake_case: The snake_case of this Name.  # noqa: E501
        :type: int
        """

        self._snake_case = (
            snake_case
        )

    @property
    def _property(self):
        """Gets the _property of this Name.  # noqa: E501


        :return: The _property of this Name.  # noqa: E501
        :rtype: str
        """
        return self.__property

    @_property.setter
    def _property(self, _property):  # noqa: E501
        """Sets the _property of this Name.


        :param _property: The _property of this Name.  # noqa: E501
        :type: str
        """

        self.__property = (
            _property
        )

    @property
    def _123_number(self):
        """Gets the _123_number of this Name.  # noqa: E501


        :return: The _123_number of this Name.  # noqa: E501
        :rtype: int
        """
        return self.__123_number

    @_123_number.setter
    def _123_number(self, _123_number):  # noqa: E501
        """Sets the _123_number of this Name.


        :param _123_number: The _123_number of this Name.  # noqa: E501
        :type: int
        """

        self.__123_number = (
            _123_number
        )

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, Name):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
