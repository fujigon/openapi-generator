=begin
#OpenAPI Petstore

#This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

OpenAPI spec version: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'date'

module Petstore
  class FormatTest
    attr_accessor :integer

    attr_accessor :int32

    attr_accessor :int64

    attr_accessor :number

    attr_accessor :float

    attr_accessor :double

    attr_accessor :string

    attr_accessor :byte

    attr_accessor :binary

    attr_accessor :date

    attr_accessor :date_time

    attr_accessor :uuid

    attr_accessor :password

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'integer' => :'integer',
        :'int32' => :'int32',
        :'int64' => :'int64',
        :'number' => :'number',
        :'float' => :'float',
        :'double' => :'double',
        :'string' => :'string',
        :'byte' => :'byte',
        :'binary' => :'binary',
        :'date' => :'date',
        :'date_time' => :'dateTime',
        :'uuid' => :'uuid',
        :'password' => :'password'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'integer' => :'Integer',
        :'int32' => :'Integer',
        :'int64' => :'Integer',
        :'number' => :'Float',
        :'float' => :'Float',
        :'double' => :'Float',
        :'string' => :'String',
        :'byte' => :'String',
        :'binary' => :'String',
        :'date' => :'Date',
        :'date_time' => :'DateTime',
        :'uuid' => :'String',
        :'password' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'integer')
        self.integer = attributes[:'integer']
      end

      if attributes.has_key?(:'int32')
        self.int32 = attributes[:'int32']
      end

      if attributes.has_key?(:'int64')
        self.int64 = attributes[:'int64']
      end

      if attributes.has_key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.has_key?(:'float')
        self.float = attributes[:'float']
      end

      if attributes.has_key?(:'double')
        self.double = attributes[:'double']
      end

      if attributes.has_key?(:'string')
        self.string = attributes[:'string']
      end

      if attributes.has_key?(:'byte')
        self.byte = attributes[:'byte']
      end

      if attributes.has_key?(:'binary')
        self.binary = attributes[:'binary']
      end

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'dateTime')
        self.date_time = attributes[:'dateTime']
      end

      if attributes.has_key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@integer.nil? && @integer > 100
        invalid_properties.push('invalid value for "integer", must be smaller than or equal to 100.')
      end

      if !@integer.nil? && @integer < 10
        invalid_properties.push('invalid value for "integer", must be greater than or equal to 10.')
      end

      if !@int32.nil? && @int32 > 200
        invalid_properties.push('invalid value for "int32", must be smaller than or equal to 200.')
      end

      if !@int32.nil? && @int32 < 20
        invalid_properties.push('invalid value for "int32", must be greater than or equal to 20.')
      end

      if @number.nil?
        invalid_properties.push('invalid value for "number", number cannot be nil.')
      end

      if @number > 543.2
        invalid_properties.push('invalid value for "number", must be smaller than or equal to 543.2.')
      end

      if @number < 32.1
        invalid_properties.push('invalid value for "number", must be greater than or equal to 32.1.')
      end

      if !@float.nil? && @float > 987.6
        invalid_properties.push('invalid value for "float", must be smaller than or equal to 987.6.')
      end

      if !@float.nil? && @float < 54.3
        invalid_properties.push('invalid value for "float", must be greater than or equal to 54.3.')
      end

      if !@double.nil? && @double > 123.4
        invalid_properties.push('invalid value for "double", must be smaller than or equal to 123.4.')
      end

      if !@double.nil? && @double < 67.8
        invalid_properties.push('invalid value for "double", must be greater than or equal to 67.8.')
      end

      pattern = Regexp.new(/[a-z]/i)
      if !@string.nil? && @string !~ pattern
        invalid_properties.push("invalid value for \"string\", must conform to the pattern #{pattern}.")
      end

      if @byte.nil?
        invalid_properties.push('invalid value for "byte", byte cannot be nil.')
      end

      pattern = Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      if @byte !~ pattern
        invalid_properties.push("invalid value for \"byte\", must conform to the pattern #{pattern}.")
      end

      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @password.nil?
        invalid_properties.push('invalid value for "password", password cannot be nil.')
      end

      if @password.to_s.length > 64
        invalid_properties.push('invalid value for "password", the character length must be smaller than or equal to 64.')
      end

      if @password.to_s.length < 10
        invalid_properties.push('invalid value for "password", the character length must be great than or equal to 10.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@integer.nil? && @integer > 100
      return false if !@integer.nil? && @integer < 10
      return false if !@int32.nil? && @int32 > 200
      return false if !@int32.nil? && @int32 < 20
      return false if @number.nil?
      return false if @number > 543.2
      return false if @number < 32.1
      return false if !@float.nil? && @float > 987.6
      return false if !@float.nil? && @float < 54.3
      return false if !@double.nil? && @double > 123.4
      return false if !@double.nil? && @double < 67.8
      return false if !@string.nil? && @string !~ Regexp.new(/[a-z]/i)
      return false if @byte.nil?
      return false if @byte !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      return false if @date.nil?
      return false if @password.nil?
      return false if @password.to_s.length > 64
      return false if @password.to_s.length < 10
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] integer Value to be assigned
    def integer=(integer)
      if !integer.nil? && integer > 100
        fail ArgumentError, 'invalid value for "integer", must be smaller than or equal to 100.'
      end

      if !integer.nil? && integer < 10
        fail ArgumentError, 'invalid value for "integer", must be greater than or equal to 10.'
      end

      @integer = integer
    end

    # Custom attribute writer method with validation
    # @param [Object] int32 Value to be assigned
    def int32=(int32)
      if !int32.nil? && int32 > 200
        fail ArgumentError, 'invalid value for "int32", must be smaller than or equal to 200.'
      end

      if !int32.nil? && int32 < 20
        fail ArgumentError, 'invalid value for "int32", must be greater than or equal to 20.'
      end

      @int32 = int32
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if number.nil?
        fail ArgumentError, 'number cannot be nil'
      end

      if number > 543.2
        fail ArgumentError, 'invalid value for "number", must be smaller than or equal to 543.2.'
      end

      if number < 32.1
        fail ArgumentError, 'invalid value for "number", must be greater than or equal to 32.1.'
      end

      @number = number
    end

    # Custom attribute writer method with validation
    # @param [Object] float Value to be assigned
    def float=(float)
      if !float.nil? && float > 987.6
        fail ArgumentError, 'invalid value for "float", must be smaller than or equal to 987.6.'
      end

      if !float.nil? && float < 54.3
        fail ArgumentError, 'invalid value for "float", must be greater than or equal to 54.3.'
      end

      @float = float
    end

    # Custom attribute writer method with validation
    # @param [Object] double Value to be assigned
    def double=(double)
      if !double.nil? && double > 123.4
        fail ArgumentError, 'invalid value for "double", must be smaller than or equal to 123.4.'
      end

      if !double.nil? && double < 67.8
        fail ArgumentError, 'invalid value for "double", must be greater than or equal to 67.8.'
      end

      @double = double
    end

    # Custom attribute writer method with validation
    # @param [Object] string Value to be assigned
    def string=(string)
      pattern = Regexp.new(/[a-z]/i)
      if !string.nil? && string !~ pattern
        fail ArgumentError, "invalid value for \"string\", must conform to the pattern #{pattern}."
      end

      @string = string
    end

    # Custom attribute writer method with validation
    # @param [Object] byte Value to be assigned
    def byte=(byte)
      if byte.nil?
        fail ArgumentError, 'byte cannot be nil'
      end

      pattern = Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      if byte !~ pattern
        fail ArgumentError, "invalid value for \"byte\", must conform to the pattern #{pattern}."
      end

      @byte = byte
    end

    # Custom attribute writer method with validation
    # @param [Object] password Value to be assigned
    def password=(password)
      if password.nil?
        fail ArgumentError, 'password cannot be nil'
      end

      if password.to_s.length > 64
        fail ArgumentError, 'invalid value for "password", the character length must be smaller than or equal to 64.'
      end

      if password.to_s.length < 10
        fail ArgumentError, 'invalid value for "password", the character length must be great than or equal to 10.'
      end

      @password = password
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          integer == o.integer &&
          int32 == o.int32 &&
          int64 == o.int64 &&
          number == o.number &&
          float == o.float &&
          double == o.double &&
          string == o.string &&
          byte == o.byte &&
          binary == o.binary &&
          date == o.date &&
          date_time == o.date_time &&
          uuid == o.uuid &&
          password == o.password
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [integer, int32, int64, number, float, double, string, byte, binary, date, date_time, uuid, password].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        Petstore.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
