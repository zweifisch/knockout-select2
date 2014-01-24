# knockout-select2

select2 handler for knockoutjs

```javascript
var model = {
	db: ko.observable('Neo4j'),
	dbs: ["Redis", "Datomic", "Neo4j", "MongoDB", "CouchDB"]
};
ko.applyBindings(model);
```

*put select2 after value and options*

```html
<div>
	<select data-bind="value: db, options: dbs, select2: {}"></select>
	<span data-bind="text: db"></span>
	<select data-bind="value: db, options: dbs, select2: {}"></select>
</div>
```

