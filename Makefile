.PHONY: doc doc-release
doc:
	appledoc --project-name 'StrawServiceLocale' --project-company 'strawjs.org' --company-id 'org.strawjs' --output doc/dev --create-html --no-create-docset StrawServiceLocale

doc-release:
	appledoc --project-name 'StrawServiceLocale' --project-company 'strawjs.org' --company-id 'org.strawjs' --output doc/v0.0.0 --create-html --no-create-docset StrawServiceLocale
