/**
 *        __       __               __
 *   ____/ /_ ____/ /______ _ ___  / /_
 *  / __  / / ___/ __/ ___/ / __ `/ __/
 * / /_/ / (__  ) / / /  / / /_/ / /
 * \__,_/_/____/_/ /_/  /_/\__, /_/
 *                           / /
 *                           \/
 * http://distriqt.com
 *
 * @author 		Michael (https://github.com/marchbold)
 * @created		31/5/21
 */
package com.apm.client.processes.events
{
	import flash.events.DataEvent;
	import flash.events.Event;
	
	
	public class ProcessEvent extends DataEvent
	{
		////////////////////////////////////////////////////////
		//  CONSTANTS
		//
		
		private static const TAG:String = "ProcessEvent";
		
		
		/**
		 *
		 * @eventType process_complete
		 */
		public static const COMPLETE : String = "process_complete";
		
		
		/**
		 * @eventType process_failed
		 */
		public static const FAILED : String = "process_failed";
		
		
		
		////////////////////////////////////////////////////////
		//  VARIABLES
		//
		
		
		////////////////////////////////////////////////////////
		//  FUNCTIONALITY
		//
		
		
		public function ProcessEvent( type:String, data:String="", bubbles:Boolean = false, cancelable:Boolean = false )
		{
			super( type, bubbles, cancelable, data );
		}
		
		
		override public function clone():Event
		{
			return super.clone();
		}
		
	}
	
}
