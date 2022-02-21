#packmode normal
#loader contenttweaker
# Imports
import mods.jei.JEI;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;



# AE2 - Fluix Dust (Override)
var dustFluix = VanillaFactory.createItem("dustFluix");
dustFluix.creativeTab = <creativetab:appliedenergistics2>;
dustFluix.register();

# AE2 - Charged Certus Quartz Dust
var dustChargedCertusQuartz = VanillaFactory.createItem("dustChargedCertusQuartz");
dustChargedCertusQuartz.creativeTab = <creativetab:appliedenergistics2>;
dustChargedCertusQuartz.register();

# ModPack - Creative ME Component
var creativeComponent = VanillaFactory.createItem("creativeComponent");
creativeComponent.creativeTab = <creativetab:appliedenergistics2>;
creativeComponent.register();
