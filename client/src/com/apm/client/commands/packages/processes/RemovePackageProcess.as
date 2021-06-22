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
 * @created		15/6/21
 */
package com.apm.client.commands.packages.processes
{
	import com.apm.client.APMCore;
	import com.apm.client.commands.packages.data.InstallPackageData;
	import com.apm.client.processes.ProcessBase;
	import com.apm.data.packages.PackageDefinition;
	import com.apm.data.packages.PackageVersion;
	
	import flash.utils.setTimeout;
	
	
	public class RemovePackageProcess extends ProcessBase
	{
		////////////////////////////////////////////////////////
		//  CONSTANTS
		//
		
		private static const TAG:String = "ExtractPackageProcess";
		
		
		////////////////////////////////////////////////////////
		//  VARIABLES
		//
		
		private var _core:APMCore;
		private var _installData:InstallPackageData;
		
		
		////////////////////////////////////////////////////////
		//  FUNCTIONALITY
		//
		
		public function RemovePackageProcess( core:APMCore, installData:InstallPackageData )
		{
			super();
			_core = core;
			_installData = installData;
		}
		
		
		override public function start():void
		{
			_core.io.showSpinner( "Removing existing package : " + _installData.packageVersion.packageDef.toString() );
			setTimeout( function ():void {
				_core.io.stopSpinner( true,
									  "removed " + _installData.packageVersion.packageDef.toString() );
				complete();
				
			}, 2000 );
		}
		
		
	}
	
}
