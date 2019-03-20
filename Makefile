main_SRCS := a.c b.c c.c
lib_SRCS := d.c
, := ,

$(info Are we having fun yet? :p)
$(info garrett was here)

main: lib

.SECONDEXPANSION:

main lib: $$($$@_SRCS)
	$(info $@'s prerequisite$(if $(wordlist 2,2,$^),s are, is) \
		$(strip \
			$(if $(wordlist 2,2,$^), \
				$(addsuffix $(,),$(wordlist 2,$(words $^),$^)) and $(wordlist 1,1,$^), \
				$<)))

$(addsuffix .c,a b c d):
