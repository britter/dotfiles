# Defined in - @ line 1
function mvnw_check
	./mvnw test-compile checkstyle:check findbugs:check pmd:check
end
