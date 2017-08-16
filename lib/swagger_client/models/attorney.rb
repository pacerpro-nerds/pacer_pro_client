=begin
#PacerPro

#PacerPro API documentation.

OpenAPI spec version: 0.3.0
Contact: ken@pacerpro.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module SwaggerClient

  class Attorney
    # The name of the attorney.
    attr_accessor :name

    # The name of the firm where the attorney works. May refer to the attorney if acting as sole practioner.
    attr_accessor :firm_name

    # Street/mailing address for the firm.
    attr_accessor :firm_address

    # Voice telephone number.
    attr_accessor :phone

    # Telephone number for a fax line.
    attr_accessor :fax

    # An email address for the attorney.
    attr_accessor :email

    # The email domain of the firm. Usually the right-hand side of the email address after the @-sign.
    attr_accessor :firm_domain

    # Date that this attorney first appeared on this case. Might be a docket entry when they appeared, or _pro hac vice_, or none of the above.
    attr_accessor :appeared_at

    # Date that this attorney ended their role in the case.
    attr_accessor :terminated

    # Is this attorney appear _pro hac vice_?
    attr_accessor :pro_hac_vice

    # Is this attorney designated as a 'Lead Attorney' in the case.
    attr_accessor :lead_attorney

    # Attorney appearing _pro se_.
    attr_accessor :pro_se


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'firm_name' => :'firmName',
        :'firm_address' => :'firmAddress',
        :'phone' => :'phone',
        :'fax' => :'fax',
        :'email' => :'email',
        :'firm_domain' => :'firmDomain',
        :'appeared_at' => :'appearedAt',
        :'terminated' => :'terminated',
        :'pro_hac_vice' => :'proHacVice',
        :'lead_attorney' => :'leadAttorney',
        :'pro_se' => :'proSe'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'firm_name' => :'String',
        :'firm_address' => :'String',
        :'phone' => :'String',
        :'fax' => :'String',
        :'email' => :'String',
        :'firm_domain' => :'String',
        :'appeared_at' => :'Date',
        :'terminated' => :'Date',
        :'pro_hac_vice' => :'BOOLEAN',
        :'lead_attorney' => :'BOOLEAN',
        :'pro_se' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'firmName')
        self.firm_name = attributes[:'firmName']
      end

      if attributes.has_key?(:'firmAddress')
        self.firm_address = attributes[:'firmAddress']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'fax')
        self.fax = attributes[:'fax']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'firmDomain')
        self.firm_domain = attributes[:'firmDomain']
      end

      if attributes.has_key?(:'appearedAt')
        self.appeared_at = attributes[:'appearedAt']
      end

      if attributes.has_key?(:'terminated')
        self.terminated = attributes[:'terminated']
      end

      if attributes.has_key?(:'proHacVice')
        self.pro_hac_vice = attributes[:'proHacVice']
      end

      if attributes.has_key?(:'leadAttorney')
        self.lead_attorney = attributes[:'leadAttorney']
      end

      if attributes.has_key?(:'proSe')
        self.pro_se = attributes[:'proSe']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          firm_name == o.firm_name &&
          firm_address == o.firm_address &&
          phone == o.phone &&
          fax == o.fax &&
          email == o.email &&
          firm_domain == o.firm_domain &&
          appeared_at == o.appeared_at &&
          terminated == o.terminated &&
          pro_hac_vice == o.pro_hac_vice &&
          lead_attorney == o.lead_attorney &&
          pro_se == o.pro_se
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, firm_name, firm_address, phone, fax, email, firm_domain, appeared_at, terminated, pro_hac_vice, lead_attorney, pro_se].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        value.compact.map{ |v| _to_hash(v) }
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
