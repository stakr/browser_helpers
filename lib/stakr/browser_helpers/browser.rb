module Stakr #:nodoc:
  module BrowserHelpers #:nodoc:
    
    # Helper methods to determine the browser (user-agent) from request. The list contains only a few browsers which
    # have some special behavior:
    # 
    # * Internet Explorer 6 upto 8
    # * Opera (perhaps only useful to detect Internet Explorer since Opera might be configured to masquerade as
    #   Internet Explorer)
    # * Safari (perhaps useful to enable Safari's search input tag)
    # 
    # Also consider usage of conditional comments to include Cascading Style Sheets and JavaScripts on Internet
    # Explorers:
    #   
    #   <!--[if IE 6]><link rel="stylesheet" href="..." type="text/css"/><![endif]-->
    # 
    module Browser
      
      # Returns whether the browser is Internet Explorer 6.
      # 
      # Note: This method already excludes Opera.
      def ie6?
        !!(request.env['HTTP_USER_AGENT'] =~ /MSIE 6/) && !opera?
      end
      
      # Returns whether the browser is Internet Explorer 7.
      # 
      # Note: This method already excludes Opera.
      def ie7?
        !!(request.env['HTTP_USER_AGENT'] =~ /MSIE 7/) && !opera?
      end
      
      # Returns whether the browser is Internet Explorer 8.
      # 
      # Note: This method already excludes Opera.
      def ie8?
        !!(request.env['HTTP_USER_AGENT'] =~ /MSIE 8/) && !opera?
      end
      
      # Returns whether the browser is Internet Explorer 6 upto 8.
      # 
      # Note: This method already excludes Opera.
      def ie?
        ie6? || ie7? || ie8?
      end
      
      # Returns whether the browser is Opera.
      def opera?
        !!(request.env['HTTP_USER_AGENT'] =~ /Opera/)
      end
      
      # Returns whether the browser is Safari.
      def safari?
        !!(request.env['HTTP_USER_AGENT'] =~ /Safari/)
      end
      
    end
    
  end
end
