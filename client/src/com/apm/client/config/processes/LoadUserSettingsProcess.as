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
 * @created		28/5/21
 */
package com.apm.client.config.processes
{
	import com.apm.client.config.RunConfig;
	import com.apm.client.logging.Log;
	import com.apm.client.processes.ProcessBase;
	
	import flash.filesystem.File;
	
	
	/**
	 * Process to load the user settings file (.apm_config) from the user home directory
	 */
	public class LoadUserSettingsProcess extends ProcessBase
	{
		////////////////////////////////////////////////////////
		//  CONSTANTS
		//
		
		private static const TAG:String = "LoadUserSettingsProcess";
		
		
		////////////////////////////////////////////////////////
		//  VARIABLES
		//
		
		private var _config:RunConfig;
		
		
		////////////////////////////////////////////////////////
		//  FUNCTIONALITY
		//
		
		public function LoadUserSettingsProcess( config:RunConfig )
		{
			_config = config;
		}
		
		
		override public function start():void
		{
			Log.d( TAG, "start()" );
			try
			{
				var f:File = new File( _config.getHomeDirectory() + File.separator + ".apm_config" );
				if (f.exists)
				{
					Log.d( TAG, "found user settings file - loading ..." );
					_config.user.load( f );
				}
			}
			catch (e:Error)
			{
				Log.e( TAG, e );
			}
			
			complete();
		}
		
		
	}
	
}
