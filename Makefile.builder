ifeq ($(PACKAGE_SET),dom0)
RPM_SPEC_FILES := kernel.spec
NO_ARCHIVE := 1
endif

# Enable repo for special GCC with plugin support
ifneq ($(filter $(DISTRIBUTION), opensuse),)
MOCK_EXTRA_OPTS += --enablerepo=obs-gcc
YUM_OPTS += --enablerepo=obs-gcc
endif