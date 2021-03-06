package integration.lazyProxy.testObj.moduleA {
import flash.display.Sprite;
import flash.events.Event;
import integration.lazyProxy.LazyProxyTests;
import org.mvcexpress.modules.ModuleCore;

/**
 * COMMENT : todo
 * @author Raimundas Banevicius (http://www.mindscriptact.com/)
 */
public class LazyProxyModuleA extends ModuleCore {
	static public const NAME:String = "LazyProxyModuleA";
	
	public function LazyProxyModuleA() {
		super(LazyProxyModuleA.NAME);
	}
	
	public function lazyMap():void {
		proxyMap.lazyMap(LazyProxy);
	}
	
	public function normalMap():void {
		proxyMap.map(new LazyProxy());
	}
	
	public function createProxyWithLazyInject():void {
		proxyMap.map(new LazyNormalProxy());
	}
	
	public function mapNotProxy():void {
		proxyMap.lazyMap(Sprite);
	}
	
	public function mapWithParams(params:Array):void {
		proxyMap.lazyMap(LazyProxy, null, "", params);
	}

}
}