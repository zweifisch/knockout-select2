
ko.bindingHandlers.select2 =

	init: (element, valueAccessor, allBindingsAccessor)->
		$(element).select2 valueAccessor()
		allBindings = allBindingsAccessor()

		allBindings.value.subscribe? (val)->
			$(element).select2 'val', val

		ko.utils.domNodeDisposal.addDisposeCallback element, ->
			$(element).select2 'destroy'

	update: (element, valueAccessor, allBindingsAccessor)->

		$(element).trigger 'change'
