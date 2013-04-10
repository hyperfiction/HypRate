package fr.hyperfiction;

/**
* ...
* @author shoe[box]
*/
@:build( org.shoebox.utils.NativeMirror.build( ) )
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
		@JNI
		static public function start(
									iMin_launches			: Int,
									iMin_days				: Int,
									iMin_launches_until_next	: Int,
									iMin_days_until_next	: Int
								) : Void {
			trace("start");
			NSString* appID = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
			[Appirater setAppId:appID];
			[Appirater setDaysUntilPrompt:iMin_days];
			[Appirater setUsesUntilPrompt:iMin_launches];
			[Appirater setSignificantEventsUntilPrompt:-1];
			[Appirater setTimeBeforeReminding:iMin_days_until_next*24];
			[Appirater setDebug:YES];
		}

		/**
		*
		*
		* @public
		* @return	void
		*/
		@JNI
		static public function setDialog_title( s : String ) : Void {

		}

		/**
		*
		*
		* @public
		* @return	void
		*/
		@JNI
		static public function setDialog_message( s : String ) : Void {

		}

		/**
		*
		*
		* @public
		* @return	void
		*/
		@JNI
		static public function setPositive_text( s : String ) : Void {

		}

		/**
		*
		*
		* @public
		* @return	void
		*/
		@JNI
		static public function setNeutral_text( s : String ) : Void {

		}

		/**
		*
		*
		* @public
		* @return	void
		*/
		@JNI
		static public function setNegative_text( s : String ) : Void {

		}

	// -------o protected



	// -------o misc

}