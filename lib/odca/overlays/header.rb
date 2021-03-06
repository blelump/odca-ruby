module Odca
  module Overlays
    class Header
      attr_accessor :description, :type
      attr_reader :issued_by, :role, :purpose

      def initialize(role:, purpose:, issued_by: '')
        @issued_by = issued_by
        @role = role
        @purpose = purpose
      end

      def to_h
        {
          '@context' => 'https://odca.tech/overlays/v1',
          type: type,
          description: description,
          issued_by: issued_by,
          role: role || '',
          purpose: purpose || ''
        }
      end
    end
  end
end
