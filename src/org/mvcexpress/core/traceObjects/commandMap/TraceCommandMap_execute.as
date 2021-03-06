// Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
package org.mvcexpress.core.traceObjects.commandMap {
import flash.display.DisplayObject;
import org.mvcexpress.core.ModuleBase;
import org.mvcexpress.core.traceObjects.MvcTraceActions;
import org.mvcexpress.core.traceObjects.TraceObj;
import org.mvcexpress.mvc.Command;
import org.mvcexpress.mvc.Mediator;
import org.mvcexpress.mvc.Proxy;

/**
 * Class for mvcExpress tracing. (debug mode only)
 * @author Raimundas Banevicius (http://www.mindscriptact.com/)
 * @private
 */
public class TraceCommandMap_execute extends TraceObj {
	
	public var commandObject:Command;
	public var commandClass:Class;
	public var params:Object;
	
	public var view:DisplayObject;
	
	public var messageFromModule:ModuleBase;
	public var messageFromMediator:Mediator;
	public var messageFromProxy:Proxy;
	public var messageFromCommand:Command;
	
	public function TraceCommandMap_execute(moduleName:String, $commandObject:Command, $commandClass:Class, $params:Object) {
		super(MvcTraceActions.COMMANDMAP_EXECUTE, moduleName);
		commandObject = $commandObject;
		commandClass = $commandClass;
		params = $params;
	}
	
	override public function toString():String {
		return "©* " + MvcTraceActions.COMMANDMAP_EXECUTE + " > commandClass : " + commandClass + ", params : " + params + "     {" + moduleName + "}";
	}

}
}