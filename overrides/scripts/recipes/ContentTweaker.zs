#loader contenttweaker
# Imoprts
import mods.jei.JEI;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;



# AE2 - Fluix Dust (Override)
var dustFluix = VanillaFactory.createItem("dustFluix");
dustFluix.creativeTab = <creativetab:appliedenergistics2>;
dustFluix.register();
