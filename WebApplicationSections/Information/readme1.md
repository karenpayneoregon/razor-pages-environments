https://stackoverflow.com/questions/6549541/how-to-pass-parameters-to-a-partial-view-in-asp-net-mvc


https://stackoverflow.com/questions/39006221/passing-parameters-to-partial-views
```csharp
@Html.RenderPartial("_Location", Model)
```

https://stackoverflow.com/questions/58419252/how-to-pass-view-data-to-partial-view-in-asp-net-core

```html
<partial name="_Emplyees" model="Employees" view-data='@new ViewDataDictionary(ViewData) { { "index", index } }'/>
```

https://stackoverflow.com/questions/59990186/how-to-pass-a-value-into-partial-tag-helper-asp-net-core

How to conditionally render sections in ASP.NET MVC ? (Note to self, does not work in div)

https://www.techcartnow.com/conditionally-render-sections-asp-net-mvc/



