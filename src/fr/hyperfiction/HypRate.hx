package fr.hyperfiction;

/**
* ...
* @author shoe[box]
*/
@:build( ShortCuts.mirrors( ) )
class HypRate{

	// -------o constructor

		/**
		* constructor
		*
		* @param
		* @return	void
		*/
		private function new() {
			trace("constructor");
		}

	// -------o public

		/**
		*
		*
		* @public
		* @return	void
		*/
		#if android
		@JNI
		#end
        #if ios
        @CPP("HypRate", "HypRate_start")
        #end
		static public function start(
									iMin_launches			: Int,
									iMin_days				: Int,
									iMin_launches_until_next	: Int,
									iMin_days_until_next	: Int
								) : Void {
		}
        
        /**
		*
		*
		* @public
		* @return	void
		*/
		#if android
		@JNI
		#end
        #if ios
        @CPP("HypRate", "HypRate_setAppId")
        #end
        static public function setAppId( appId : String ) : Void {

        }

		/**
		*
		*
		* @public
		* @return	void
		*/
		#if android
		@JNI
		#end
        #if ios
        @CPP("HypRate", "HypRate_setDialog_title")
        #end
		static public function setDialog_title( s : String ) : Void {

		}

		/**
		*
		*
		* @public
		* @return	void
		*/
		#if android
		@JNI
		#end
        #if ios
        @CPP("HypRate", "HypRate_setDialog_message")
        #end
		static public function setDialog_message( s : String ) : Void {

		}

		/**
		*
		*
		* @public
		* @return	void
		*/
		#if android
		@JNI
		#end
        #if ios
        @CPP("HypRate", "HypRate_setPositive_text")
        #end
		static public function setPositive_text( s : String ) : Void {

		}

		/**
		*
		*
		* @public
		* @return	void
		*/
		#if android
		@JNI
		#end
        #if ios
        @CPP("HypRate", "HypRate_setNeutral_text")
        #end
		static public function setNeutral_text( s : String ) : Void {

		}

		/**
		*
		*
		* @public
		* @return	void
		*/
		#if android
		@JNI
		#end
        #if ios
        @CPP("HypRate", "HypRate_setNegative_text")
        #end
		static public function setNegative_text( s : String ) : Void {

		}


		/**
		*
		*
		* @public
		* @return	void
		*/
		#if android
		@JNI
		#end
        #if ios
        @CPP("HypRate", "HypRate_show")
        #end
		static public function show( ) : Void {

		}

	// -------o protected



	// -------o misc

}
