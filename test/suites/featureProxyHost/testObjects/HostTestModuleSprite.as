package suites.featureProxyHost.testObjects {
import org.mvcexpress.modules.ModuleSprite;
import org.mvcexpress.mvc.Proxy;
import suites.featureProxyHost.testObjects.localObjects.HostProxy;
import suites.featureProxyHost.testObjects.localObjects.HostViewTest;
import suites.featureProxyHost.testObjects.localObjects.HostViewTestMediator;

/**
 * COMMENT
 * @author Raimundas Banevicius (raima156@yahoo.com)
 */
public class HostTestModuleSprite extends ModuleSprite {
	private var hostView:HostViewTest;
	
	public function HostTestModuleSprite() {
		super("hostModule", true, false);
	}
	
	override protected function onInit():void {
		mediatorMap.map(HostViewTest, HostViewTestMediator);
		hostView = new HostViewTest();
		mediatorMap.mediate(hostView);
	
	}
	
	public function hostTestProxy(classToHost:Class, name:String = ""):void {
		hostProxy(classToHost, name);
	}
	
	public function unhostTestProxy(classToHost:Class, name:String = ""):void {
		unhostProxy(classToHost, name);
	}
	
	public function mapProxy(hostProxy:Proxy):void {
		proxyMap.map(hostProxy);
	}
	
	public function messageHandled():Boolean {
		return hostView.messageReached;
	}

}
}