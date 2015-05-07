if [ ! -d pimcore ]; then
	if [ -d tmp ]; then rm -R tmp; fi;
	mkdir tmp;

	wget -q -O tmp/pimcore.zip https://github.com/pimcore/pimcore/archive/3.0.5.zip
	unzip -q tmp/pimcore.zip -d tmp
	rm tmp/pimcore.zip
	
	pimcoreDir=$(find -type d -name pimcore-\* | head -n1)
	
	cp -R $pimcoreDir/pimcore .
	if [ ! -d plugins ]; then cp -R $pimcoreDir/plugins_example -T plugins; fi;
	if [ ! -d website ]; then cp -R $pimcoreDir/website_example -T website; fi;
	
	rm -R tmp
fi;
